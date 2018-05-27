#!/bin/sh
# strap.sh - install and setup BlackArch Linux keyring

# mirror file to fetch and write
MIRROR_F="blackarch-mirrorlist"

# simple error message wrapper
err()
{
    echo >&2 `tput bold; tput setaf 1`"[-] ERROR: ${*}"`tput sgr0`
    exit 1337
}

# simple warning message wrapper
warn()
{
    echo >&2 `tput bold; tput setaf 1`"[!] WARNING: ${*}"`tput sgr0`
}

# simple echo wrapper
msg()
{
    echo `tput bold; tput setaf 2`"[+] ${*}"`tput sgr0`
}

# check for root privilege
check_priv()
{
    if [ $EUID -ne 0 ] ; then
        err "you must be root"
    fi
}

# make a temporary directory and cd into
make_tmp_dir()
{
    tmp=`mktemp -d /tmp/blackarch_strap.XXXXXXXX`
    trap "rm -rf $tmp" EXIT
    cd "$tmp"
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
    gpg \
        --keyserver pgp.mit.edu \
        --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1

    if ! gpg \
        --keyserver-options no-auto-key-retrieve \
        --with-fingerprint blackarch-keyring.pkg.tar.xz.sig > /dev/null 2>&1
    then
        err 'invalid keyring signature. please stop by irc.freenode.net/blackarch'
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
	pacman-key --populate archlinux blackarch
}

# ask user for mirror
get_mirror()
{
    mirror_p="/etc/pacman.d"
    mirror_r="https://blackarch.org"

    msg "fetching new mirror list..."
    if ! curl -s "$mirror_r/$MIRROR_F" -o "$mirror_p/$MIRROR_F"
    then
        err "we couldn't fetch the mirror list from: $mirror_r/$MIRROR_F"
    fi

    msg "you can change the default mirror under $mirror_p/$MIRROR_F"
}

# update pacman.conf
update_pacman_conf()
{
    # delete blackarch related entries if existing
    sed -i '/blackarch/{N;d}' /etc/pacman.conf

    cat >> "/etc/pacman.conf" << EOF

[blackarch]
Include = /etc/pacman.d/$MIRROR_F
EOF
}

# synchronize and update
pacman_update()
{
    pacman -Syy
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
