#!/bin/sh

# Build Dependencies:
# fakeroot checkinstall

ROOTDIR="$(pwd)"
VERSION="1.0.0"

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
    # --pkgarch="amd64" \
    --pkgsource="sigma+linux-$VERSION" \
    --requires="libx11-dev, libxft-dev, libxinerama-dev, libxrandr-dev, libimlib2-dev, libharfbuzz-dev, libfreetype-dev, gcc" \
    --recommends="xinit, dunst, libnotify-bin, feh, vim, firefox" \
    --provides="sigma-linux"

mv *.deb "$ROOTDIR"/bin
cd "$ROOTDIR"
rm -rf deb

