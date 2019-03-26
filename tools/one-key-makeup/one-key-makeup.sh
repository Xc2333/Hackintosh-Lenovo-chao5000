#!/bin/sh

#  one-key-makeup.sh
#  version 0.1
#
#  Created by Xc233 on 2019/2/20.
#  



smbios="$(sysctl -n hw.model)"
PlistBuddy=/usr/libexec/PlistBuddy
patchurl=~/Library/Preferences/com.apple.SystemProfiler.plist

if [ $smbios == "MacBookPro14,3" ]; then
    echo "\033[31m SMBIOS is MacbookPro 14.3 \033[1;m"
    $PlistBuddy -c 'Set "CPU Names":HTD5-zh-Hans-CN_CN "Lenovo 小新潮5000 15.6寸"' $patchurl
    echo "\033[31m 机型信息已修改为Lenovo 小新潮5000 15.6寸，重启生效 \033[1;m"
else
    echo "SMBIOS is MacbookPro 14.1"
    $PlistBuddy -c 'Set "CPU Names":HV29-zh-Hans-CN_CN "Lenovo 潮5000 15.6寸"' $patchurl
    echo "\033[31m 机型信息已修改为Lenovo 小新小新潮5000 15.6寸，重启生效 \033[1;m"
fi
