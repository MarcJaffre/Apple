#!/usr/bin/bash

########################################################################################################################################
# Le script télécharger mon fichier qui dispose déjà du Patch AMD sans aucune modification                                             #
########################################################################################################################################


########################################################################################################################################
# Nettoyage de la console #
###########################
clear;
#
########################################################################################################################################
# Dossier de Travail #
######################
WORK="$HOME/Bureau/Hackintosh"
MONPATCH="https://raw.githubusercontent.com/MarcJaffre/Apple/main/Hackintosh/Ressources/config.plist"
#
#
########################################################################################################################################
# Telechargement de mon patch #
###############################
curl $MONPATCH > $WORK/EFI/OC/config.plist;
#
#
########################################################################################################################################
# Edition du Patchage (outdate) #
#################################
#echo "Configuration du Patch AMD_Vanilla sur 8 Core";
sed -i -e "s/uAAAAAAA/uAgAAAAA/g" $WORK/Ressources/Patch/patches.plist;
sed -i -e "s/ugAAAAAA/uggAAAAA/g" $WORK/Ressources/Patch/patches.plist;
sed -i -e "s/ugAAAACQ/uggAAACQ/g" $WORK/Ressources/Patch/patches.plist;
sed -i -e "s/ugAAAAA/uggAAAA/g"   $WORK/Ressources/Patch/patches.plist;

########################################################################################################################################
# Analyse #
###########
# cat $WORK/Ressources/Patch/patches.plist | grep cpuid_cores_per_package -A25 | grep "Replace" -A1
# 0: <data>uAgAAAAA</data>
# 1: <data>ugAAAAAA</data>
# 2: <data>ugAAAACQ</data>
# 3: <data>ugAAAAA</data>
########################################################################################################################################
