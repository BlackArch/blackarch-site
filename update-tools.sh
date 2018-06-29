#!/bin/sh

# Generate data/tools.
# Format: <name>\t<version>\t<url>\t<description>

export LC_ALL=C

SITE="blackarch.org"
REPO="blackarch"
ARCH="x86_64"
OUT="data/tools"

# Remove previous file entry except the mirrors file
find data ! -name 'mirrors' -type f -exec rm -f {} +

make_tmp() {
  tmp=$(mktemp -d /tmp/blackarch.XXXXXXXXXXX)
}

get_db() {
  curl "https://$SITE/blackarch/$REPO/os/$ARCH/$REPO.db.tar.gz" |
  tar xz -C "$tmp"
}

parse_db() {
  mkdir -p "$(dirname file)"

  for d in "$tmp"/*
  do
	  # Name
    name="$(grep --no-group-separator -A2 '^%NAME%$' "${d}"/desc |
    sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%NAME%$')"

	  # Version
    vers="$(grep --no-group-separator -A2 '^%VERSION%$' "${d}"/desc |
    sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%VERSION%$')"

	  # Description
    desc="$(grep --no-group-separator -A2 '^%DESC%$' "${d}"/desc |
    sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%DESC%$')"

	  # Category
	  # Add exception for the following packages
	  case "${name}" in
      "blackarch-config-awesome"|"blackarch-config-fluxbox"|"blackarch-config-openbox"|"blackarch-config-i3"|"blackarch-config-spectrwm"|"blackarch-config-wmii"|"blackarch-config-lxdm"|"blackarch-config-vim"|"blackarch-config-bash"|"blackarch-config-x11"|"blackarch-config-gtk"|"blackarch-mirrorlist"|"blackarch-menus")
	      continue
        ;;
	    "truecrack"|"cudahashcat"|"cryptohazemultiforcer")
		    group="blackarch-cracker"
		    ;;
	    "vmcloak"|"malboxes"|"thezoo")
		    group="blackarch-malware"
		    ;;
      *)
      # All the other packages (add '0,/blackarch/s///' for remove first occurrence only
		  group="$(grep --no-group-separator -A2 '^%GROUPS%$' "${d}"/desc |
      sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' -e '0,/blackarch/s///' | grep -v '^%GROUPS%$' |
      tr -s '\n' ' ')"
	esac

    # Website url
    url="$(grep --no-group-separator -A2 '^%URL%$' "${d}"/desc |
    sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%URL%$')"

	  fgroup=$(echo "$group" | sed -e 's/blackarch-//g' -e 's/ //g' -e "s/'//g")

	  # Do not insert the current package if the $group variable is empty
	  if [ "$group" ]; then
      echo "$name|$vers|$desc|$group|$url" >> "$OUT"
	    if [ "$fgroup" ];  then
		    # [review] This was happening at least three times.
		    echo "$name|$vers|$desc|$url" >> data/"$fgroup"
	    fi
    fi
  done
}

split() {
  sed -i 's/\t/\|/g' "$OUT"
}

main() {
  rm -f "$OUT"
  make_tmp
  get_db
  parse_db
  split
}

main "$@"
