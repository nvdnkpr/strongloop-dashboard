#!/bin/sh

#DOWNLOAD AND START THE IBEACON
cd ~/
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.conf
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/start
sudo chmod 777 start

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stop
sudo chmod 777 stop

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/startAdvertising.sh
sudo chmod 777 startAdvertising.sh

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stopAdvertising.sh
sudo chmod 777 stopAdvertising.sh

#update the startup script
cd /etc/xdg/lxsession/LXDE
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/autostart

cd /etc/init.d/
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon
sudo chmod 777 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults




#Chromium and dashboard stuff
#unclutter &
#sleep 30

#x11vnc -forever

echo "refresh the refresh.sh"

cd ~/

#finally update the refresh script itself
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/refresh.sh
sudo chmod +x refresh.sh

echo "refresh done "


