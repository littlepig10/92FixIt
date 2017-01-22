#!/bin/sh
#

# tell OSX to change the boot disk 
# nextonly just for the next time - without the default would be Windows
# will fail if SIP is enabled
/usr/sbin/bless -mount /Volumes/BOOTCAMP -setBoot  --nextonly
