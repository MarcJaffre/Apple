#!/usr/bin/bash

########################################################################################################################################################
# Edition de la configuration dans la clé pour garder la local intacte
# En cas de problème relancer rsync pour restaurer
########################################################################################################################################################

########################################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"
TOOL="$WORK/Ressources/Tools/propertree/ProperTree.py"
CONFIG="/media/marc/MACOS/EFI/OC/config.plist"

########################################################################################################################################################
# Demarrage de l'édition #
##################e#######

echo "###########################################################";
echo "# Passer au Guide 09 de ce tutorial pour la configuration #";
echo "###########################################################";
echo "";

python3 $TOOL $CONFIG;


# python3 /home/marc/Bureau/Hackintosh/Ressources/Tools/propertree/ProperTree.py /media/marc/MACOS/EFI/OC/config.plist
