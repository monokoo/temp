#!/bin/sh
wget --no-check-certificate https://github.com/monokoo/temp/raw/master/fixweb.zip
[ -f "fixweb.zip" ] && unzip fixweb.zip
cp fixweb/common.sh /lib/upgrade/common.sh
cp fixweb/nand.sh /lib/upgrade/nand.sh
cp fixweb/platform.sh /lib/upgrade/platform.sh
cp fixweb/stage2 /lib/upgrade/stage2 && chmod +x /lib/upgrade/stage2
cp fixweb/sysupgrade /sbin/sysupgrade && chmod +x /sbin/sysupgrade