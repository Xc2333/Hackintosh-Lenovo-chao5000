/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BKEY.aml, Wed Jan 30 12:29:33 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C6 (198)
 *     Revision         0x02
 *     Checksum         0xE2
 *     OEM ID           "BKEY"
 *     OEM Table ID     "BKEY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "BKEY", "BKEY", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

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
}

