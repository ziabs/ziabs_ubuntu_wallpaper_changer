#!/bin/sh

sudo apt-get -y remove ziabs-wallpapers;
sudo rm -rf /var/ziabsWallpapers;

(crontab -u ${USER} -l | grep -v '/bin/bash /var/ziabsWallpapers/ziabs_wallpapers.sh' ) | crontab -u ${USER} -

sleep 0.3;t=0.2;echo -n "\n ------------------- ";echo -n "T";sleep $t;echo -n "h";sleep $t;echo -n "a";sleep $t;echo -n "n";sleep $t;echo -n "k";sleep $t;echo -n "s";sleep $t;echo -n " ";sleep $t;echo -n ":";sleep $t;echo -n " ";sleep $t;echo -n "w";sleep $t;echo -n "w";sleep $t;echo -n "w";sleep $t;echo -n ".";sleep $t;echo -n "z";sleep $t;echo -n "i";sleep $t;echo -n "a";sleep $t;echo -n "b";sleep $t;echo -n "s";sleep $t;echo -n ".";sleep $t;echo -n "c";sleep $t;echo -n "o";sleep $t;echo -n "m ----------------\n";
