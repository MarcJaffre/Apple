#!/usr/bin/bash

############################################################################################################################
# Actions à réalisées: https://chefkissinc.github.io/guides/hackintosh/gathering-files/acpi/
# - P. Dump the current system's ACPI tables
# - 2. FakeEC
# - 4. USBX
############################################################################################################################
# Le patch ajoute:
# ACPI => ADD
# ACPI => DELETE
# ACPI => PATCH
############################################################################################################################


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
# Nettoyage #
#############
rm -rf  $WORK/Ressources/Tools/ssdtime/Results 2>/dev/null;

############################################################################################################################
# Lancement de SSDTime #
########################
python3 $WORK/Ressources/Tools/ssdtime/SSDTTime.py $FILE;
echo "#####################################################################################"
echo "# Copier le chemin suivant : $WORK/Ressources/Tools/ssdtime/Results       #";
echo "#####################################################################################"
sleep 5

clear;
echo "#####################################################################################"
echo "# Copier le chemin suivant : $WORK/EFI/OC/config.plist       #";
echo "#####################################################################################"
sleep 10

############################################################################################################################
# Lancement de SSDTime #
########################
python3 $WORK/Ressources/Tools/ssdtime/PatchMerge.py;


############################################################################################################################
# Renommer Fichier #
####################
mv $WORK/EFI/OC/config.plist $WORK/EFI/OC/config.plist.old;

############################################################################################################################
# Copie de Fichier #
####################
mv $WORK/Ressources/Tools/ssdtime/Results/config.plist  $WORK/EFI/OC/;
mv $WORK/Ressources/Tools/ssdtime/Results/*.aml         $WORK/EFI/OC/ACPI;



