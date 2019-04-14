# Hackintosh-Lenovo-chao5000
### 本项目致力于联想潮5000黑苹果引导文件完善

⚠️：按触摸板分为SYNA2B33/ELAN0608二个版本，默认的驱动文件夹对应SYNA2B33，ELAN0608用户请使用VoodooI2CELAN.kext

  *****
  
####   更新日志:

> 4/14/2019

1.Clover更新为4919，VoodooPS2.kext更新为2.0.0，WhateverGreen.kext更新为1.2.8，ApfsDriverLoader/AptioMemory已更新为最新。

2.SSDT-TPD0.aml修复；抛弃SSDT-GPRW.aml，新的SSDT-DAMD.aml。

3.config添加FixRegions；移除SAT0重命名；移除SSDT-CPFD.aml，不再设置最低频率。

  
> 3/28/2019

1.ig-platform-id更换为19160000，SMBIOS更换为MacBook Pro13.3。

2.HDMI端口@1类型已修正，音视频输出正常。

3.去掉DVMT补丁（解锁BIOS后设置为64M，如果你没有设置为64M，则使用config-DVMT.plist）默认config不使用DVMT补丁。

4.CLOVER更新为4910，以适应macOS 10.14.4更新。

5.简化SSDT-TPD0.aml, SYNA2B33只需要一个bin patch即可，0608还需测试。

6.更新SSDT-CPFD.aml为MacBook Pro 13.3。

7.SystemFixTools.kext内添加EFICheckDisabler.kext以解决开机提示潜在错误。


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
