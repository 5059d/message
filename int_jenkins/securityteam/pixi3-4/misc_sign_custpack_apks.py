#!/usr/bin/python

import os
import sys
from commands import *

if len(sys.argv) != 3:
	print "usage : sign_key /path/to/package-files.zip  <out.zip>"
	sys.exit(1)

input_package = sys.argv[1]
output_package = sys.argv[2]

path_to_key="build/target/product/security"
apkDict = {}
signCmdForCustpack = ''

# APK in custpack but need to sign platform key
CustPackApkforPlatformKey = ['framework-res.apk','mediatek-res.apk','JrdUser2Root.apk']

#add yinfang.lai 2015-12-8
ApkNoSign = ['ItsOnBootstrapperLite.apk','ItsOnUID.apk']
#end yinfang.lai 2015-12-08

#CustPackApkforPlatformKey="\
#framework-res.apk \
#Plugger.apk \
#Provision.apk \
#ActivityNetwork.apk \
#MobileLog.apk \
#SyncMLClient.apk \
#JrdShared.apk"


#platformKeyApkInCustpack = []

#Apk in system need to sign other keys which not match that in META/certapks.txt 
indicateKey= ''

custpackcontent = getoutput('unzip -lv %s | grep CUSTPACK\/ | grep apk | grep Defl:N' %input_package)
for line in custpackcontent.split('\n'):
	if line.strip() == '':
		continue
	apkDict[line.split('/')[-1]] = ''

for apk in CustPackApkforPlatformKey:
	apkDict[apk] = 'build/target/product/security/platform'

for apk in ApkNoSign:
	apkDict[apk] = ''

print '****************************************************'
print 'Start to generate custpack signature list ... ...'
for k, v in apkDict.items():
	print ' -e %s=%s' %(k,v)
	signCmdForCustpack = signCmdForCustpack + (' -e %s=%s' %(k,v))

print 'exclude .apk file found in CUSTPACK :'
print signCmdForCustpack
print '****************************************************'


cmd = 'build/tools/releasetools/sign_target_files_apks -o -d %s %s %s %s %s' %(path_to_key, signCmdForCustpack, indicateKey, input_package, output_package)
if os.system(cmd) != 0:
	print '\033[1;31m****Signed Error!*****\033[0m'
	sys.exit(1)
else:
	print '**************Signed Successfull!!!***********'
	print "signed package written in %s" %output_package 
