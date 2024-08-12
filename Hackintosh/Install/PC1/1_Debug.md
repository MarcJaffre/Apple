-------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Comprendre et corriger le Debug du^Système </p>

-------------------------------------------------------------------------------------------------------------------------
### I. Présentation
> Lors du démarrage de l'installateur, des erreurs apparaisent, il faut comprendre puis corriger les erreurs.
>
> Le correctif peut etre un paramètres dans le fichier config.plist, un pilote.
>
> L'ordre d'execution est importante.

### II. Information
Ma clé USB de base contient Sonoma et OpenCore (Patché AMD)


-------------------------------------------------------------------------------------------------------------------------
### II. Installation de MacOS
Les Kexts sont des pilotes pour la gestion du matériel. (([Listing Kext](https://dortania.github.io/OpenCore-Install-Guide/ktext.html#extras))

#### X. ACPI
##### 1. Code d'erreur
Le système est bloqué au démarrage. Dans le fichier log généré sur la clé USB, la ligne `[EB|Log:EXITBS:START]` apparait.
```
RTC: lost battery power - time may be invalid
HPET: Map device Registers failed
```
##### 2. Correctif
>Le fichier `SSDT-EC-USBX-Desktop.aml` permet la bonne prise du matétriel au niveau des périphériques.
```
- https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-EC-USBX-DESKTOP.aml
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

