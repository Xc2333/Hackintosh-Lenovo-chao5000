/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0.aml, Wed Apr  3 18:08:51 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004CE (1230)
 *     Revision         0x02
 *     Checksum         0x18
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (PTTB, UnknownObj)

    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadOnly,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadOnly,
                    0xFED40000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (PTTA, 0xFED40000)
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.TPM._Y2C._BAS, CBAS)  // _BAS: Base Address
                CBAS = PTTB /* External reference */
                PTTA = PTTB /* External reference */
                Return (CRS) /* \_SB_.TPM_.CRS_ */
            }

            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TPMR, SystemMemory, PTTA, 0x1000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x44), 
                FERR,   32, 
                Offset (0x4C), 
                STRT,   32
            }

            OperationRegion (FHCI, SystemMemory, 0xFED40000, 0x1000)
            Field (FHCI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                HERR,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }

            OperationRegion (TNVS, SystemMemory, 0x6FF71000, 0x26)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                One, 
                                0x20
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.2")
                    }
                    Case (0x02)
                    {
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPIP = 0x02
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM_.PPRQ */
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        PPIP = 0x05
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM_.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM_.PPRP */
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        PPIP = 0x07
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPRM = Zero
                        If ((PPRQ == 0x17))
                        {
                            PPRM = DerefOf (Arg2 [One])
                        }

                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        PPIP = 0x08
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        PPRQ = Zero
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        MORD = DerefOf (Arg2 [Zero])
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TSMI, 3, Serialized)
            {
                Name (WTME, Zero)
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        CREQ = One
                        While (((WTME <= 0xC8) && ((CREQ & One) != 
                            Zero)))
                        {
                            Sleep (One)
                            WTME++
                        }

                        HCMD = 0x02
                        Return (Zero)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (TSMI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

