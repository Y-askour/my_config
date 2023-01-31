#!/bin/sh

baseDir="$(dirname $(realpath $0))"
homeDir="$baseDir/home/user"


printf "### Updating System ..."
doas xbps-install -Syu
printf "### Install X-server ..."
doas xbps-install -Sy xorg-server xinit libX11-devel libXft-devel libXinerama-devel glib-devel font-inconsolata-otf
doas xbps-install -Sy xorg
printf "### Install Builiding toolsxhkd sssssss ..."
doas xbps-install -Sy git gcc mkae pkg-config nvim
printf "### Install man pages ..."
