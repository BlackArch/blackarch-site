# Generate data/tools.
# Format: <name>\t<version>\t<url>\t<description>

export LC_ALL=C

site=blackarch.org
repo=blackarch
arch=x86_64
out=data/tools

cleanup() {
	rm -rf "$tmp"
}

make_tmp() {
	tmp=`mktemp -d /tmp/blackarch.XXXXXXXXXXX`
}

get_db() {
	curl "http://$site/blackarch/$repo/os/$arch/$repo.db.tar.gz" | tar xz -C "$tmp"
}

parse_db() {
	mkdir -p "`dirname file`"

	for d in "$tmp"/* ; do
		grep -q '%GROUPS%' "$d/desc" || continue
		grep --no-group-separator -A2 '^%\(NAME\|VERSION\|URL\|DESC\)%$' "$d/desc" |
		# TODO: make this safer.
		sed -e 's/[0-9]\+://' -e 's/-[0-9]\+//' |
		  grep -ve '^%.*%$' -e '^$' | paste -s
	done > "$out"
}

main() {
	trap cleanup EXIT

	make_tmp
	get_db
	parse_db
}

main "$@"
