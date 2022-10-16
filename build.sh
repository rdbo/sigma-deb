#!/bin/sh

# Build Dependencies:
# fakeroot checkinstall

ROOTDIR="$(pwd)"
VERSION="1.0.0"

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
    --requires="libx11-dev, libxft-dev, libxinerama-dev, libxrandr-dev, libimlib2-dev, libharfbuzz-dev, libfreetype-dev, libxtst-dev, gcc" \
    --recommends="xinit, xrandr, dunst, libnotify-bin, feh, vim, maim, man, pulseaudio, pulseaudio-utils, papirus-icon-theme, adwaita-icon-theme, firefox-esr, gimp, inkscape, libreoffice-gnome, ssh, git, wget, curl, perl, gawk, sed, coreutils, g++, build-essentials, checkinstall, fakeroot, live-build, python3, openjdk-11-jdk, openjdk-17-jdk, tor, torbrowser-launcher, weechat, tar, gzip, xz-utils, p7zip-full, p7zip-rar, ntfs-3g, lxappearance, pulsemixer, wireguard-tools, openvpn, openssl, gnupg, iwd, poppler-utils, imagemagick, mpv, apache2, libapache2-mod-php, postgresql, mariadb-server, mariadb-client, keepassxc, x11-xkb-utils, x11-xserver-utils, x11-utils, shotcut, chromium, qemu-system, ovmf, blender, bluez, bluez-tools" \
    --provides="sigma-linux"

mv *.deb "$ROOTDIR"/bin
cd "$ROOTDIR"
rm -rf deb

