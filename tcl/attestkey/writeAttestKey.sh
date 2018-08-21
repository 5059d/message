#!/bin/bash

filepath=$1

filename=${filepath##*/}

dir="/sdcard/tclkb/"
#dir="/data/tclkb/"

source /local/cts_tools/cts/lib/allenvsetup.sh CTS androidO 8.1_R7

adb remount 1>&2 /dev/null

#adb shell mkdir /sdcard/tclkb
adb_shell_ls=`adb shell ls $dir | grep "No such file or directory"`
echo $adb_shell_ls ${#adb_shell_ls}
if [ ${#adb_shell_ls} -eq 0 ];then
    adb shell mkdir -p $dir 
fi 

#adb push $filepath /sdcard/tclkb
adb_shell_ls_bin=`adb shell ls ${dir}${filename} | grep "No such file or directory"`
if [  ${#adb_shell_ls_bin} -eq 0 ];then
	adb push ${filepath} ${dir} 
fi 

adb shell kmsetkey_ca ${dir}${filename} 
if [ $? -eq 0 ];then
adb shell AttestFlag 1 
else
echo "write attestation key fail!" 
fi

#adb shell rm -rf $dir

