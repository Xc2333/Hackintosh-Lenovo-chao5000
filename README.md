# Hackintosh-Lenovo-chao5000
### 本项目致力于联想潮5000黑苹果引导文件完善

⚠️：按触摸板分为SYNA2B33/ELAN0608二个版本，默认的驱动文件夹对应SYNA2B33，ELAN0608用户请使用VoodooI2CELAN.kext

  *****
### [中文](https://github.com/Xc2333/Hackintosh-Lenovo-chao5000/blob/master/README-CN.md)|[English](https://github.com/Xc2333/Hackintosh-Lenovo-chao5000/blob/master/README.md)
  
####   更新日志:
> 3/21/2019

1.优化SSDT-XOSI.aml。

2.更新WhateverGreen.kext_v1.2.7,Lilu.kext_v1.3.5以及AptioMemoryFix.efi

> 3/18/2019

1.更新Clover 4898，config-install添加忽略的-v啰嗦模式。

2.更新关于本机图片，删除SSDT-TPD0.aml内多余的_STA方法，仅仅重命名_STA即可。

3.增加NoTouchID.kext解决日常操作中密码验证窗口卡顿问题，增加SystemProfilerMemoryFixup.kext修复关于本机不显示内存条的问题（这个bug不应该涉及MacbookPro14吧？）

4.增加SystemFixTools.kext，因为这些kext几乎不需要更新，合并到一个空壳中以减少kext目录的数量，内含NoTouchID.kext、NullEthernetInjector.kext、SystemProfilerMemoryFixup.kext、VoodooTSCSync.kext）

> 3/6/2019

1.增加CPUFriend.kext,使Macbook Pro 14.3最低限制1300Mhz降低到600Mhz。

> 2/25/2019

1.改用19160000注入显卡ig-platfrom-id以解决HD620在10.14上的颜色过渡问题。

2.修正HDMI con1-alldata数据。

> 2/20/2019

1.新增SSDT-PCIS.aml，让关于本机-系统报告能读取PCI信息（修饰作用）

2.config文件添加_DSM重命名；取消声卡的Properties注入，改用SSDT-PCIS.aml注入；config取消clover开机声音

> 2/18/2019

1.新增中文README.md、修正type-C端口（完善中）、添加AppleALC生成脚本，方便日后的声卡驱动升级



####   感谢🎉：
*   Clover团队开发的 [CLOVER](https://sourceforge.net/projects/cloverefiboot/)
*   [Rehabman](https://github.com/RehabMan) 开发的一些驱动
*   [Acidanthera](https://github.com/acidanthera) 开发的一些驱动
*   [Dids](https://github.com/Dids) 提供 [clover-builder](https://github.com/Dids/clover-builder)
*   [athlonreg ](https://github.com/athlonreg)提供改良版的 [one-key-hidpi](https://github.com/athlonreg/one-key-hidpi)
*   [alexandred ](https://github.com/alexandred)的 [VoodooI2C.kext ](https://github.com/alexandred/VoodooI2C)
*   [penghubingzhou](https://github.com/penghubingzhou) 提供触摸板修改帮助
*   [Xc2333](https://github.com/Xc2333) 维护本项目
  
  ![](https://github.com/Xc2333/Hackintosh-Lenovo-chao5000/blob/master/pic/About%20this%20Mac.png)
