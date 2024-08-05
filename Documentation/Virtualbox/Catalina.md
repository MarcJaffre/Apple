--------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Catalina dans Virtualbox </p>

<p align='center'> 
  <img src=https://github.com/user-attachments/assets/1f4cc2e5-b3d0-49b4-b902-572a0e800360 /> 
</p>

--------------------------------------------------------------------------------------------------------------
## I. Création et configuration de la Machine Virtuelle
### A. Mac OS X 10.15 
L'image utilisé est [Catalina 10.15.iso](https://archive.org/details/macOS-X-images) et l'hyperviseur utilisé est virtualbox 7. (Ressources en bas)




#### 1. Virtualbox
```
[Creation de la VM]
- Nom                 : MacOS Catalina (10.15)
- Type                : Mac OS X
- Version             : Mac OS X (64 bit)
- Stockage            : 30 Go (Minimum: 26 GO Utilisable)
- Lecteur CD-ROM      : Catalina 10.15.iso
 
[Système]
- Mémoire-vive        : 4096 MB
- Ordre d'amoçage     : Optique
-> Fonctions avancées : IO-APIC, Clock in UTC Time, EFI

Processeur(s)         : 4 Cores / 8 Threads
-> Fonctions avancées : PAE/NX

[Affichage]
- Mémoire Vidéo       : 128 MB
- Contrôleur Graph.   : VBox VGA
-> Fonctions avancées : Activer l'accélération 3D

[USB]
- Activer le controleur USB : OUI
-> Contrôleur 3.0 (xHCI)
```

<br />


<br />

#### 2. Bypass - EN CAS DE PROBLEM ([DOC](https://gist.github.com/notsidney/50a211527567962a5dc93b8a765fa6fc))
Script Linux:
```bash
clear;

# Simuler une machine MAC Apple iMac 27" (Late 2015)
VBoxManage modifyvm      "MacOS Catalina (10.15)  --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata  "MacOS Catalina (10.15)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata  "MacOS Catalina (10.15)"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata  "MacOS Catalina (10.15)"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata  "MacOS Catalina (10.15)"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata  "MacOS Catalina (10.15)"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
VBoxManage modifyvm      "MacOS Catalina (10.15)"  --cpu-profile "Intel Core i7-6700K"
```

Script Windows:
```bash
@echo off

:: Nettoyage console
cls;

:: Definir Nom de la machine
set VM_NAME=MacOS Catalina (10.15)

:: Dossier Virtualbox 
cd "C:\Program Files\Oracle\VirtualBox\"

:: Simuler une machine MAC
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "%VM_NAME%"  "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0

# CPU (i7-6700K : 4 Cores / 8 Threads)
VBoxManage modifyvm "%VM_NAME%" --cpu-profile "Intel Core i7-6700K"
VBoxManage modifyvm "%VM_NAME%" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
```

#### 3. Information
Lors du démarrage de l'installation , ceci peut être très long. Pareil pour le 1er démarrage.

le caractère `@` lors du processus Post Install se fait gràce `alt+gr+*` . 

Ignorer le compte Icloud.

<br />


--------------------------------------------------------------------------------------------------------------
## II. Installation du Système d'exploitation
### A. Démarrage du Système
Le logo de la Pomme avec une barre de chargement apparaît après avoir démarré.

![Logo_Pomme_Chagement](https://github.com/user-attachments/assets/1e8ab4d1-b8ae-48bd-8632-af433adb8ea3)

### B. Création de la partition Mac OS X
Sélectionner `Utilitaire de Disque` puis faire Continuer

Ensuite `sélectionner le stockage` et faire `Effacer`.

Et pour finir indiquer un nom de volume et valider.

Une fois terminé, quitter l'`Utilitaire de Disque`.

![image](https://github.com/user-attachments/assets/365705dd-f2b6-4d89-b2ab-c31b474f1458)

![image](https://github.com/user-attachments/assets/21b8e413-53a9-4809-9c98-eb7316eecb79)

### C. Installer Mac OS
![image](https://github.com/user-attachments/assets/ca6ed2dd-ae05-46f2-b901-ff7d6be8c5e2)

![image](https://github.com/user-attachments/assets/4884de5c-d723-4135-963a-9765e75d7865)

![image](https://github.com/user-attachments/assets/707e3212-d2ca-4824-b1db-0dd025cf2a40)

![image](https://github.com/user-attachments/assets/1bed82d4-4c4d-41aa-a480-2a3f2043dbd3)


<br />
<br />
<br />

--------------------------------------------------------------------------------------------------------------
## III. Installation des Guest additions
Toutes commande doit être en root.

### A. [CATALINA](https://github.com/geerlingguy/macos-virtualbox-vm/issues/79)
#### 1. Désactiver GateKeeper
Ouvrir le terminal et taper la commande suivante. (Voir screen)

Ensuite Autoriser le téléchargement d’applications à partir de : `N'importe où`.
```bash
spctl --master-disable;
```

![image](https://github.com/user-attachments/assets/634fe82f-bdcc-4d75-8f74-9aae654e9cd3)

#### 2. Désactiver SIP (Protection de l’intégrité du système)
##### Etape 1: Redémarrez votre ordinateur en mode de récupération. 
Le caractère `=`se tape `!` .
```bash
nvram recovery-boot-mode=unused;
shutdown -r now;
```

##### Etape 2: Lancez Terminal
A partir du menu Utilitaires.
```bash
csrutil disable
spctl kext-consent add VB5E2TV963
nvram -d recovery-boot-mode && shutdown -r now
```
##### Etape 3: Démarrage normal
Lancez Terminal
```bash
csrutil status
spctl kext-consent list
```

#### 3. Modifier les permissions
```bash
mount -uw /
chown :admin /System/Library/Extensions/
chmod 775 /System/Library/Extensions/
```

#### 4. Installation des Guests Additions
Monter les guests additions de Virtualbox dans le lecteur DVD, puis ouvrir le lecteur CDROM présent sur le bureau.

Lancer l'installation du package `VBoxDarwinAdditions.pkg`.


#### 5. Réactivation de Gatekeeper & SIP
```bash
spctl --master-enable
csrutil enable 
```

<br />
<br />

--------------------------------------------------------------------------------------------------------------
## X. Télécharger les images ISO
### A. MyArchive
```
https://archive.org/details/macOS-X-images
https://archive.org/details/macos-collection
```

### B. BootLoader
```
- Opencore
- https://github.com/CloverHackyColor/CloverBootloader
- https://osy.gitbook.io/hac-mini-guide/legacy-guide-clover/legacy-installing-osx
```

### C. Guide
```
- https://www.tech2tech.fr/comment-installer-macos-catalina-10-15-sur-virtualbox-sur-windows/
- https://forums.virtualbox.org/viewtopic.php?t=85631
- https://hackintosh.com/
- https://tonymacx86.com

- [OpenCore] https://www.youtube.com/watch?v=ETO4qhUPBfA
```

### D. Support Hardware
```
https://support.apple.com/fr-fr/105113
```


<br />
