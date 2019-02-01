/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GPRW.aml, Fri Feb  1 16:17:44 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000081 (129)
 *     Revision         0x02
 *     Checksum         0x7A
 *     OEM ID           "GPRW"
 *     OEM Table ID     "GPRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181031 (538447921)
 */
DefinitionBlock ("", "SSDT", 2, "GPRW", "GPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)

    Debug = "Disable instantly wake cause by USB and etc device"
    Method (GPRW, 2, NotSerialized)
    {
        If ((0x6D == Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Zero))
    }
}

