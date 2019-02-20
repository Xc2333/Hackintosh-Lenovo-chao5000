#!/bin/sh

#  AppleAlcGen.sh
#  
#
#  Created by Xc233 on 2018/10/30.
#  



## set some var
AppleALC=https://github.com/acidanthera/AppleALC/trunk/AppleALC
AppleALCxcodeproj=https://github.com/acidanthera/AppleALC/trunk/AppleALC.xcodeproj
ResourceConverter=https://github.com/acidanthera/AppleALC/trunk/ResourceConverter
Resources=https://github.com/Xc2333/AppleALC-Generator/trunk/Resources
Tools=https://github.com/acidanthera/AppleALC/trunk/Tools
download="svn checkout"

## download lilu.kext (debug version)
    cd ~/Desktop && mkdir AppleAlcCustom && cd AppleAlcCustom
    curl -O https://raw.githubusercontent.com/acidanthera/AppleALC/master/Changelog.md
    AppleALCVer=`grep "###"  *.md|head -1|awk '{print $2}'`
    curl -L -# https://github.com/acidanthera/Lilu/releases -o lilu
    DebugLiluVer=`grep tree lilu |head -n 1|awk -F'title="' '{print $2}'|awk -F'"' '{print $1}'`
    curl -L -O -# https://github.com/acidanthera/Lilu/releases/download/$DebugLiluVer/$DebugLiluVer.DEBUG.zip
    unzip $DebugLiluVer.DEBUG.zip

## download AppleALC file from https://github.com/acidanthera/AppleALC
    $download $AppleALC
    $download $AppleALCxcodeproj
    $download $ResourceConverter
    $download $Tools
    $download $Resources

## Xcode build....
     xcodebuild -project AppleALC.xcodeproj -configuration Release

## cp
    cp -R  build/Release/AppleALC.kext ~/Desktop/AppleALC_$AppleALCVer.kext

## done.  assuming no error  -_-||
    echo  "\033[1;32m AppleALC_v$AppleALCVer.kext has been built. \033[0m"

## clean
    rm lilu $DebugLiluVer.DEBUG.zip





