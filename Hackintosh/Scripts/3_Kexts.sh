#!/usr/bin/bash

########################################################################################################################################
# Nettoyage de la console #
###########################
clear;
#
########################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"


########################################################################################################################################
# Copie de fichier #
####################
#
# ACPI
cp $WORK/Ressources/ACPI/SSDT-EC-USBX-DESKTOP.aml $WORK/EFI/OC/ACPI/SSDT-EC-USBX-DESKTOP.aml
#
#
# Kexts
cp -r $WORK/Ressources/Kexts/AppleALC.kext                  $WORK/EFI/OC/Kexts/;
cp -r $WORK/Ressources/Kexts/AppleMCEReporterDisabler.kext  $WORK/EFI/OC/Kexts/;
cp -r $WORK/Ressources/Kexts/IntelMausi.kext                $WORK/EFI/OC/Kexts/;
cp -r $WORK/Ressources/Kexts/Lilu.kext                      $WORK/EFI/OC/Kexts/;
cp -r $WORK/Ressources/Kexts/VirtualSMC.kext                $WORK/EFI/OC/Kexts/;
cp -r $WORK/Ressources/Kexts/WhateverGreen.kext             $WORK/EFI/OC/Kexts/;



