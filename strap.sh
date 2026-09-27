#!/bin/sh
# strap.sh - setup BlackArch Linux keyring and install initial packages

ARCH=$(uname -m)

# mirror file to fetch and write
MIRROR_F='blackarch-mirrorlist'

# keep in sync with blackarch-trusted
KEYRING_SIGNERS='
8F9A9793CB8591147C2EC70566E0CDBD1E01F333
A0917C4147A37007CB54C1CFD295AA940EFDDF62
4345771566D76038C7FEB43863EC0ADBEA87E4E3
F9A6E68A711354D84A9B91637533BAFE69A25079
'

SUCCESS=0
FAILURE=1

# simple error message wrapper
err()
{
  echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)"

  exit 1
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
  if [ "$(id -u)" -ne 0 ]; then
    err "You must be root"
  fi
}

# make a temporary directory and cd into
make_tmp_dir()
{
  tmp="$(mktemp -d /tmp/blackarch_strap.XXXXXXXX)"

  trap 'rm -rf $tmp' EXIT

  cd "$tmp" || err "Could not enter directory $tmp"
}

set_umask()
{
  OLD_UMASK=$(umask)

  umask 0022
}

reset_umask()
{
  umask $OLD_UMASK
}

check_internet()
{
  if ! curl -s --connect-timeout 8 https://blackarch.org/ > /dev/null 2>&1; then
    err "You don't have an Internet connection!"
  fi
}

# retrieve the BlackArch Linux keyring
fetch_keyring()
{
  repo="https://blackarch.org/blackarch/blackarch/os/$ARCH"

  curl -sfL -O "$repo/blackarch.db" ||
    err "Could not fetch the repository database from $repo"

  KEYRING_PKG=$(bsdtar -xOf blackarch.db 'blackarch-keyring-*/desc' 2>/dev/null |
    awk '/^%FILENAME%$/ { getline; print; exit }')

  [ -n "$KEYRING_PKG" ] ||
    err "Could not find blackarch-keyring in the repository database"

  curl -sfL -O "$repo/$KEYRING_PKG" ||
    err "Could not fetch $KEYRING_PKG"
  curl -sfL -O "$repo/$KEYRING_PKG.sig" ||
    err "Could not fetch $KEYRING_PKG.sig"
}

# verify the keyring package signature against KEYRING_SIGNERS
verify_keyring()
{
  # throwaway keyring so root's ~/.gnupg is left alone
  GNUPGHOME="$tmp/gnupg"
  export GNUPGHOME
  mkdir -m 700 "$GNUPGHOME"

  for fpr in $KEYRING_SIGNERS; do
    for ks in keyserver.ubuntu.com hkps://keyserver.ubuntu.com:443 \
              hkps://pgp.mit.edu; do
      gpg --keyserver "$ks" --recv-keys "$fpr" > /dev/null 2>&1 && break
    done
  done

  status=$(gpg --status-fd 1 --verify "$KEYRING_PKG.sig" "$KEYRING_PKG" 2>/dev/null)
  # last field of VALIDSIG is the primary key fingerprint (handles subkeys)
  signer=$(printf '%s\n' "$status" | awk '$2 == "VALIDSIG" { print $NF }')

  gpgconf --kill all
  unset GNUPGHOME

  if [ -z "$signer" ]; then
    case "$status" in
      *NO_PUBKEY*) err "Could not fetch the signing key from any keyserver" ;;
      *) err "Invalid keyring signature. Please stop by https://matrix.to/#/#BlackArch:matrix.org" ;;
    esac
  fi

  signer_trusted=false
  for trusted in $KEYRING_SIGNERS; do
    if [ "$trusted" = "$signer" ]; then
      signer_trusted=true
      break
    fi
  done
  if [ "$signer_trusted" = true ]; then
    msg "Keyring signed by $signer"
  else
    err "Keyring signed by untrusted key $signer"
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
  mkdir pkg
  bsdtar -xf "$KEYRING_PKG" -C pkg usr/share/pacman/keyrings ||
    err "Could not extract $KEYRING_PKG"

  cp pkg/usr/share/pacman/keyrings/* /usr/share/pacman/keyrings/
  pacman-key --populate blackarch

  pacman -U --noconfirm \
    --overwrite '/usr/share/pacman/keyrings/blackarch*' "$KEYRING_PKG" ||
    err "Could not install $KEYRING_PKG"
}

# ask user for mirror
get_mirror()
{
  mirror_p="/etc/pacman.d"
  mirror_r="https://blackarch.org"

  msg "Fetching new mirror list..."
  if ! curl -sfL "$mirror_r/$MIRROR_F" -o "$mirror_p/$MIRROR_F" ; then
    err "We couldn't fetch the mirror list from: $mirror_r/$MIRROR_F"
  fi

  msg "You can change the default mirror under $mirror_p/$MIRROR_F"
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
  if pacman -Syy; then
    return $SUCCESS
  fi

  warn "Synchronizing pacman has failed. Please try manually: pacman -Syy"

  return $FAILURE
}

pacman_upgrade()
{
  while :; do
    printf 'Perform full system upgrade? (pacman -Su) [Yn]: '
    read conf < /dev/tty || conf=n
    case "$conf" in
      ''|[yY]|[yY][eE][sS])
        pacman -Su
        return ;;
      [nN]|[nN][oO])
        warn 'Some blackarch packages may not work without an up-to-date system.'
        return ;;
      *)
        echo 'Please answer y or n.' ;;
    esac
  done
}


# setup blackarch linux
blackarch_setup()
{
  msg 'Installing blackarch keyring...'
  check_priv
  set_umask
  make_tmp_dir
  check_internet
  fetch_keyring
  verify_keyring
  check_pacman_gnupg
  install_keyring

  echo
  msg 'Keyring installed successfully'
  # check if pacman.conf has already a mirror
  if ! grep -q "\[blackarch\]" /etc/pacman.conf; then
    msg 'Configuring pacman'
    get_mirror
    msg 'Updating pacman.conf'
    update_pacman_conf
  fi
  msg 'Updating package databases'
  if pacman_update; then
    pacman_upgrade
  fi
  reset_umask
  msg 'Installing blackarch-mirrorlist package'
  pacman -S --noconfirm blackarch-mirrorlist
  if [ -f /etc/pacman.d/blackarch-mirrorlist.pacnew ]; then
    mv /etc/pacman.d/blackarch-mirrorlist.pacnew \
      /etc/pacman.d/blackarch-mirrorlist
  fi
  msg 'BlackArch repository is ready!'
  msg 'You can install `blackarch-officials` metapackage with the most popular tools using the command below:'
  msg 'sudo pacman -S --needed blackarch-officials'
}

blackarch_setup

