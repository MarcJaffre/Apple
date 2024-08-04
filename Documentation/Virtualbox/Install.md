---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Installation de Mac OS X dans Virtualbox </p>

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### I. Télécharger les images ISO



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### II. Création et configuration de la Machine Virtuelle

#### A. 
```bash
clear;

VM_NAME="Catalina"
VBoxManage modifyvm 	  "$VM_NAME" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm 	  "$VM_NAME" --cpu-profile "Intel Core i7-6700K"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$VM_NAME"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
``` 
