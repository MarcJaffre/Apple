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
mv $WORK/Ressources/ACPI/SSDT-EC-USBX-DESKTOP.aml $WORK/EFI/OC/ACPI/SSDT-EC-USBX-DESKTOP.aml 2>/dev/null;
#
#
# Kexts
mv $WORK/Ressources/Kexts/AMDRyzenCPUPowerManagement.kext  $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/AppleALC.kext                    $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/AppleMCEReporterDisabler.kext    $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/IntelMausi.kext                  $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/Lilu.kext                        $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/NVMeFix.kext                     $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/RestrictEvents.kext              $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/SMCAMDProcessor.kext             $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/USBInjectAll.kext                $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/VirtualSMC.kext                  $WORK/EFI/OC/Kexts/ 2>/dev/null;
mv $WORK/Ressources/Kexts/WhateverGreen.kext               $WORK/EFI/OC/Kexts/ 2>/dev/null;

########################################################################################################################################
# Purge #
#########
rm -rf $WORK/Ressources/ACPI  2>/dev/null;
rm -rf $WORK/Ressources/Kexts 2>/dev/null;
