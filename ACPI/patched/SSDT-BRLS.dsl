/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BRLS.aml, Sun Apr 14 20:00:54 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016A (362)
 *     Revision         0x02
 *     Checksum         0x8D
 *     OEM ID           "BRlS"
 *     OEM Table ID     "BRLS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181003 (538447875)
 */
DefinitionBlock ("", "SSDT", 2, "BRlS", "BRLS", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB)
    {
        Scope (EC)
        {
            Debug = "Brightless key modify"
            Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
            {
                Notify (PS2K, 0x0205)
                Notify (PS2K, 0x0285)
            }

            Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
            {
                Notify (PS2K, 0x0206)
                Notify (PS2K, 0x0286)
            }
        }
    }

    Scope (_SB)
    {
        Device (PNLF)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x0A)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }

        Device (ALS0)
        {
            Debug = "Inject a fake ALS device (ambient light sensor"
            Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
            Name (_CID, "smc-als")  // _CID: Compatible ID
            Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
            Name (_ALR, Package (0x00){})  // _ALR: Ambient Light Response
        }
    }
}

