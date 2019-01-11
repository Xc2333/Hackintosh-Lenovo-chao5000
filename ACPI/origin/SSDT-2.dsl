/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181031 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Fri Jan 11 14:44:16 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000346 (838)
 *     Revision         0x01
 *     Checksum         0xB0
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GEXP, DeviceObj)
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (EIAP, UnknownObj)
    External (EIDF, IntObj)

    Scope (\)
    {
        Device (EIAD)
        {
            Name (_HID, EisaId ("INT3399"))  // _HID: Hardware ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                ADBG ("EIAD STA")
                If (LEqual (EIAP, One))
                {
                    Return (0x0F)
                }
                ElseIf (LEqual (EIDF, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (PECE, Zero)
                Name (PECD, Zero)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PECV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("adf03c1f-ee76-4f23-9def-cdae22a36acf")))
                {
                    If (LGreaterEqual (ToInteger (Arg1), One))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                ADBG ("EIAD F:0")
                                Return (Buffer (One)
                                {
                                     0x0F                                             // .
                                })
                            }
                            Case (One)
                            {
                                ADBG ("EIAD F:1")
                                If (LEqual (EIAP, Zero))
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), PECE) /* \EIAD._DSM.PECE */
                                    Store (DerefOf (Index (Arg3, One)), PECD) /* \EIAD._DSM.PECD */
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), OLDV) /* \EIAD._DSM.OLDV */
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, PECE)
                                    If (LGreater (PECD, Zero))
                                    {
                                        Sleep (PECD)
                                        \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                ADBG ("EIAD F:2")
                                Store (DerefOf (Index (Arg3, Zero)), DFUE) /* \EIAD._DSM.DFUE */
                                Store (DerefOf (Index (Arg3, One)), DFUD) /* \EIAD._DSM.DFUD */
                                If (LEqual (EIAP, One))
                                {
                                    Store (\_SB.GGOV (0x02000015), OLDV) /* \EIAD._DSM.OLDV */
                                    \_SB.SGOV (0x02000015, DFUE)
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), OLDV) /* \EIAD._DSM.OLDV */
                                    \_SB.SGOV (0x02040003, DFUE)
                                }

                                If (LGreater (DFUD, Zero))
                                {
                                    Sleep (DFUD)
                                    If (LEqual (EIAP, One))
                                    {
                                        \_SB.SGOV (0x02000015, OLDV)
                                    }
                                    Else
                                    {
                                        \_SB.SGOV (0x02040003, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x03)
                            {
                                ADBG ("EIAD F:3")
                                If (LEqual (EIAP, One))
                                {
                                    Store (\_SB.GGOV (0x02000015), DFUV) /* \EIAD._DSM.DFUV */
                                    Store (One, PECV) /* \EIAD._DSM.PECV */
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), DFUV) /* \EIAD._DSM.DFUV */
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), PECV) /* \EIAD._DSM.PECV */
                                }

                                Return (Package (0x02)
                                {
                                    PECV, 
                                    DFUV
                                })
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

