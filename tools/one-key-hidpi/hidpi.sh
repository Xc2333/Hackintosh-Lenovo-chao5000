#!/bin/sh

function init()
{
cat << EEF
============================================
  _    _   _____   _____    _____    _____ 
 | |  | | |_   _| |  __ \  |  __ \  |_   _|
 | |__| |   | |   | |  | | | |__) |   | |  
 |  __  |   | |   | |  | | |  ___/    | |  
 | |  | |  _| |_  | |__| | | |       _| |_ 
 |_|  |_| |_____| |_____/  |_|      |_____|
                                           
============================================
EEF
    VendorID=$(ioreg -l | grep "DisplayVendorID" | awk '{print $8}')
    ProductID=$(ioreg -l | grep "DisplayProductID" | awk '{print $8}')
    EDID=$(ioreg -l | grep "IODisplayEDID" | awk '{print $8}' | sed -e 's/.$//' -e 's/^.//')

    Vid=$(echo "obase=16;$VendorID" | bc | tr 'A-Z' 'a-z')
    Pid=$(echo "obase=16;$ProductID" | bc | tr 'A-Z' 'a-z')

    thisDir=$(dirname $0)
    thatDir="/System/Library/Displays/Contents/Resources/Overrides"

    Overrides="\/System\/Library\/Displays\/Contents\/Resources\/Overrides\/"

    DICON="com\.apple\.cinema-display"
    imacicon=${Overrides}"DisplayVendorID-610\/DisplayProductID-a032.tiff"
    mbpicon=${Overrides}"DisplayVendorID-610\/DisplayProductID-a030-e1e1df.tiff"
    mbicon=${Overrides}"DisplayVendorID-610\/DisplayProductID-a028-9d9da0.tiff"
    lgicon=${Overrides}"DisplayVendorID-1e6d\/DisplayProductID-5b11.tiff"

    if [[ ! -d $thatDir/backup ]]; then
        echo "正在备份"
        sudo mkdir -p $thatDir/backup
        sudo cp $thatDir/Icons.plist $thatDir/backup/
        if [[ -d $thatDir/DisplayVendorID-$Vid ]]; then
            sudo cp -r $thatDir/DisplayVendorID-$Vid $thatDir/backup/
        fi
    fi
}

function choose_icon()
{
    mkdir $thisDir/tmp/
    curl -fsSL https://raw.githubusercontent.com/athlonreg/one-key-hidpi/master/Icons.plist -o $thisDir/tmp/Icons.plist

cat << EOF
----------------------------------------
|**********   选择显示器图标   ***********|
----------------------------------------
(1) iMac
(2) MacBook
(3) MacBook Pro
(4) LG 显示器
(5) 保持原样

EOF
read -p "输入你的选择[1~5]: " logo
case $logo in
    1) Picon=$imacicon
RP=("33" "68" "160" "90")
;;
2) Picon=$mbicon
RP=("52" "66" "122" "76")
;;
3) Picon=$mbpicon
RP=("40" "62" "147" "92")
;;
4) Picon=$lgicon
RP=("11" "47" "202" "114")
DICON=${Overrides}"DisplayVendorID-1e6d\/DisplayProductID-5b11.icns"
;;
5) rm -rf $thisDir/tmp/Icons.plist
;;
*) echo "输入错误，程序退出";
exit 0
;;
esac 

if [[ $Picon ]]; then
    sed -i '' "s/VID/$Vid/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/PID/$Pid/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/RPX/${RP[0]}/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/RPY/${RP[1]}/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/RPW/${RP[2]}/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/RPH/${RP[3]}/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/PICON/$Picon/g" $thisDir/tmp/Icons.plist
    sed -i '' "s/DICON/$DICON/g" $thisDir/tmp/Icons.plist

#    gsed -i "s/VID/$Vid/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/PID/$Pid/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/RPX/${RP[0]}/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/RPY/${RP[1]}/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/RPW/${RP[2]}/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/RPH/${RP[3]}/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/PICON/$Picon/g" $thisDir/tmp/Icons.plist
#    gsed -i "s/DICON/$DICON/g" $thisDir/tmp/Icons.plist
fi

}

