--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Sonoma dans Virtualbox (KO) </p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle
### A. Mac OS
L'image utilisé est [Sonoma 14.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)
#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Sonoma
- Lecteur CD-ROM      : Sonoma 14.iso
- Type                : Mac OS X
- Version             : Mac OS X (64 bit)
- Mémoire-vive        : 4096 MB
- Processeur(s)       : 4 Cores / 8 Threads
- Stockage            : 60 Go

[Système]
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

[Affichage]
- Mémoire Vidéo       : 128 Mo
- Contrôleur Graph.   : VMSVGA
-> Fonctions avancées : Activer l'accélération 3D

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```

<br />

### B. Bypass
#### 1. CPU AMD
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma"  --cpu-profile "Intel Core i7-6700K"
```

#### 2. VirtualBox
```bash
clear;
VBoxManage modifyvm      "MacOS Sonoma"  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage modifyvm      "MacOS Sonoma"  --vram 256
```

#### 3. DMI
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct"    "Mac-551B86E5744E2388"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"   "MacBookPro15,1"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"   "1.0"
```


#### 4. SMC
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/smc/0/Config/DeviceKey"          "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC"  "0"
```

#### 5. TM
```bash
clear;
VBoxManage setextradata  "MacOS Sonoma"  "VBoxInternal/TM/TSCMode"                              "RealTSCOffset"
```

#### 6. EFI GPU
```bash
clear;
#VBoxManage setextradata  "MacOS Sonoma"  VBoxInternal2/EfiGraphicsResolution                    "1920x1080"
```

<br />

--------------------------------------------------------------------------------------------------------------
## II. Installation de MacOS Sonoma
```
modifiervm "Mac OS 12" --cpuid-set 00000001 000106e5 00100800 0098e3fd bfebfbff

# Compatibilite : https://support.apple.com/fr-fr/105113 (Identification de votre ... >  Recherche terme "Identifiant du modèle : ")
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"    "MacBookPro15,1"
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"    "1.0"
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct"     "Mac-551B86E5744E2388"
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/Devices/smc/0/Config/DeviceKey"           "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC"   "1"
VBoxManage setextradata "Mac OS Sonoma" "VBoxInternal/TM/TSCMode"                               "RealTSCOffset"
```


```
Si vous utilisez un processeur AMD, exécutez également la commande suivante :
VBoxManage modifyvm "Mac OS 12" --cpu-profile "Intel Core i7-6700K"
Assurez-vous que la machine virtuelle Mac OS Sonoma est sélectionnée et cliquez sur Démarrer > Normal
Après une longue séquence d'initialisation, la configuration MAC OS devrait démarrer
Sélectionnez une langue > Cliquez sur la flèche
Sélectionnez Utilitaire de disque
Sélectionnez le DISQUE DUR VBOX > Cliquez sur Effacer
Nommez le lecteur OS12 > Définir Formater en APFS > Cliquez sur Effacer
Cliquez sur Terminé > Fermer l'utilitaire de disque
Cliquez sur Installer macOS
Cliquez sur Continuer > Cliquez sur Accepter > Cliquez à nouveau sur Accepter
Sélectionnez le disque OS12 > Cliquez sur Installer
Attendez que Mac OS installe les fichiers, la VM redémarrera plusieurs fois
Sélectionnez votre pays > Cliquez sur Continuer
Confirmez vos langues et la disposition du clavier > Cliquez sur Continuer
Cliquez sur Pas maintenant sur l'écran Accessibilité
Cliquez sur Continuer sur l'écran Données et confidentialité
Sélectionnez Pas maintenant sur l'écran Assistant de migration
Sélectionnez Configurer plus tard, puis Ignorer sur l'écran ID Apple
Cliquez sur Accepter > Accepter à nouveau
Entrez un nom, un nom d'utilisateur, un mot de passe > Cliquez sur Continuer
Cliquez sur Continuer > Sélectionnez Utiliser ou Ne pas utiliser pour les services de localisation
Choisissez un fuseau horaire > Cliquez sur Continuer
Décochez Partager Mac Analytics avec Apple > Cliquez sur Continuer
Cliquez sur Configurer plus tard sur l'écran Temps d'écran
Décochez la case Activer Demander à Siri > Cliquez sur Continuer
Choisissez un thème > Cliquez sur Continuer
Bienvenue sur MacOS
```

--------------------------------------------------------------------------------------------------------------
### Sources:
```
https://www.sysnettechsolutions.com/en/install-macos-virtualbox/
```

