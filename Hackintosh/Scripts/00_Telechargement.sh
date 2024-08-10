#!/usr/bin/bash

########################################################################################################################################
# Script qui telecharge et extrait dans le dossier temporaire
########################################################################################################################################
#
# Editeur Configuration:  https://github.com/ic005k/OCAuxiliaryTools
#
#
########################################################################################################################################
# Choisir la version #
######################
# DEBUG ou RELEASE 
TYPE="DEBUG"
#
#
########################################################################################################################################
# Nettoyage de la console #
###########################
clear;
#
#
########################################################################################################################################
# Utilitaires de base #
#######################
#
# Core
OPENCOREPKG="https://github.com/acidanthera/OpenCorePkg/releases/download/0.9.4/OpenCore-0.9.4-$TYPE.zip"
#
# Outils
GENSMBIOS="https://github.com/corpnewt/GenSMBIOS/archive/refs/heads/master.zip"
PROPERTREE="https://github.com/corpnewt/ProperTree/archive/refs/heads/master.zip"
SSDTIME="https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip"
#
########################################################################################################################################
# ACPI #
########
SSDTECUSBX="https://github.com/christiancuri/Hackintosh-Ryzen-7-3700X-B550M-Plus/raw/main/EFI/OC/ACPI/SSDT-EC-USBX-DESKTOP.aml"
#
########################################################################################################################################
# Drivers (EFI) #
#################
HFSPLUS="https://github.com/acidanthera/OcBinaryData/raw/master/Drivers/HfsPlus.efi"
#
########################################################################################################################################
# Kexts #
#########
#
# Indispensables
LILU="https://github.com/acidanthera/Lilu/releases/download/1.6.2/Lilu-1.6.2-$TYPE.zip"
NVMEFIX="https://github.com/acidanthera/NVMeFix/releases/download/1.1.0/NVMeFix-1.1.0-$TYPE.zip"
RESTRICTEVENT="https://github.com/acidanthera/RestrictEvents/releases/download/1.0.9/RestrictEvents-1.0.9-$TYPE.zip"
USBINJECT="https://github.com/Sniki/OS-X-USB-Inject-All/releases/download/v0.7.6/USBInjectAll-0.7.6-$TYPE.zip"
VIRTUALSMC="https://github.com/acidanthera/VirtualSMC/releases/download/1.3.2/VirtualSMC-1.3.2-$TYPE.zip"
WHATEVERGREEN="https://github.com/acidanthera/WhateverGreen/releases/download/1.6.1/WhateverGreen-1.6.1-$TYPE.zip"
#
# AMD
APPLEMCER="https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip"
AMD1="https://github.com/trulyspinach/SMCAMDProcessor/releases/download/0.7.2f1/AMDRyzenCPUPowerManagement.kext.zip"
AMD2="https://github.com/trulyspinach/SMCAMDProcessor/releases/download/0.7.2f1/SMCAMDProcessor.kext.zip"
NOOTRX="https://github.com/ChefKissInc/NootRX/releases/download/nightly/NootRX-1.0.0-$TYPE.zip"