function main()
{
    sudo mkdir -p $thisDir/tmp/DisplayVendorID-$Vid
    dpiFile=$thisDir/tmp/DisplayVendorID-$Vid/DisplayProductID-$Pid
    sudo chmod -R 777 $thisDir/tmp/

cat > "$dpiFile" <<-\HIDPI
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>DisplayBlueGamma</key>
        <real>2</real>
        <key>DisplayBluePointX</key>
        <real>0.155</real>
        <key>DisplayBluePointY</key>
        <real>0.06</real>
        <key>DisplayGreenGamma</key>
        <real>2</real>
        <key>DisplayGreenPointX</key>
        <real>0.31</real>
        <key>DisplayGreenPointY</key>
        <real>0.55000000000000004</real>
        <key>DisplayRedGamma</key>
        <real>2</real>
        <key>DisplayRedPointX</key>
        <real>0.57999999999999996</real>
        <key>DisplayRedPointY</key>
        <real>0.34000000000000002</real>
        <key>DisplayWhitePointX</key>
        <real>0.31269839999999999</real>
        <key>DisplayWhitePointY</key>
        <real>0.32899479999999998</real>
        <key>DisplayProductID</key>
        <integer>PID</integer>
        <key>DisplayVendorID</key>
        <integer>VID</integer>
        <key>DisplayProductName</key>
        <string>Color LCD</string>
        <key>IODisplayEDID</key>
        <data>EDid</data>
        <key>scale-resolutions</key>
            <array>
HIDPI

read -p "是否自定义分辨率 (y/n) : " res
case $res in

y) custom_res
;;
n) not_custom_res
;;
*) sudo rm -rf $thisDir/tmp
   echo "输入无效，程序退出";
   exit 0
;;
esac
#
cat >> "$dpiFile" <<-\FFF
            </array>
        <key>target-default-ppmm</key>
            <real>10.1510574</real>
    </dict>
</plist>
FFF

    sed -i '' "s/VID/$VendorID/g" $dpiFile
    sed -i '' "s/PID/$ProductID/g" $dpiFile
    
#    gsed -i "s/VID/$VendorID/g" $dpiFile
#    gsed -i "s/PID/$ProductID/g" $dpiFile
}

function end()
{
    sudo cp -r $thisDir/tmp/* $thatDir/
    sudo rm -rf $thisDir/tmp
    echo "开启成功，重启生效"
    echo "首次重启开机logo会变得巨大，之后就不会了"
}

function enable_hidpi()
{
    choose_icon
    main
    sed -i "" "/.*IODisplayEDID/d" $dpiFile
    sed -i "" "/.*EDid/d" $dpiFile
    
#    gsed -i "/.*IODisplayEDID/d" $dpiFile
#    gsed -i "/.*EDid/d" $dpiFile
    end
}

function disable()
{
    sudo rm -rf $thatDir/DisplayVendorID-$Vid 
    sudo rm -rf $thatDir/Icons.plist
    sudo cp -r $thatDir/backup/* $thatDir/
    sudo rm -rf $thatDir/backup
    echo "已关闭，重启生效"
}

#自定义分辨率
function custom_res()
{
    echo "输入要开启的分辨率，以空格分隔，例如：1366x768 1440x810 1600x900 1920x1080"
    read -p "" res
    create_res $res
}

# 不自定义分辨率
function not_custom_res()
{
    cat >> "$dpiFile" <<-\NCR
                <data>
                AAAPAAAACHAA
                </data>
                <data>
                AAAMgAAABkAA
                </data>
                <data>
                AAAMgAAABwgA
                </data>
                <data>
                AAALQAAABlQA
                </data>
NCR
}

# 创建分辨率配置
function create_res()
{
#注入xxxxXyyy00
    for res in $@; do
    width=$(echo $res | cut -d x -f 1)
    height=$(echo $res | cut -d x -f 2)
    hidpi=$(printf '%08x %08x' $(($width)) $(($height)) | xxd -r -p | base64)

cat << OOO >> $dpiFile
                <data>${hidpi:0:11}A</data>
OOO
done
#注入2xxxxX2yyy00000001
#注入2xxxxX2yyy00000001 00200000
#注入2xxxxX2yyy00000009 00A00000
    for res in $@; do
    width=$(echo $res | cut -d x -f 1)
    height=$(echo $res | cut -d x -f 2)
    hidpi=$(printf '%08x %08x' $(($width*2)) $(($height*2)) | xxd -r -p | base64)
#
cat << OOO >> $dpiFile
                <data>${hidpi:0:11}AAAAB</data>
                <data>${hidpi:0:11}AAAABACAAAA==</data>
                <data>${hidpi:0:11}AAAAJAKAAAA==</data>
OOO
done
}

function start()
{
    init
cat << EOF

(1) 开启HIDPI
(2) 关闭HIDPI

EOF
read -p "输入你的选择[1~2]: " input
case $input in
    1) enable_hidpi
;;
2) disable
;;
*) echo "输入错误，拜拜";
exit 0
;;
esac 
}

start
