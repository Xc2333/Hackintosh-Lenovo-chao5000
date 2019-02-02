/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/ESP_MAC/EFI/CLOVER/ACPI/patched/SSDT-TPD0.aml, Sat Feb  2 12:26:00 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000149 (329)
 *     Revision         0x02
 *     Checksum         0x87
 *     OEM ID           "TPD"
 *     OEM Table ID     "TPD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "TPD", "TPD", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPD0.SBFG, IntObj)    // (from opcode)
    External (_SB_.PCI0.I2C0.TPD0.SBFS, IntObj)    // (from opcode)
    External (TPTY, FieldUnitObj)    // (from opcode)

    Debug = "Enable touchpad work with VoodooI2C.kext"
    Method (_SB.PCI0.GPI0._STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }

    Method (_SB.PCI0.I2C0.TPD0._CRS, 0, Serialized)  // _CRS: Current Resource Settings
    {
        If ((TPTY == One))
        {
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003F
                    }
            })
            Return (ConcatenateResTemplate (SBFB, SBFG))
        }

        If ((TPTY == 0x02))
        {
            Return (ConcatenateResTemplate (SBFS, SBFG))
        }
    }
}

