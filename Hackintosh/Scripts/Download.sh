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
rm -rf /tmp/* 2>/dev/null;
rm -r $WORK 2>/dev/null;

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
########################################################################################################################################
# Decompression #
#################
echo "Decompression des archives";

# Core
unzip -o /tmp/opencore.zip       -d /tmp/opencore       1>/dev/null;
#
# Outîls
unzip -o /tmp/gensmbios.zip      -d /tmp/gensmbios      1>/dev/null;
unzip -o /tmp/propertree.zip     -d /tmp/propertree     1>/dev/null;
unzip -o /tmp/ssdtime.zip        -d /tmp/ssdtime        1>/dev/null;
#
# Indispensables
unzip -o /tmp/lilu.zip           -d /tmp/lilu           1>/dev/null;
unzip -o /tmp/virtualsmc.zip     -d /tmp/virtualsmc     1>/dev/null;
unzip -o /tmp/whatevergreen.zip  -d /tmp/whatevergreen  1>/dev/null;
#
# AMD
unzip -o /tmp/applemcer.zip      -d /tmp/applemcer      1>/dev/null;
#
# Audio
unzip -o /tmp/applealc.zip       -d /tmp/applealc       1>/dev/null;
#
# Carte-Reseau
unzip -o /tmp/intelmausi.zip     -d /tmp/intelmausi     1>/dev/null;
#
#

########################################################################################################################################
# Creation du dossier de travail #
##################################
#
mkdir -p $WORK         1>/dev/null;
mkdir -p $WORK/Drivers 1>/dev/null;
mkdir -p $WORK/Kexts   1>/dev/null;
mkdir -p $WORK/Tools   1>/dev/null;
mkdir -p $WORK/Patch   1>/dev/null;
#
########################################################################################################################################
# Deplacement Dossier #
#######################
mv /tmp/*/*.kext      $WORK/Kexts 2>/dev/null;
mv /tmp/*/*/*.kext    $WORK/Kexts 2>/dev/null;
mv /tmp/opencore      $WORK       2>/dev/null;
mv /tmp/gensmbios     $WORK       2>/dev/null;
mv /tmp/propertree    $WORK       2>/dev/null;
mv /tmp/ssdtime       $WORK       2>/dev/null;
mv /tmp/gensmbios     $WORK       2>/dev/null;

########################################################################################################################################
# Nettoyage TEMP #
##################
rm -rf /tmp/ 2>/dev/null;
#

########################################################################################################################################
# Nettoyage Opencore #
######################
