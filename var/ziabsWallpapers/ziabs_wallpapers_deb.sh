#!/bin/sh

IMAGE=$(shuf -i 666-694 -n 1)
IMAGE_URL="http://ziabs.com/ziabs-wallpapers/${IMAGE}.jpg"
IMAGE_DIR="/var/ziabsWallpapers/"
IMAGE_1="${IMAGE_DIR}1.jpg"
IMAGE_2="${IMAGE_DIR}2.jpg"

wget -q ${IMAGE_URL} -O ${IMAGE_2} || (rm -f ${IMAGE_2};cp ${IMAGE_1} ${IMAGE_2};)

sleep 10

cp ${IMAGE_2} ${IMAGE_1}
 
gsettings set org.gnome.desktop.background picture-uri "file://${IMAGE_1}"