#
# Audio
APPLEALC="https://github.com/acidanthera/AppleALC/releases/download/1.8.4/AppleALC-1.8.4-$TYPE.zip"
#
# Carte-Reseau
INTELMAUSI="https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-$TYPE.zip"
#
#
########################################################################################################################################
# Patch Kernel #
################
AMD_VANILLA="https://github.com/AMD-OSX/AMD_Vanilla/archive/refs/heads/master.zip"
#
########################################################################################################################################
# Nettoyage #
#############
rm -rf /tmp/* 2>/dev/null;

########################################################################################################################################
# Telechargement #
##################
echo "Telechargements de OpenCore";
wget $OPENCOREPKG    -O /tmp/opencore.zip       2>/dev/null;

echo "Telechargement des Utilitaires";
wget $GENSMBIOS      -O /tmp/gensmbios.zip      2>/dev/null;
wget $PROPERTREE     -O /tmp/propertree.zip     2>/dev/null;
wget $SSDTIME        -O /tmp/ssdtime.zip        2>/dev/null;

echo "Telechargement ACPI";
wget $SSDTECUSBX     -O /tmp/SSDT-EC-USBX-DESKTOP.aml 2>/dev/null;
#
echo "Telechargement du Drivers HFSPLUS";
wget $HFSPLUS        -O /tmp/hfsplus.efi        2>/dev/null;
#
echo "Telechargement des Kexts";
wget $AMD1           -O /tmp/AMDRyzenCPUPowerManagement.kext.zip 2>/dev/null;
wget $AMD2           -O /tmp/SMCAMDProcessor.kext.zip            2>/dev/null;
wget $LILU           -O /tmp/lilu.zip            2>/dev/null;
wget $VIRTUALSMC     -O /tmp/virtualsmc.zip      2>/dev/null;
wget $WHATEVERGREEN  -O /tmp/whatevergreen.zip   2>/dev/null;
wget $APPLEMCER      -O /tmp/applemcer.zip       2>/dev/null;
wget $APPLEALC       -O /tmp/applealc.zip        2>/dev/null;
wget $INTELMAUSI     -O /tmp/intelmausi.zip      2>/dev/null;
wget $NOOTRX         -O /tmp/nootrx.zip          2>/dev/null;

wget $NVMEFIX        -O /tmp/NVMeFix.zip         2>/dev/null;
wget $RESTRICTEVENT  -O /tmp/restrictevents.zip  2>/dev/null;
wget $USBINJECT      -O /tmp/usbinjectall.zip    2>/dev/null;

#
echo "Telechargement du patch CPU AMD";
wget $AMD_VANILLA    -O /tmp/amdvanilla.zip     2>/dev/null;
#
#
########################################################################################################################################
# Decompression #
#################
echo "Decompression des archives";
#
# Core
unzip -o /tmp/opencore.zip        -d /tmp/opencore        1>/dev/null;
#
# Outîls
unzip -o /tmp/gensmbios.zip       -d /tmp/gensmbios       1>/dev/null;
unzip -o /tmp/propertree.zip      -d /tmp/propertree      1>/dev/null;
unzip -o /tmp/ssdtime.zip         -d /tmp/ssdtime         1>/dev/null;
#
# Indispensables
unzip -o /tmp/lilu.zip            -d /tmp/lilu            1>/dev/null;
unzip -o /tmp/virtualsmc.zip      -d /tmp/virtualsmc      1>/dev/null;
unzip -o /tmp/whatevergreen.zip   -d /tmp/whatevergreen   1>/dev/null;
unzip -o /tmp/NVMeFix.zip         -d /tmp/NVMeFix         1>/dev/null;
unzip -o /tmp/restrictevents.zip  -d /tmp/restrictevents  1>/dev/null;
unzip -o /tmp/usbinjectall.zip    -d /tmp/usbinjectall    1>/dev/null;
#
# AMD
unzip -o /tmp/applemcer.zip                            -d /tmp/applemcer                       1>/dev/null;
unzip -o /tmp/AMDRyzenCPUPowerManagement.kext.zip      -d /tmp/AMDRyzenCPUPowerManagement      1>/dev/null;
unzip -o /tmp/nootrx.zip                               -d /tmp/nootrx                          1>/dev/null;
unzip -o /tmp/SMCAMDProcessor.kext.zip                 -d /tmp/SMCAMDProcessor                 1>/dev/null;
#
# Audio
unzip -o /tmp/applealc.zip        -d /tmp/applealc       1>/dev/null;
#
# Carte-Reseau
unzip -o /tmp/intelmausi.zip      -d /tmp/intelmausi     1>/dev/null;
#
# Patch AMD CPU
unzip -o /tmp/amdvanilla.zip      -d /tmp/amdvanilla     1>/dev/null;
#
#
########################################################################################################################################
# Nettoyage Temp #
##################
rm -rf /tmp/*.zip 2>/dev/null;
