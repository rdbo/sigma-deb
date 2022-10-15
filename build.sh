#!/bin/sh

# Buidl Dependencies:
# checkinstall

# CheckInstall Menu
# This package will be built according to these values: 
#
# 0 -  Maintainer: [ Rdbo ]
# 1 -  Summary: [ Sigma Linux configuration for Debian ]
# 2 -  Name:    [ sigma-linux ]
# 3 -  Version: [ 1.0.0 ]
# 4 -  Release: [ 0 ]
# 5 -  License: [ GPL ]
# 6 -  Group:   [ checkinstall ]
# 7 -  Architecture: [ amd64 ]
# 8 -  Source location: [ sigma+linux-1.0.0 ]
# 9 -  Alternate source location: [  ]
# 10 - Requires: [ libx11-dev, libxft-dev, libxinerama-dev, libxrandr-dev, libimlib2-dev, libharfbuzz-dev, libfreetype-dev, gcc ]
# 11 - Recommends: [ xinit, dunst, notify-send ]
# 12 - Suggests: [  ]
# 13 - Provides: [ sigma-linux ]
# 14 - Conflicts: [  ]
# 15 - Replaces: [  ]

ROOTDIR="$(pwd)"
VERSION="1.0.0"

mkdir -p bin deb

cp -Lr src deb/sigma+linux-$VERSION

cd deb/sigma+linux-$VERSION
fakeroot checkinstall --install=no
mv *.deb "$ROOTDIR"/bin
cd "$ROOTDIR"
rm -rf deb

