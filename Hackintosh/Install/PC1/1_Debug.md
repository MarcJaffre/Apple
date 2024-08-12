-------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Comprendre et corriger le Debug du^Système </p>

-------------------------------------------------------------------------------------------------------------------------
### I. Présentation
> Lors du démarrage de l'installateur, des erreurs sont visibles dans la console.
>
> Le correctif peut etre un paramètres dans le fichier config.plist, un pilote.
>
> L'ordre d'execution est importante.

### II. Information
Ma clé USB de base contient Sonoma et OpenCore (Patché AMD)


-------------------------------------------------------------------------------------------------------------------------
### II. Installation de MacOS
Les Kexts sont des pilotes pour la gestion du matériel. ([Listing Kext](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#extras))

A chaque correctif, il faut éditer le fichier config.plist puis fairê `OC Snasphot`.

#### A. [EB|Log:EXITBS:START]
##### 1. Code d'erreur
Le système est bloqué au démarrage. Dans le fichier log généré sur la clé USB, la ligne `[EB|Log:EXITBS:START]` apparait. Ce type d'erreur est liée aux périphériques.
```
RTC: lost battery power - time may be invalid
HPET: Map device Registers failed
```
##### 2. Correctif
> Le fichier `SSDT-EC-USBX-Desktop.aml` permet la bonne prise du matétriel au niveau des périphériques.
```
- https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-EC-USBX-DESKTOP.aml
```

<br />

#### B. AppleIntelMCEReporter
L'erreur suivant est un check du CPU Intel. Il est normal qu'il plante sur une macine ayant un processeur AMD. 
##### 1. Code d'erreur
```
Kernel Extensions in backtace :
   com.apple.driver.AppleIntelMCEReporter   (115.0)  ...
   Dependency: com.apple.iokit.IOACPIFamily (1.4)    ...
   Dependency: com.apple.iokit.IOCPIFamily  (2.9)    ...
```

##### 2. Correctif
> Il suffit d'ajouter le Kext `AppleMCEReporterDisabler` puis d'**activer le module**. (Support: MacPro6,1, MacPro7,1, iMacPro1,1)

```
https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip
```


<br />

#### C. Airportbrcmfixup 
##### 1. Code d'erreur
```
Forcing CS_RUNTIME for entitlement: Com.apple.private.security.storage.backgroundtaskmanagement
Forcing CS_RUNTIME for entitlement: Com.apple.private.security.appleImage4.user-client
<Warning> failed lookup: name = com.apple.logd ................................ error = 3: no such process
<Warning> failed lookup: name = com.apple.system.opendirectoryd.membership .... error = 3: no such process
com.apple.systemkeychain : service not running

<Patienter 3/5 min>

busy timeout: 'AppleACPICPU'
Service inactîve: com.apple.wifiFirmwareLoader
................ service not running
```
##### 2. Correctif
Il sera nécessaire de mettre Lilu au des Kexts Airportbrcmfixup 
```
- Lilu             : Lilu est un gestionnaire de plugin
- Airportbrcmfixup : C'est un plugin qui sert à la gestion de la carte réseau
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

#### X. XXXXX
##### 1. Code d'erreur
```
```
##### 2. Correctif
```
```

<br />

