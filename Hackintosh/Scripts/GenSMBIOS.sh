#!/usr/bin/bash

############################################################################################################################
# iMacPro1,1   : NVIDIA Maxwell and Pascal or AMD Polaris and newer
# MacPro7,1    : AMD Polaris and newer
# MacPro7,1    : Exclusive to macOS 10.15, Catalina and newer
# MacPro6,1    : AMD GCN GPUs (supported HD and R5/R7/R9 series)
# iMac14,2     : NVIDIA Maxwell and Pascal
############################################################################################################################



clear;

WORK="$HOME/Bureau/Hackintosh"
FILE=$($WORK/EFI/OC/config.plist)

echo "Copier le chemin suivant : $WORK/EFI/OC/config.plist";

sleep 6;

python3 $WORK/Ressources/Tools/GenSMBIOS/GenSMBIOS.py $FILE
