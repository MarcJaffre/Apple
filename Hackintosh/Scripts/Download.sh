#!/usr/bin/bash

########################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################
# Utilitaires de base #
#######################
#
# Core
OPENCOREPKG="https://github.com/acidanthera/OpenCorePkg/releases/download/1.0.1/OpenCore-1.0.1-RELEASE.zip"
#
# Outils
GENSMBIOS="https://github.com/corpnewt/GenSMBIOS/archive/refs/heads/master.zip"
PROPERTREE="https://github.com/corpnewt/ProperTree/archive/refs/heads/master.zip"
SSDTIME="https://github.com/corpnewt/SSDTTime/archive/refs/heads/master.zip"
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
LILU="https://github.com/acidanthera/Lilu/releases/download/1.6.2/Lilu-1.6.2-DEBUG.zip"
VIRTUALSMC="https://github.com/acidanthera/VirtualSMC/releases/download/1.3.0/VirtualSMC-1.3.0-DEBUG.zip"
WHATEVERGREEN="https://github.com/acidanthera/WhateverGreen/releases/download/1.6.1/WhateverGreen-1.6.1-DEBUG.zip"
#
# AMD
APPLEMCER="https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip"
#
# Audio
APPLEALC="https://github.com/acidanthera/AppleALC/releases/download/1.7.5/AppleALC-1.7.5-DEBUG.zip"
#
# Carte-Reseau
INTELMAUSI="https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-DEBUG.zip"
#
#
#
########################################################################################################################################
# Nettoyage #
#############
rm -rf /tmp/*.zip 2>/dev/null;
#
#
########################################################################################################################################
# Telechargement #
##################
echo "Telechargements de OpenCore";
wget $OPENCOREPKG    -O /tmp/opencore.zip       2>/dev/null;

echo "Telechargement des Utilitaires";
wget $GENSMBIOS      -O /tmp/gensmbios.zip      2>/dev/null;
wget $PROPERTREE     -O /tmp/propertree.zip     2>/dev/null;
wget $SSDTIME        -O /tmp/ssdtime.zip        2>/dev/null;

echo "Telechargement du Drivers HFSPLUS";
wget $HFSPLUS        -O /tmp/hfsplus.zip        2>/dev/null;

echo "Telechargement des Kexts";
wget $LILU           -O /tmp/lilu.zip           2>/dev/null;
wget $VIRTUALSMC     -O /tmp/virtualsmc.zip     2>/dev/null;
wget $WHATEVERGREEN  -O /tmp/whatevergreen.zip  2>/dev/null;
wget $APPLEMCER      -O /tmp/applemcer.zip      2>/dev/null;
wget $APPLEALC       -O /tmp/applealc.zip       2>/dev/null;
wget $INTELMAUSI     -O /tmp/intelmausi.zip     2>/dev/null;
#
#
########################################################################################################################################
# Deplacement Dossier #
#######################
unzip -f /tmp/opencore.zip       -d /tmp/opencore
unzip -f /tmp/gensmbios.zip      -d /tmp/gensmbios
unzip -f /tmp/propertree.zip     -d /tmp/propertree
unzip -f /tmp/ssdtime.zip        -d /tmp/ssdtime

unzip -f /tmp/lilu.zip           -d /tmp/lilu
unzip -f /tmp/virtualsmc.zip     -d /tmp/virtualsmc
unzip -f /tmp/whatevergreen.zip  -d /tmp/whatevergreen
unzip -f /tmp/applemcer.zip      -d /tmp/applemcer
unzip -f /tmp/applealc.zip       -d /tmp/applealc
unzip -f /tmp/intelmausi.zip     -d /tmp/intelmausi
