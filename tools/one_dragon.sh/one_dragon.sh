#!/bin/sh

#  Install_app.sh
#  
#
#  Created by APPLE INC on 2019/3/8.
#  

# 改变默认密码位
pwpolicy -clearaccountpolicies
passwd
echo "请输入密码以关闭第三方软件运行权限"

# 第三方软件运行
sudo spctl --master-disable
echo "第三方软件运行权限已关闭"

# HIDPI
echo "开启HIDPI"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/athlonreg/one-key-hidpi/master/hidpi.sh)"

# Var
dowloadDir=~/Desktop/APP下载目录

# QQ
mkdir $dowloadDir && cd $dowloadDir
curl -O http://im.qq.com/macqq/index.shtml
version=`grep "version wf" index.shtml |awk -F 'v ' '{print $2}'|awk -F ' ' '{print $1}'`
echo "正在下载QQ------------"
curl  -O http://dldir1.qq.com/qqfile/QQforMac/QQ_V$version.dmg

# 网易云
echo "正在下载网易云音乐------------"
curl -L -O https://music.163.com/api/osx/download/latest
mv latest NetMusic.dmg

# RDM
echo "正在下载RDM------------"
curl -O https://raw.githubusercontent.com/Xc2333/Hackintosh-Lenovo-chao5000/master/tools/one-key-hidpi/RDM.app.zip
unzip RDM.app.zip

# Clean
rm -r __MACOSX && rm -f RDM.app.zip
rm -f index.shtml
