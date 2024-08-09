#!/usr/bin/bash

########################################################################################################################################
# Espace de travail #
#####################
WORK="$HOME/Bureau/Hackintosh"
PROG="$WORK/Ressources/opencore/Utilities/macrecovery/macrecovery.py"

########################################################################################################################################
# Selection OS : bigsur | monterey | ventura | sonoma #
#######################################################
OS="aaaâ"

########################################################################################################################################
# Version #
###########
BIGSUR="-b Mac-42FD25EABCABB274 -m 00000000000000000 download"
MONTEREY="-b Mac-FFE5EF870D7BA81A -m 00000000000000000 download"
VENTURA="-b Mac-4B682C642B45593E -m 00000000000000000 download"
SONOMA="-b Mac-937A206F2EE63C01 -m 00000000000000000 download"

########################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################
# Packages #
############
if [ ! -f /usr/bin/python3 ];then
   sudo apt install -y python3    1>/dev/null;
   sudo apt install -y python3-tk 1>/dev/null;
fi

########################################################################################################################################
# Purge OS #
############
if [   -d $WORK/com.apple.recovery.boot ];then
   rm -rf $WORK/com.apple.recovery.boot 2>/dev/null;
fi

########################################################################################################################################
# Telechargement OS #
#####################
if [ ! -z $OS ];then
   if [ $OS = "bigsur"   ];then python3 $PROG $BIGSUR   -o $WORK/com.apple.recovery.boot; fi
   if [ $OS = "monterey" ];then python3 $PROG $MONTEREY -o $WORK/com.apple.recovery.boot; fi
   if [ $OS = "ventura"  ];then python3 $PROG $VENTURA  -o $WORK/com.apple.recovery.boot; fi
   if [ $OS = "sonoma"   ];then python3 $PROG $SONOMA   -o $WORK/com.apple.recovery.boot; fi
fi
