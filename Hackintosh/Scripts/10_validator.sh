#!/usr/bin/bash

########################################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"
VALIDATOR="$WORK/Ressources/opencore/Utilities/ocvalidate/ocvalidate.linux"
CONFIG="/media/marc/MACOS/EFI/OC/config.plist"

########################################################################################################################################################
# Validation du fichier #
#########################
clear; $VALIDATOR $CONFIG;
