#!/bin/sh
# strap.sh - install and setup BlackArch Linux keyring

# mirror file to fetch and write
MIRROR_F="blackarch-mirrorlist"

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
  if [ "$(id -u)" -ne 0 ]; then
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

set_umask()
{
  OLD_UMASK=$(umask)

  umask 0022

  trap 'reset_umask' TERM
}

reset_umask()
{
  umask $OLD_UMASK
}

check_internet()
{
  tool='curl'
  tool_opts='-s --connect-timeout 8'

  if ! $tool $tool_opts https://blackarch.org/ > /dev/null 2>&1; then
    err "You don't have an Internet connection!"
  fi

  return $SUCCESS
}

# retrieve the BlackArch Linux keyring
fetch_keyring()
{
  curl -s -O \
  'https://www.blackarch.org/keyring/blackarch-keyring.pkg.tar.xz'

  curl -s -O \
  'https://www.blackarch.org/keyring/blackarch-keyring.pkg.tar.xz.sig'
}

# verify the keyring signature
# note: this is pointless if you do not verify the key fingerprint
verify_keyring()
{
  if ! gpg --keyserver keyserver.ubuntu.com \
     --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
  then
    if ! gpg --keyserver hkps://keyserver.ubuntu.com:443 \
       --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
    then
      if ! gpg --keyserver hkp://pgp.mit.edu:80 \
         --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
      then
        err "could not verify the key. Please check: https://blackarch.org/faq.html"
      fi
    fi
  fi

  if ! gpg --keyserver-options no-auto-key-retrieve \
    --with-fingerprint blackarch-keyring.pkg.tar.xz.sig > /dev/null 2>&1
  then
    err "invalid keyring signature. please stop by https://matrix.to/#/#/BlackaArch:matrix.org"
  fi
}

# delete the signature files
delete_signature()
{
  if [ -f "blackarch-keyring.pkg.tar.xz.sig" ]; then
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
  if ! pacman --config /dev/null --noconfirm \
    -U blackarch-keyring.pkg.tar.xz ; then
      err 'keyring installation failed'
  fi

  # just in case
  pacman-key --populate
}

# ask user for mirror
get_mirror()
{
  mirror_p="/etc/pacman.d"
  mirror_r="https://blackarch.org"

  msg "fetching new mirror list..."
  if ! curl -s "$mirror_r/$MIRROR_F" -o "$mirror_p/$MIRROR_F" ; then
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

# ghetto gnupg fix --
# downgrade to stable gnupg-2.2.41-2 --
gnupg_trustall_fix() {
  msg 'backing up pacman.conf'
  msg 'downgrade gnupg to stable release'
  msg 'fixing gnupg trust database...'

  cp -Rvp /etc/pacman.conf /etc/pacman.conf.blackarch
  sed -i 's/SigLevel    = Required DatabaseOptional/SigLevel    = TrustAll/' /etc/pacman.conf
  pacman -U https://archive.archlinux.org/packages/g/gnupg/gnupg-2.2.41-2-x86_64.pkg.tar.zst \
    --overwrite --noconfirm
  rm -rf /etc/pacman.d/gnupg
  pacman-key --init
  pacman-key --populate
  pacman-key --update --keyserver keyserver.ubuntu.com

  msg 'setting IngorePkg gnupg...'
  sed -i '/^#IgnorePkg/ s/^#//; /IgnorePkg/ s/$/ gnupg/' /etc/pacman.conf
}

gnupg_undo_fix() {
  msg 'restoring pacman.conf'
  sed -i 's/SigLevel    = TrustAll/SigLevel    = Required DatabaseOptional/' /etc/pacman.conf
  sed -i 's/^IgnorePkg   = gnupg/#IgnorePkg   = gnupg/' /etc/pacman.conf
  rm /etc/pacman.conf.blackarch
}

check_gnupg_version() {
  msg 'checking gnupg version...'
  gpg_expected=243
  gpg_install="$(pacman -Q gnupg | awk '{print $2}' | cut -d '-' -f 1 |
  tr -d '.' | cut -c 1-3)"

  if [ $gpg_install -lt $gpg_expected ]; then
    msg "please upgrade your distribution first !"
    exit 1
  fi
}

# setup blackarch linux
blackarch_setup()
{
  check_priv
  check_gnupg_version
  msg 'installing blackarch keyring...'
  set_umask
  make_tmp_dir
  check_internet
  gnupg_trustall_fix
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
  reset_umask
  gnupg_undo_fix
  msg 'BlackArch Linux is ready!'
}

blackarch_setup

