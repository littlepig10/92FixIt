#!/bin/sh
#

sudo ifconfig en0 down
pdnsd-ctl empty-cache
sudo killall -KILL pdnsd
sudo ifconfig en0 up
sudo /usr/local/Cellar/pdnsd/1.2.9a-par/sbin/pdnsd -s -d -g
sudo killall -HUP mDNSResponder
sudo killall -HUP usbmuxd
