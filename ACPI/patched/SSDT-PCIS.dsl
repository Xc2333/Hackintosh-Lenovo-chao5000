/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/ESP_MAC/EFI/CLOVER/ACPI/patched/SSDT-PCIS.aml, Wed Feb 20 12:20:24 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000448 (1096)
 *     Revision         0x02
 *     Checksum         0x14
 *     OEM ID           "PCIS"
 *     OEM Table ID     "PCIS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "PCIS", "PCIS", 0x00000000)
{
    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x15)
            {
                "SATA AHCI Controller"
            }, 

            "model", 
            Buffer (0x32)
            {
                "Intel Sunrise Point-LP PCH - SATA AHCI Controller"
            }
        })
    }

    Method (_SB.PCI0.GFX0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x16)
            {
                "Intel HD Graphics 620"
            }, 

            "model", 
            Buffer (0x16)
            {
                "Intel HD Graphics 620"
            }
        })
    }

    Method (_SB.PCI0.I2C0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "device_type", 
            Buffer (0x04)
            {
                "I2C"
            }, 

            "name", 
            Buffer (0x2A)
            {
                "Sunrise Point-LP Serial IO I2C Controller"
            }, 

            "model", 
            Buffer (0x3D)
            {
                "Intel Corporation, Sunrise Point-LP Serial IO I2C Controller"
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x3C)
            {
                "Intel Corporation, Sunrise Point-LP USB 3.0 xHCI Controller"
            }, 

            "model", 
            Buffer (0x1E)
            {
                "Intel USB 3.0 xHCI Controller"
            }
        })
    }

    Method (_SB.PCI0.RP05._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x19)
            {
                "Realtek RTL8168GU/8111GU"
            }, 

            "model", 
            Buffer (0x36)
            {
                "Realtek RTL8168GU/8111GU PCI Express Gigabit Ethernet"
            }
        })
    }

    Method (_SB.PCI0.HDAS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0C)
        {
            "layout-id", 
            Buffer (0x04)
            {
                 0x14, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x0F)
            {
                "Realtek ALC230"
            }, 

            "model", 
            Buffer (0x32)
            {
                "Realtek ALC230 @ High Definition Audio Controller"
            }, 

            "PinConfigurations", 
            Buffer (Zero){}
        })
    }
}

