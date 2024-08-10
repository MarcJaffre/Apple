#!/usr/bin/bash

############################################################################################################################
# Variables #
#############
WORK="$HOME/Bureau/Hackintosh"
FILE=$($WORK/EFI/OC/config.plist)

############################################################################################################################
# Nettoyage de la console #
###########################
clear;


############################################################################################################################
# Lancement de SSDTime
echo "#####################################################################################"
echo "# Copier le chemin suivant : $WORK/EFI/OC/config.plist       #";
echo "#####################################################################################"
sleep 5;

python3 $WORK/Ressources/Tools/ssdtime/SSDTTime.py $FILE;

exit
