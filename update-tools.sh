# Generate data/tools.
# Format: <name>\t<version>\t<url>\t<description>

export LC_ALL=C

site=blackarch.org
repo=blackarch
arch=x86_64
out=data/tools

rm data/*

make_tmp() {
    tmp=`mktemp -d /tmp/blackarch.XXXXXXXXXXX`
}

get_db() {
    curl "https://$site/blackarch/$repo/os/$arch/$repo.db.tar.gz" |
    tar xz -C "$tmp"
}

parse_db() {
    mkdir -p "`dirname file`"

    for d in "$tmp"/*
    do
	#Name
        name="`grep --no-group-separator -A2 '^%NAME%$' ${d}/desc |
        sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%NAME%$'`"

	#Version
        vers="`grep --no-group-separator -A2 '^%VERSION%$' ${d}/desc |
        sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%VERSION%$'`"

	#Description
        desc="`grep --no-group-separator -A2 '^%DESC%$' ${d}/desc |
        sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%DESC%$'`"

	#Categorie
	# Add exception for the following package
	if [[ "$name" == "truecrack" || "$name" == "cudahashcat" || "$name" == "cryptohazemultiforcer" ]]; then
	       group=blackarch-cracker

	elif [[ "$name" == "vmcloak" ]]; then
	       group=blackarch-malware

	else 
	#All the other package (add '0,/blackarch/s///' for remove first occurence only
        group="`grep --no-group-separator -A2 '^%GROUPS%$' ${d}/desc |
        sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' -e '0,/blackarch/s///' | grep -v '^%GROUPS%$' |
        tr -s '\n' ' '`"
	fi
		#Website url
        url="`grep --no-group-separator -A2 '^%URL%$' ${d}/desc |
        sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' | grep -v '^%URL%$'`"

		fgroup=`echo "$group" | sed -e 's/blackarch-//g' -e 's/ //g' -e "s/'//g"`
		#Do not insert the current package if the $group variable is empty
		if [[ "$group" ]]; then
        	echo "$name|$vers|$desc|$group|$url" >> $out
        	echo "$name|$vers|$desc|$url" >> data/"$fgroup"
        fi
	done
}

split() {
    sed -i 's/\t/\|/g' $out
}

main() {

  rm -f $out
	make_tmp
	get_db
	parse_db
  split
}

main "$@"
