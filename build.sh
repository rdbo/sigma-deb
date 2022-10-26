#!/bin/sh

# Build Dependencies:
# fakeroot checkinstall

ROOTDIR="$(pwd)"
VERSION="1.0.0"

read_list() {
	grep -E '^[^#\n]' "$1" | sed 's/#.*//g;s/\s//g' | sed -z 's/\n/, /g' | rev | cut -c 3- | rev
}

required="$(read_list required.list)"

rm -rf bin deb
mkdir -p bin deb

cp -Lr src deb/sigma+linux-$VERSION

cd deb/sigma+linux-$VERSION
fakeroot checkinstall \
    -y \
    -D \
    --install=no \
    --maintainer="Rdbo <rdbo at GitHub>" \
    --pkgname="sigma-linux" \
    --pkgversion="$VERSION" \
    --pkgrelease="0" \
    --pkglicense="AGPLv3" \
    --pkggroup "checkinstall" \
    --pkgsource="sigma+linux-$VERSION" \
    --requires="$required" \
    --provides="sigma-linux"

mv *.deb "$ROOTDIR"/bin
cd "$ROOTDIR"
rm -rf deb

