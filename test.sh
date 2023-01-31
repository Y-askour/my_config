#!/bin/sh

baseDir="$(dirname $(realpath $0))"
homeDir="$baseDir/home/user"


printf "### Updating System ..."
sudo xbps-install -Syu
printf "### Install X-server ..."
sudo xbps-install -Sy xorg-server xinit libX11-devel libXft-devel libXinerama-devel glib-devel font-inconsolata-otf
sudo xbps-install -Sy xorg
printf "### Install Builiding toolsxhkd sssssss ..."
sudo xbps-install -Sy git gcc mkae pkg-config
printf "### Install man pages ..."
sudo xbps-install -Sy man-pages-devel



printf "### Install tools for for suckless surf ..."
sudo xbps-install -Sy webkit2gtk-devel gcr-devel

printf "### Install tools for for suckless to play video ..."
sudo xbps-install -Sy gst-libav gst-plugins-good1

printf "### Install multimedia ..."
sudo xbps-install -Sy mpd ffmpeg mpv youtube-dl

printf "### Diagnostics ..."
sudo xbps-install -Sy iotop htop

printf "### Install General Tools ..."
sudo xbps-install -Sy groff sxhkd zathura-pdf-mupdf nvim rsync firefox alsa-utils xz ImageMagick pass

printf "### Install e-Mail Tools"
doad xbps-install -Sy neomutt msmtp

printf "### Install FileSystems support ... "
sudo xbps-install -Sy fuse-exfat


# .files
cp -r $homeDir/. ~/


# suckless 
 for sucklessProgram in $(ls $HOME/suckless)
 do
	 cd $HOME/suckless/$sucklessProgram
	 git checkout master
	 sudo make install
	 make clean
done

## PC ## 
printf " ### Install nvidia ..."
sudo xbps-install -Sy nvidia-opencl
