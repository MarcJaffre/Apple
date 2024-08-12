## Avancement 

### ACPI
Validé
```
- SSDT-EC-USBX-Desktop.aml
```

## Kernel
La page [Kext-GIT](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Kexts.md) en bas il y a un lien qui mène à toute une liste de Kext.
### 1. Applications de la configuratîon (Expérimental)
> Failed to get bridge device. OSISPredicateUpdateProduct : Incompatible Apps List: No Product found 
>
> https://www.reddit.com/r/hackintosh/comments/11ts4gi/ventura_help_cannot_install_onto_hard_drive_or/


```
- 0. AppleMCEReporterDisabler
- 1. AppleIGB
- 2. Innie
- 3. Lilu
- 4. Airportbrcmfixup
- 5. AirPortBrcmNIC_Injector.kext
- 6. AirPortBrcm4360_Injector.kext
- 7. NVMeFix
- 8. RestrictEvents
- 9. VirtualSMC
- 10. WhateverGreen
- 11. AppleALC

# Exclus:
#  - AMDRyzenCPUPowerManagement (1st boot)
#  - SMCAMDProcessor (2nd boot)
```

### 1. Résumé des dépendances
```
#- AppleMCEReporterDisabler
#- AppleALC
#- AppleIGB
#- Innie

#- Lilu:
# - Airportbrcmfixup 
# - NVMeFix
# - RestrictEvents
# - VirtualSMC
#  - AMDRyzenCPUPowerManagement (1st boot)
#  - SMCAMDProcessor (2nd boot)
# - WhateverGreen
```


## UEFI
Validé
```
- HfsPlus.efi (Drivers)
- ResetNvramEntry.efi
- OpenCanopy.efi
- OpenRuntime.efi
```

## Installateur en Français
> https://github.com/valnoxy/t440p-oc/issues/48

> ADD > prev-lang > Valeur à blanc
>
> Delete -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> Item 0: Type String and Value prev-lang:kbd
