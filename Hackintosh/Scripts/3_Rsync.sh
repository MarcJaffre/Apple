#!/usr/bin/bash

########################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"
USB="/media/marc/MACOS"

########################################################################################################################################
# Nettoyage #
#############
rm -rf $USB/EFI 2>/dev/null;

########################################################################################################################################
# Synchronisation #
###################
rsync -avz $HOME/Bureau/Hackintosh/EFI $USB;
