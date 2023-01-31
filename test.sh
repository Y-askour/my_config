#!/bin/sh

baseDir="$(dirname $(realpath $0))"
homeDir="$baseDir/home/user"


printf "### Updating System ..."
doas xbps-install -Syu
printf "### Install X-server ..."
doas xbps-install -Sy xorg-server xinit libX11-devel libXft-devel libXinerama-devel glib-devel font-inconsolata-otf
doas xbps-install -Sy xorg
printf "### Install Builiding toolsxhkd sssssss ..."
doas xbps-install -Sy git gcc mkae pkg-config
printf "### Install man pages ..."
doas xbps-install -Sy man-pages-devel



printf "### Install tools for for suckless surf ..."
doas xbps-install -Sy webkit2gtk-devel gcr-devel

printf "### Install tools for for suckless to play video ..."
doas xbps-install -Sy gst-libav gst-plugins-good1

printf "### Install multimedia ..."
doas xbps-install -Sy mpd ffmpeg mpv youtube-dl

printf "### Diagnostics ..."
doas xbps-install -Sy iotop htop

printf "### Install General Tools ..."
doas xbps-install -Sy groff sxhkd zathura-pdf-mupdf nvim rsync firefox alsa-utils xz ImageMagick pass

printf "### Install e-Mail Tools"
doad xbps-install -Sy neomutt msmtp

printf "### Install FileSystems support ... "
doas xbps-install -Sy fuse-exfat


# .files
cp -r $homeDir/. ~/


# suckless 
 for sucklessProgram in $(ls $HOME/suckless)
 do
	 cd $HOME/suckless/$sucklessProgram
	 git checkout master
	 doas make install
	 make clean
done

## PC ## 
printf " ### Install nvidia ..."
doas xbps-install -Sy nvidia-opencl
