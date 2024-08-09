#!/usr/bin/bash

########################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"

########################################################################################################################################
# Nettoyage #
#############
rm -rf /tmp/* 2>/dev/null;
rm -r $WORK 2>/dev/null;
########################################################################################################################################
# Creation du dossier de travail #
##################################
#
mkdir -p $WORK/                   1>/dev/null;
mkdir -p $WORK/Ressources/        1>/dev/null;
mkdir -p $WORK/Ressources/Drivers 1>/dev/null;
mkdir -p $WORK/Ressources/Kexts   1>/dev/null;
mkdir -p $WORK/Ressources/Tools   1>/dev/null;
mkdir -p $WORK/Ressources/Patch   1>/dev/null;
#
########################################################################################################################################
# Deplacement Dossier #
#######################
# Core
mv /tmp/opencore                                     $WORK/Ressources/     2>/dev/null;
#
# Utilitaires
mv /tmp/gensmbios                                    $WORK/Ressources/Tools 2>/dev/null;
mv /tmp/propertree                                   $WORK/Ressources/Tools 2>/dev/null;
mv /tmp/ssdtime                                      $WORK/Ressources/Tools 2>/dev/null;
#
# Drivers (EFI)
mv $WORK/Ressources/opencore/X64/EFI                 $WORK                  2>/dev/null;
#
# Kexts
mv /tmp/*/*.kext                                     $WORK/Ressources/Kexts 2>/dev/null;
mv /tmp/*/*/*.kext                                   $WORK/Ressources/Kexts 2>/dev/null;
#
# Patch AMD CPU
mv /tmp/amdvanilla/AMD_Vanilla-master/patches.plist  $WORK/Ressources/Patch 2>/dev/null;
#
########################################################################################################################################
# Nettoyage Opencore #
######################
#
# Drîvers
for FILE in $(ls   $WORK/EFI/OC/Drivers | grep -v "OpenCanopy.efi\|OpenRuntime.efi" | xargs -n1);do rm $WORK/EFI/OC/Drivers/$FILE; done
#
# Tools
for FILE in $(ls   $WORK/EFI/OC/Tools   | grep -v "OpenShell.efi"                   | xargs -n1);do rm $WORK/EFI/OC/Tools/$FILE;   done
#
# Fichier cache
for FILE in $(find $WORK/EFI -type f -name ".*");do rm $FILE; done
#
########################################################################################################################################
# Deplacement de fichier #
##########################
mv /tmp/hfsplus.efi $WORK/Ressources/Drivers;

########################################################################################################################################
# Copie de fichier #
####################
cp $WORK/Ressources/opencore/Docs/Sample.plist  $WORK/EFI/OC/config.plist;
cp $WORK/Ressources/Drivers/hfsplus.efi         $WORK/EFI/OC/Drivers
#
########################################################################################################################################
# Nettoyage TEMP #
##################
rm -rf /tmp/ 2>/dev/null;
