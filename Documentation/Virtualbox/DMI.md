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
# Version
# Release Date
# Release


VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSVendor"         "Apple Inc."
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSVersion"        "B52.88Z.0088.B05.0904162222"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseDate"    "08/10/13"

VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMajor"   "5"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSReleaseMinor"   "9"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMajor"  "1"
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/DmiBIOSFirmwareMinor"  "0"


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
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
VBoxManage setextradata VM-NAME "VBoxInternal/Devices/efi/0/Config/
```

