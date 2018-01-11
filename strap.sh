#!/bin/sh
# strap.sh - install and setup BlackArch Linux keyring

# default mirror url
MIRROR='https://www.mirrorservice.org/sites/blackarch.org/blackarch/'

# simple error message wrapper
err()
{
    echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)"
    exit 1337
}

# simple warning message wrapper
warn()
{
    echo >&2 "$(tput bold; tput setaf 1)[!] WARNING: ${*}$(tput sgr0)"
}

# simple echo wrapper
msg()
{
    echo "$(tput bold; tput setaf 2)[+] ${*}$(tput sgr0)"
}

# check for root privilege
check_priv()
{
    if [ "$(id -u)" -ne 0 ] ; then
        err "you must be root"
    fi
}

# make a temporary directory and cd into
make_tmp_dir()
{
    tmp="$(mktemp -d /tmp/blackarch_strap.XXXXXXXX)"
    trap 'rm -rf $tmp' EXIT
    cd "$tmp" || err "Could not enter directory $tmp"
}

check_internet()
{
    if ! ping -c 3 -W 3 google.com > /dev/null 2>&1; then
        if ping -c 3 -W 3 8.8.8.8 > /dev/null 2>&1; then
            warn "you have internet connection but seems to have a problem with DNS"
        else
            err "you don't have an internet connection"
        fi
    fi

    return $SUCCESS
}

# retrieve the BlackArch Linux keyring
fetch_keyring()
{
    curl -s -O \
        'https://www.blackarch.org/keyring/blackarch-keyring.pkg.tar.xz{,.sig}'
}

# verify the keyring signature
# note: this is pointless if you do not verify the key fingerprint
verify_keyring()
{
    if ! gpg --keyserver pgp.mit.edu \
             --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
    then
        if ! gpg --keyserver hkp://pool.sks-keyservers.net \
                 --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
        then
            err "could not verify the key, check your network (firewall, dns, time)"
        fi
    fi

    if ! gpg \
        --keyserver-options no-auto-key-retrieve \
        --with-fingerprint blackarch-keyring.pkg.tar.xz.sig > /dev/null 2>&1
    then
        err "invalid keyring signature. please stop by irc.freenode.net/blackarch"
    fi
}

# delete the signature files
delete_signature()
{
    if [ -f "blackarch-keyring.pkg.tar.xz.sig" ] ; then
        rm blackarch-keyring.pkg.tar.xz.sig
    fi
}

# make sure /etc/pacman.d/gnupg is usable
check_pacman_gnupg()
{
    pacman-key --init
}

# install the keyring
install_keyring()
{
    if ! pacman --config /dev/null \
        --noconfirm -U blackarch-keyring.pkg.tar.xz
    then
        err 'keyring installation failed'
    fi
    # just in case
    pacman-key --populate
}

# ask user for mirror
get_mirror()
{
    printf "    -> enter a BlackArch Linux mirror url (default: %s): " "$MIRROR"
    while read line ; do
        case "$line" in
            http://*|https://*|ftp://*)
                msg 'checking mirror...'
                if ! curl -sI "$line/blackarch/os/i686/blackarch.db" |
                    head -n1 | grep -q 200
                then
                    warn 'blackarch.db not found on given mirror'
                    warn "using default mirror $MIRROR"
                else
                    MIRROR=$line
                    msg "using mirror $MIRROR"
                fi
                break
                ;;
            *)
                warn 'you did not specify a correct mirror url'
                msg "using default mirror $MIRROR"
                return
                ;;
        esac
    done < /dev/tty
}

# update pacman.conf
update_pacman_conf()
{
    # delete blackarch related entries if existing
    sed -i '/blackarch/{N;d}' /etc/pacman.conf

    cat >> "/etc/pacman.conf" << EOF
[blackarch]
Server = $MIRROR/\$repo/os/\$arch
EOF
}

# synchronize and update
pacman_update()
{
    if pacman -Syy; then
        return $SUCCESS
    fi

    warn "Synchronizing pacman has failed. Please try manually: pacman -Syy"
    return $FAILURE
}


pacman_upgrade()
{
    echo 'perform full system upgrade? (pacman -Su) [Yn]:'
    read conf < /dev/tty
    case "$conf" in
        ''|y|Y) pacman -Su ;;
        n|N) warn 'some blackarch packages may not work without an up-to-date system.' ;;
    esac
}

# setup blackarch linux
blackarch_setup()
{
    check_priv
    msg 'installing blackarch keyring...'
    make_tmp_dir
    check_internet
    fetch_keyring
    verify_keyring
    delete_signature
    check_pacman_gnupg
    install_keyring
    echo
    msg 'keyring installed successfully'
    # check if pacman.conf has already a mirror
    if ! grep -q "\[blackarch\]" /etc/pacman.conf; then
        msg 'configuring pacman'
        get_mirror
        msg 'updating pacman.conf'
        update_pacman_conf
    fi
    msg 'updating package databases'
    pacman_update
    msg 'BlackArch Linux is ready!'
}


blackarch_setup
