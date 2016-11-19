#!/bin/sh
#

# Permission Fix
sudo chown root /usr/local/etc/pdnsd.conf

# Network Fix
sudo ifconfig en0 down
pdnsd-ctl empty-cache
sudo killall -KILL pdnsd
sudo ifconfig en0 up
sudo /usr/local/Cellar/pdnsd/1.2.9a-par/sbin/pdnsd -s -d -g
sudo killall -HUP mDNSResponder
#sudo killall -HUP usbmuxd

# Update Command Line Tools
brew update
npm update
sudo gem update
#upgrade_oh_my_zsh
