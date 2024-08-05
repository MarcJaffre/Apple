--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> Paramètres de Virtualbox en ligne de commande </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Sources
```
- [Documentation] https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/changedmi.html
- [HideVM]        https://github.com/firefedot/virtualbox-vm0-vm/blob/master/hidevm_efiide.cmd
```

<br />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. DMI
### A. Bios Information (Type 0)
```bash
# Vendor
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSVendor"         "Apple Inc."

# Version
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSVersion"        "B52.88Z.0088.B05.0904162222"

# Release Date
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseDate"    "08/10/13"

# Release
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMajor"   "5"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMinor"   "9"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMajor"  "1"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMinor"  "0"
```

### B. system Information (Type 1)
```bash
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemVendor"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemSKU"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemFamily"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiSystemUuid"
```


### C. DMI board information (type 2)
```bash
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
```


### D. DMI processor information (type 4)
```bash
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
```

### E. DMI OEM strings (type 11)
```bash
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiOEMVBoxVer" "vboxVer_1.2.3"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiOEMVBoxRev" "vboxRev_12345"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
```
