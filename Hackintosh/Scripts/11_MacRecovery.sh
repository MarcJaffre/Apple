#!/usr/bin/bash

##############################################################################################################################################
# Espace de travail #
#####################
WORK="$HOME/Bureau/Hackintosh"
PROG="$WORK/Ressources/opencore/Utilities/macrecovery/macrecovery.py"
USB="/media/marc/MACOS"

##############################################################################################################################################
# Selection OS : catalina | bigsur | monterey | ventura | sonoma #
##################################################################
OS="bigsur"

##############################################################################################################################################
# Version #
###########
CATALINA="-b Mac-00BE6ED71E35EB86 -m 00000000000000000 download"
BIGSUR="-b   Mac-42FD25EABCABB274 -m 00000000000000000 download"
MONTEREY="-b Mac-FFE5EF870D7BA81A -m 00000000000000000 download"
VENTURA="-b  Mac-4B682C642B45593E -m 00000000000000000 download"
SONOMA="-b   Mac-937A206F2EE63C01 -m 00000000000000000 download"

##############################################################################################################################################
# Nettoyage de la console #
###########################
clear;

##############################################################################################################################################
# Packages #
############
if [ ! -f /usr/bin/python3 ];then
   sudo apt install -y python3    1>/dev/null;
   sudo apt install -y python3-tk 1>/dev/null;
fi

##############################################################################################################################################
# Purge OS #
############
if [   -d $USB/com.apple.recovery.boot ];then
   rm -rf $USB/com.apple.recovery.boot 2>/dev/null;
fi

##############################################################################################################################################
# Telechargement OS #
#####################
if [ ! -z $OS ];then
   mkdir $USB/com.apple.recovery.boot;
   if [ $OS = "catalina" ];then touch $USB/com.apple.recovery.boot/catalina.txt; python3 $PROG $CATALINA -o $USB/com.apple.recovery.boot; fi
   if [ $OS = "bigsur"   ];then touch $USB/com.apple.recovery.boot/Big_Sur.txt;  python3 $PROG $BIGSUR   -o $USB/com.apple.recovery.boot; fi
   if [ $OS = "monterey" ];then touch $USB/com.apple.recovery.boot/Monterey.txt; python3 $PROG $MONTEREY -o $USB/com.apple.recovery.boot; fi
   if [ $OS = "ventura"  ];then touch $USB/com.apple.recovery.boot/Ventura.txt;  python3 $PROG $VENTURA  -o $USB/com.apple.recovery.boot; fi
   if [ $OS = "sonoma"   ];then touch $USB/com.apple.recovery.boot/Sonoma.txt;   python3 $PROG $SONOMA   -o $USB/com.apple.recovery.boot; fi
fi

##############################################################################################################################################
