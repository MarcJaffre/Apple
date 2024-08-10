#!/usr/bin/bash

############################################################################################################################
# Nettoyage de la console #
###########################
clear;

############################################################################################################################
# https://github.com/mikigal/ryzen-hackintosh?tab=readme-ov-file#PAT-Patch
# iMacPro1,1   : NVIDIA Maxwell and Pascal or AMD Polaris and newer - AMD Navi
# MacPro7,1    : AMD Polaris and newer
# MacPro7,1    : Exclusive to macOS 10.15, Catalina and newer
# MacPro6,1    : AMD GCN GPUs (supported HD and R5/R7/R9 series)
# iMac14,2     : NVIDIA Maxwell and Pascal
############################################################################################################################

############################################################################################################################
# Variables #
#############
WORK="$HOME/Bureau/Hackintosh"
FILE=$($WORK/EFI/OC/config.plist)

############################################################################################################################
# Copie de fichier #
####################
cp $WORK/EFI/OC/config.plist $WORK/EFI/OC/config.plist.bak;

echo "#####################################################################################"
echo "# Copier le chemin suivant : $WORK/EFI/OC/config.plist       #";
echo "#####################################################################################"
sleep 10;

python3 $WORK/Ressources/Tools/GenSMBIOS/GenSMBIOS.py $FILE;

exit

############################################################################################################################
# https://dortania.github.io/docs/latest/Configuration.html
# SecureBootModel:
# Default   — Matching model for current SMBIOS.
# Disabled  — No model, Secure Boot will be disabled.
# j137      — iMacPro1,1      (December 2017). Minimum macOS 10.13.2 (17C2111)
# j680      — MacBookPro15,1  (July 2018). Minimum macOS 10.13.6 (17G2112)
# j132      — MacBookPro15,2  (July 2018). Minimum macOS 10.13.6 (17G2112)
# j174      — Macmini8,1      (October 2018). Minimum macOS 10.14 (18A2063)
# j140k     — MacBookAir8,1   (October 2018). Minimum macOS 10.14.1 (18B2084)
# j780      — MacBookPro15,3  (May 2019). Minimum macOS 10.14.5 (18F132)
# j213      — MacBookPro15,4  (July 2019). Minimum macOS 10.14.5 (18F2058)
# j140a     — MacBookAir8,2   (July 2019). Minimum macOS 10.14.5 (18F2058)
# j152f     — MacBookPro16,1  (November 2019). Minimum macOS 10.15.1 (19B2093)
# j160      — MacPro7,1       (December 2019). Minimum macOS 10.15.1 (19B88)
# j230k     — MacBookAir9,1   (March 2020). Minimum macOS 10.15.3 (19D2064)
# j214k     — MacBookPro16,2  (May 2020). Minimum macOS 10.15.4 (19E2269)
# j223      — MacBookPro16,3  (May 2020). Minimum macOS 10.15.4 (19E2265)
# j215      — MacBookPro16,4  (June 2020). Minimum macOS 10.15.5 (19F96)
# j185      — iMac20,1        (August 2020). Minimum macOS 10.15.6 (19G2005)
# j185f     — iMac20,2        (August 2020). Minimum macOS 10.15.6 (19G2005)
# x86legacy — Macs without T2 chip and VMs. Minimum macOS 11.0.1 (20B29)
