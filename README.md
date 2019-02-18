# Hackintosh-Lenovo-chao5000
This repo is for hackintosh on Lenovo chao5000
(default kext folder is for SYNA2B33,for ELAN0608 use VoodooI2CELAN.kext instead)

  *****
####   Change Log:

> 2/14/2019

1.SSDT-TPD0.aml is full support for SYNA2B33 and ELAN0608, just use latest VoodooI2C.kext and satellites kext.

**Note:** VoodooI2CSynaptics.kext(SYNA2B33)、VoodooI2CELAN.kext(ELAN0608)

2.Update Clover 4876,remove themes folder,just use Clover's inner themes.




>   2/02/2019

1.Add NullEthernet.kext for USB Network card.

2.Add touchpad's compatibility of 7500U (Default kext folder is for 7200U) 


>   1/30/2019

1.Update Clover 4868,use full hotpatch files,modify battery info,and brightless key is working.

2.Tocuhpad is working now,enabled via SSDT-TPD0.aml with VoodooI2C.kext.



>   1/11/2019

1.Clover 4844，Audio、HD620、Realtek RTL8168GU、Sleep、custom USB injection、brightess、battery、AMD530 has been disabled by SSDT-DAMD.aml.


2.Touchpad SYNA2B33 should wait for VoodooI2C.kext update.
  
  
####   Credits：
*   Clover team for [CLOVER](https://sourceforge.net/projects/cloverefiboot/)
*   [Rehabman](https://github.com/RehabMan) for some kexts
*   [Acidanthera](https://github.com/acidanthera) for some kexts
*   [Dids](https://github.com/Dids) for his [clover-builder](https://github.com/Dids/clover-builder)
*   [athlonreg ](https://github.com/athlonreg)for his fork [one-key-hidpi](https://github.com/athlonreg/one-key-hidpi)
*   [alexandred ](https://github.com/alexandred)for his [VoodooI2C.kext ](https://github.com/alexandred/VoodooI2C)
*   [penghubingzhou](https://github.com/penghubingzhou) for touchpad help
*   [Xc2333](https://github.com/Xc2333) for maintaining this repo
  
  ![](https://github.com/Xc2333/Hackintosh-Lenovo-chao5000/blob/master/pic/About%20this%20Mac.png)
