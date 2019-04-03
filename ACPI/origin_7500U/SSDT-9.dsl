/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-9.aml, Wed Apr  3 18:08:51 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001FE3 (8163)
 *     Revision         0x01
 *     Checksum         0x95
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.GATY, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.LSTE, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.LSTE, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX._ADR, UnknownObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (DCKE, UnknownObj)
    External (DCSC, UnknownObj)
    External (DPEG, MethodObj)    // 1 Arguments
    External (DPGP, MethodObj)    // 0 Arguments
    External (DPRG, MethodObj)    // 1 Arguments
    External (DSEN, UnknownObj)
    External (ECON, IntObj)
    External (EGPC, UnknownObj)
    External (EGPV, UnknownObj)
    External (GGIV, MethodObj)    // 1 Arguments
    External (GHPN, UnknownObj)
    External (H2OP, MethodObj)    // 1 Arguments
    External (NXD1, UnknownObj)
    External (NXD2, UnknownObj)
    External (NXD3, UnknownObj)
    External (NXD4, UnknownObj)
    External (NXD5, UnknownObj)
    External (NXD6, UnknownObj)
    External (NXD7, UnknownObj)
    External (NXD8, UnknownObj)
    External (OHPN, UnknownObj)
    External (OSYS, UnknownObj)
    External (SGOV, MethodObj)    // 2 Arguments
    External (SUDK, UnknownObj)
    External (TBDT, UnknownObj)
    External (TDGS, UnknownObj)
    External (UDCK, UnknownObj)
    External (WRCM, MethodObj)    // 2 Arguments

    Name (\_SB.PCI0.RP01.PXSX.GSTP, Zero)
    Name (\_SB.PCI0.RP01.PXSX.TGXA, Zero)
    Name (\_SB.PCI0.RP01.PXSX.AGXA, Zero)
    Name (\_SB.PCI0.RP01.PXSX.DSWR, Zero)
    Name (\_SB.PCI0.RP01.PXSX.EMDR, Zero)
    Name (\_SB.PCI0.RP01.PXSX.PXGS, Zero)
    Name (\_SB.PCI0.RP01.PXSX.CACD, Zero)
    Name (\_SB.PCI0.RP01.PXSX.CCND, Zero)
    Name (\_SB.PCI0.RP01.PXSX.NACD, Zero)
    Name (\_SB.PCI0.RP01.PXSX.TLSN, Zero)
    Scope (\_SB.PCI0.RP01.PXSX)
    {
        OperationRegion (VBOR, SystemMemory, 0x6FF18018, 0x00040004)
        Field (VBOR, DWordAcc, Lock, Preserve)
        {
            RVBS,   32, 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   262144, 
            VBS4,   262144, 
            VBS5,   262144, 
            VBS6,   262144, 
            VBS7,   262144, 
            VBS8,   262144
        }
    }

    Scope (\_SB.PCI0.RP01.PXSX)
    {
        OperationRegion (SGOP, SystemMemory, 0x6F88D018, 0x00000046)
        Field (SGOP, AnyAcc, Lock, Preserve)
        {
            XBAS,   32, 
            EBAS,   32, 
            EECP,   32, 
            DBPA,   32, 
            SGGP,   8, 
            SGMD,   8, 
            PWOK,   32, 
            HLRS,   32, 
            DSEL,   32, 
            ESEL,   32, 
            PSEL,   32, 
            PWEN,   32, 
            PRST,   32, 
            GBAS,   16, 
            APDT,   32, 
            AHDT,   32, 
            IHDT,   32, 
            DSSV,   32, 
            NVVD,   32, 
            OPTF,   8, 
            ADGF,   8
        }
    }

    Scope (\_SB.PCI0.RP01.PXSX)
    {
        OperationRegion (AOPR, SystemMemory, 0x6FF74F98, 0x00000005)
        Field (AOPR, AnyAcc, Lock, Preserve)
        {
            SLVS,   8, 
            EXPM,   8, 
            PXDY,   8, 
            PXFD,   8, 
            FDPD,   8
        }
    }

    Scope (\_SB.PCI0.RP01)
    {
        OperationRegion (RPCX, SystemMemory, \_SB.PCI0.RP01.PXSX.DBPA, 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }

        Name (WKEN, Zero)
        OperationRegion (PEGB, SystemMemory, \_SB.PCI0.RP01.PXSX.DBPA, 0x0100)
        Field (PEGB, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            PCMR,   8, 
            Offset (0xA4), 
            PMST,   2
        }

        OperationRegion (DGPU, SystemMemory, \_SB.PCI0.RP01.PXSX.EBAS, 0x50)
        Field (DGPU, DWordAcc, NoLock, Preserve)
        {
            DDID,   16, 
            Offset (0x4C), 
            SSSV,   32
        }

        PowerResource (PC05, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (MSD3, Zero)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
                {
                    Return (Zero)
                }

                If ((MSD3 == 0x03))
                {
                    PCMR = 0x07
                    PMST = Zero
                    \_SB.PCI0.RP01.PXSX.HGON ()
                    SSSV = \_SB.PCI0.RP01.PXSX.DSSV
                    _STA = One
                    MSD3 = Zero
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
                {
                    Return (Zero)
                }

                If ((MSD3 == Zero))
                {
                    \_SB.PCI0.RP01.PXSX.HGOF ()
                    _STA = Zero
                    MSD3 = 0x03
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PC05
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PC05
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PC05
        })
        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If ((\_SB.OSCO & 0x04))
            {
                Return (0x04)
            }
            Else
            {
                Return (0x03)
            }
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = Zero
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x03
            })
            OperationRegion (ACAP, PCI_Config, \_SB.PCI0.RP01.PXSX.EECP, 0x14)
            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }
        }
    }

    Scope (\_SB.PCI0.RP01.PXSX)
    {
        Name (ONOF, One)
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x0B), 
            CBCC,   8
        }

        OperationRegion (PCIM, SystemMemory, \_SB.PCI0.RP01.PXSX.EBAS, 0x0100)
        Field (PCIM, DWordAcc, NoLock, Preserve)
        {
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }

        OperationRegion (PCAP, PCI_Config, EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            \_SB.PCI0.RP01.PXSX._ADR = Zero
        }

        Method (HGON, 0, Serialized)
        {
            If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
            {
                Return (Zero)
            }

            If ((CCHK (One) == Zero))
            {
                Return (Zero)
            }

            ONOF = One
            If ((DDID == 0xFFFF))
            {
                H2OP (0xF0)
                DPEG (One)
                While (!DPGP ())
                {
                    Sleep (One)
                    H2OP (0x44)
                }

                Sleep (0x82)
                DPRG (One)
                Sleep (0x96)
                \_SB.PCI0.RP01.LNKD = Zero
                While ((\_SB.PCI0.RP01.LNKS < 0x07))
                {
                    H2OP (0x66)
                    Sleep (0x0A)
                    H2OP (0x33)
                }

                While ((DDID == 0xFFFF))
                {
                    Sleep (One)
                    H2OP (0xAA)
                }

                Sleep (0x14)
                If (\ECON)
                {
                    \_SB.PCI0.LPCB.EC0.GATY = One
                }

                Sleep (0x0A)
                H2OP (0xF1)
            }

            Return (Zero)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
            {
                Return (Zero)
            }

            If ((CCHK (One) == Zero))
            {
                Return (Zero)
            }

            HGON ()
            WVID = HVID /* \_SB_.PCI0.RP01.PXSX.HVID */
            WDID = HDID /* \_SB_.PCI0.RP01.PXSX.HDID */
            LCTL = ((ELCT & 0x43) | (LCTL & 0xFFBC))
            \_SB.PCI0.RP01.PEGA.LCT1 = ((ELCT & 0x43) | (\_SB.PCI0.RP01.PEGA.LCT1 & 0xFFBC))
            Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            H2OP (0xF4)
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
            {
                Return (Zero)
            }

            If ((CCHK (Zero) == Zero))
            {
                Return (Zero)
            }

            ONOF = Zero
            H2OP (0xF3)
            If (\ECON)
            {
                \_SB.PCI0.LPCB.EC0.GATY = Zero
            }

            Sleep (0x0A)
            H2OP (0xF2)
            DPRG (Zero)
            Sleep (0x02)
            DPEG (Zero)
            Sleep (0x14)
            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (((\_SB.PCI0.RP01.PXSX.ADGF & 0x0F) == One))
            {
                Return (Zero)
            }

            If ((CCHK (Zero) == Zero))
            {
                Return (Zero)
            }

            HVID = SVID /* \_SB_.PCI0.RP01.PXSX.SVID */
            HDID = SDID /* \_SB_.PCI0.RP01.PXSX.SDID */
            ELCT = LCTL /* \_SB_.PCI0.RP01.PXSX.LCTL */
            HGOF ()
            Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            H2OP (0xF5)
            Return (Zero)
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (EPON, 0, Serialized)
        {
            ONOF = One
            Return (Zero)
        }

        Method (SGPI, 1, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP == One))
                {
                    Local0 = (Arg0 >> 0x1F)
                    Local1 = (Arg0 & 0x7FFFFFFF)
                    GGIV (Local1)
                    Local2 = GGIV (Local1)
                    If ((Local0 == Zero))
                    {
                        Local2 = ~Local2
                    }

                    Return ((Local2 & One))
                }
            }

            Return (Zero)
        }

        Method (SGPO, 2, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP == One))
                {
                    Local0 = (Arg0 >> 0x1F)
                    Local1 = (Arg0 & 0x7FFFFFFF)
                    If ((Local0 == Zero))
                    {
                        Arg1 = ~Arg1
                    }

                    If (CondRefOf (SGOV))
                    {
                        SGOV (Local1, Arg1)
                    }
                }
            }
        }

        Method (CCHK, 1, NotSerialized)
        {
            If ((\_SB.PCI0.RP01.PVID == IVID))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                If ((ONOF == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((ONOF == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (ATPX, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP1, Zero, F0SS)
                CreateWordField (TMP1, 0x02, F0IV)
                CreateDWordField (TMP1, 0x04, F0SF)
                F0SS = 0x08
                F0IV = One
                F0SF = 0xBF
                If (((\_SB.PCI0.RP01.PXSX.SGMD & 0x0F) == Zero))
                {
                    F0SF = Zero
                    Return (TMP1) /* \_SB_.PCI0.GFX0.ATPX.TMP1 */
                }

                If (((\_SB.PCI0.RP01.PXSX.SGMD & 0x0F) == 0x03))
                {
                    F0SF = Zero
                    Return (TMP1) /* \_SB_.PCI0.GFX0.ATPX.TMP1 */
                }

                If (((\_SB.PCI0.RP01.PXSX.SGMD & 0x0F) == 0x02))
                {
                    F0SF = 0x33
                }

                If ((TDGS == One))
                {
                    F0SF = One
                    Return (TMP1) /* \_SB_.PCI0.GFX0.ATPX.TMP1 */
                }

                If ((\_SB.PCI0.RP01.PXSX.PXDY == One))
                {
                    F0SF &= 0xFFFFFFFD
                }

                If ((\_SB.PCI0.RP01.PXSX.PXFD == One))
                {
                    F0SF |= 0x02
                }

                If ((\_SB.PCI0.RP01.PXSX.FDPD == One))
                {
                    F0SF |= 0x02
                }

                Return (TMP1) /* \_SB_.PCI0.GFX0.ATPX.TMP1 */
            }

            If ((Arg0 == One))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP2, Zero, F1SS)
                CreateDWordField (TMP2, 0x02, F1VM)
                CreateDWordField (TMP2, 0x06, F1FG)
                F1SS = 0x0A
                F1VM = 0x7FC0
                If (((\_SB.PCI0.RP01.PXSX.SGMD & 0x0F) == 0x02))
                {
                    F1FG = Zero
                    F1VM = Zero
                    If ((\_SB.PCI0.RP01.PXSX.PXDY == One))
                    {
                        F1FG |= 0x80
                        F1VM |= 0x80
                    }

                    If ((\_SB.PCI0.RP01.PXSX.PXFD == Zero))
                    {
                        F1FG |= 0x0200
                        F1VM |= 0x0200
                    }

                    If ((\_SB.PCI0.RP01.PXSX.FDPD == One))
                    {
                        F1FG |= 0x0400
                        F1VM |= 0x0400
                    }

                    If ((OSYS >= 0x07DD))
                    {
                        F1FG |= 0x4000
                        F1VM |= 0x4000
                    }

                    If ((TDGS == One))
                    {
                        F1VM = 0x00037680
                        F1FG = 0x00037680
                    }
                }
                Else
                {
                    F1FG = 0x40
                    F1VM = 0x40
                }

                Return (TMP2) /* \_SB_.PCI0.GFX0.ATPX.TMP2 */
            }

            If ((Arg0 == 0x02))
            {
                CreateWordField (Arg1, Zero, FN2S)
                CreateByteField (Arg1, 0x02, DGPR)
                If ((DGPR == Zero))
                {
                    \_SB.PCI0.RP01.PXSX._OFF ()
                }

                If ((DGPR == One))
                {
                    \_SB.PCI0.RP01.PXSX._ON ()
                }

                Return (Zero)
            }

            If ((Arg0 == 0x03))
            {
                CreateWordField (Arg1, Zero, FN3S)
                CreateWordField (Arg1, 0x02, SDMG)
                If ((SDMG == Zero))
                {
                    \_SB.PCI0.RP01.PXSX.SGPO (\_SB.PCI0.RP01.PXSX.DSEL, Zero)
                }

                If ((SDMG == One))
                {
                    \_SB.PCI0.RP01.PXSX.SGPO (\_SB.PCI0.RP01.PXSX.DSEL, One)
                }

                Return (Zero)
            }

            If ((Arg0 == 0x04))
            {
                CreateWordField (Arg1, Zero, FN4S)
                CreateWordField (Arg1, 0x02, SIMG)
                If ((SIMG == Zero))
                {
                    \_SB.PCI0.RP01.PXSX.SGPO (\_SB.PCI0.RP01.PXSX.ESEL, Zero)
                }

                If ((SIMG == One))
                {
                    \_SB.PCI0.RP01.PXSX.SGPO (\_SB.PCI0.RP01.PXSX.ESEL, One)
                }

                Return (Zero)
            }

            If ((Arg0 == 0x05))
            {
                CreateWordField (Arg1, Zero, FN5S)
                CreateWordField (Arg1, 0x02, TGFX)
                \_SB.PCI0.RP01.PXSX.TGXA = TGFX /* \_SB_.PCI0.GFX0.ATPX.TGFX */
                \_SB.PCI0.RP01.PXSX.GSTP = One
                Return (Zero)
            }

            If ((Arg0 == 0x06))
            {
                CreateWordField (Arg1, Zero, FN6S)
                CreateWordField (Arg1, 0x02, AGFX)
                \_SB.PCI0.RP01.PXSX.AGXA = AGFX /* \_SB_.PCI0.GFX0.ATPX.AGFX */
                \_SB.PCI0.RP01.PXSX.GSTP = Zero
                Return (Zero)
            }

            If ((Arg0 == 0x08))
            {
                Name (TMP3, Buffer (0x0100)
                {
                    /* 0000 */  0x0E, 0x00, 0x46, 0x00, 0x07, 0x01, 0x00, 0x00,  // ..F.....
                    /* 0008 */  0x01, 0x07, 0x01, 0x01, 0x00, 0x01, 0x05, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x04, 0x05, 0x00, 0x01, 0x10, 0x01,  // ........
                    /* 0018 */  0x07, 0x03, 0x00, 0x00, 0x03, 0x07, 0x03, 0x01,  // ........
                    /* 0020 */  0x10, 0x02, 0x07, 0x07, 0x00, 0x01, 0x03, 0x07,  // ........
                    /* 0028 */  0x07, 0x01, 0x10, 0x02, 0x07, 0x09, 0x00, 0x02,  // ........
                    /* 0030 */  0x03, 0x07, 0x09, 0x01, 0x20, 0x02, 0x07, 0x0A,  // .... ...
                    /* 0038 */  0x00, 0x03, 0x03, 0x07, 0x0A, 0x01, 0x30, 0x02,  // ......0.
                    /* 0040 */  0x07, 0x0B, 0x00, 0x04, 0x03, 0x07, 0x0B, 0x01,  // ........
                    /* 0048 */  0x30, 0x02, 0x07, 0x0C, 0x00, 0x06, 0x03         // 0......
                })
                Name (SGFL, One)
                Name (MXD1, 0x00030301)
                Name (MXD2, 0x00030307)
                Name (MXD3, 0x03030308)
                Name (MXD4, 0x03030304)
                Name (MXD5, 0x03030305)
                Name (MXD6, 0x0303030A)
                Name (MXD7, 0x03030306)
                Name (MXD8, 0x00030302)
                Name (MXD9, Zero)
                CreateWordField (TMP3, Zero, ATNO)
                CreateWordField (TMP3, 0x02, ATSZ)
                TMP3 [0x0E] = ADPM (MXD2, One)
                TMP3 [0x13] = ADPM (MXD2, One)
                TMP3 [0x18] = ADPM (MXD3, One)
                TMP3 [0x1D] = ADPM (MXD3, 0x02)
                TMP3 [0x22] = ADPM (MXD4, One)
                TMP3 [0x27] = ADPM (MXD4, 0x02)
                TMP3 [0x2C] = ADPM (MXD5, One)
                TMP3 [0x31] = ADPM (MXD5, 0x02)
                TMP3 [0x36] = ADPM (MXD6, One)
                TMP3 [0x3B] = ADPM (MXD6, 0x02)
                TMP3 [0x40] = ADPM (MXD7, One)
                TMP3 [0x45] = ADPM (MXD7, 0x02)
                If ((SGFL & One))
                {
                    ATNO = (ATNO + One)
                    ATSZ = (ATSZ + 0x05)
                }

                Return (TMP3) /* \_SB_.PCI0.GFX0.ATPX.TMP3 */
            }

            Return (Zero)
        }

        Method (ADPM, 2, Serialized)
        {
            Local1 = Zero
            Local0 = (Arg0 >> 0x10)
            If ((Arg1 == One))
            {
                Local1 |= (Local0 & One)
            }
            Else
            {
                Local1 |= ((Local0 & 0x02) >> One)
            }

            Local1 <<= One
            Local0 = (Arg0 >> 0x18)
            If ((Arg1 == One))
            {
                Local1 |= (Local0 & One)
            }
            Else
            {
                Local1 |= ((Local0 & 0x02) >> One)
            }

            Local1 <<= One
            Local0 = (Arg0 >> 0x08)
            If ((Arg1 == One))
            {
                Local1 |= (Local0 & One)
            }
            Else
            {
                Local1 |= ((Local0 & 0x02) >> One)
            }

            Return (Local1)
        }

        Method (ATRM, 2, Serialized)
        {
            Local0 = Arg0
            Local1 = Arg1
            Name (VROM, Buffer (Local1)
            {
                 0x00                                             // .
            })
            If ((Local1 > 0x1000))
            {
                Local1 = 0x1000
            }

            If ((Arg0 > \_SB.PCI0.RP01.PXSX.RVBS))
            {
                Return (VROM) /* \_SB_.PCI0.GFX0.ATRM.VROM */
            }

            Local2 = (Arg0 + Arg1)
            If ((Local2 > \_SB.PCI0.RP01.PXSX.RVBS))
            {
                Local1 = (\_SB.PCI0.RP01.PXSX.RVBS - Local0)
            }

            Divide (Local0, 0x8000, Local3, Local4)
            Switch (Local4)
            {
                Case (Zero)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS1
                }
                Case (One)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS2
                }
                Case (0x02)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS3
                }
                Case (0x03)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS4
                }
                Case (0x04)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS5
                }
                Case (0x05)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS6
                }
                Case (0x06)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS7
                }
                Case (0x07)
                {
                    Local5 = \_SB.PCI0.RP01.PXSX.VBS8
                }

            }

            Local4 *= 0x8000
            Local0 -= Local4
            Mid (Local5, Local0, Local1, VROM) /* \_SB_.PCI0.GFX0.ATRM.VROM */
            Return (VROM) /* \_SB_.PCI0.GFX0.ATRM.VROM */
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Name (\_SB.PCI0.RP01.PXSX.NTLE, 0x0F)
        Name (\_SB.PCI0.RP01.PXSX.TLE1, 0x02)
        Name (\_SB.PCI0.RP01.PXSX.TLE2, One)
        Name (\_SB.PCI0.RP01.PXSX.TLE3, 0x08)
        Name (\_SB.PCI0.RP01.PXSX.TLE4, 0x80)
        Name (\_SB.PCI0.RP01.PXSX.TLE5, 0x0200)
        Name (\_SB.PCI0.RP01.PXSX.TLE6, 0x0400)
        Name (\_SB.PCI0.RP01.PXSX.TLE7, 0x0800)
        Name (\_SB.PCI0.RP01.PXSX.TLE8, 0x03)
        Name (\_SB.PCI0.RP01.PXSX.TLE9, 0x09)
        Name (\_SB.PCI0.RP01.PXSX.TL10, 0x81)
        Name (\_SB.PCI0.RP01.PXSX.TL11, 0x0201)
        Name (\_SB.PCI0.RP01.PXSX.TL12, 0x0401)
        Name (\_SB.PCI0.RP01.PXSX.TL13, 0x0801)
        Name (\_SB.PCI0.RP01.PXSX.TL14, Zero)
        Name (\_SB.PCI0.RP01.PXSX.TL15, Zero)
        Method (ATIF, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                ADBG ("ATIF(0)")
                Name (TMP0, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP0, Zero, F0SS)
                CreateWordField (TMP0, 0x02, F0IV)
                CreateDWordField (TMP0, 0x04, F0SN)
                CreateDWordField (TMP0, 0x08, F0SF)
                F0SS = 0x0C
                F0IV = One
                F0SN = 0x41
                F0SF = 0x07
                If (((\_SB.PCI0.RP01.PXSX.SGMD & 0x7F) == 0x02))
                {
                    F0SN = Zero
                    F0SF = Zero
                }

                If ((TDGS == One))
                {
                    F0SN = 0x0A00
                    F0SF = 0x000F0003
                }

                Return (TMP0) /* \_SB_.PCI0.GFX0.ATIF.TMP0 */
            }

            If ((Arg0 == One))
            {
                ADBG ("ATIF(1)")
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP1, Zero, F1SS)
                CreateDWordField (TMP1, 0x02, F1VF)
                CreateDWordField (TMP1, 0x06, F1FG)
                CreateByteField (TMP1, 0x0A, F1NC)
                F1SS = 0x0B
                F1VF = 0x0B
                F1FG = 0x09
                F1NC = 0xD0
                Return (TMP1) /* \_SB_.PCI0.GFX0.ATIF.TMP1 */
            }

            If ((Arg0 == 0x02))
            {
                ADBG ("ATIF(2)")
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP2, Zero, F2SS)
                CreateDWordField (TMP2, 0x02, F2PR)
                CreateByteField (TMP2, 0x06, F2EM)
                CreateByteField (TMP2, 0x07, F2TG)
                CreateByteField (TMP2, 0x08, F2SI)
                CreateByteField (TMP2, 0x09, F2FG)
                CreateByteField (TMP2, 0x0A, F2FI)
                CreateByteField (TMP2, 0x0B, F2SP)
                F2SS = 0x0A
                Name (STS2, Zero)
                STS2 |= (DCKE << 0x09)
                STS2 |= (UDCK << 0x0A)
                STS2 |= (SUDK << 0x0B)
                STS2 |= \_SB.PCI0.RP01.PXSX.DSWR /* \_SB_.PCI0.GFX0.ATIF.STS2 */
                STS2 |= (\_SB.PCI0.RP01.PXSX.PXGS << 0x06) /* \_SB_.PCI0.GFX0.ATIF.STS2 */
                F2PR = STS2 /* \_SB_.PCI0.GFX0.ATIF.STS2 */
                \_SB.PCI0.RP01.PXSX.DSWR = Zero
                \_SB.PCI0.RP01.PXSX.PXGS = Zero
                DCKE = Zero
                UDCK = Zero
                SUDK = Zero
                Return (TMP2) /* \_SB_.PCI0.GFX0.ATIF.TMP2 */
            }

            If ((Arg0 == 0x03))
            {
                Name (TMP3, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (TMP3, Zero, F3SS)
                CreateWordField (TMP3, 0x02, F3SD)
                CreateWordField (Arg1, Zero, AI3S)
                CreateWordField (Arg1, 0x02, SLDS)
                CreateWordField (Arg1, 0x04, CODS)
                \_SB.PCI0.RP01.PXSX.CACD = SLDS /* \_SB_.PCI0.GFX0.ATIF.SLDS */
                \_SB.PCI0.RP01.PXSX.CCND = CODS /* \_SB_.PCI0.GFX0.ATIF.CODS */
                If (\ECON)
                {
                    If ((\_SB.PCI0.LPCB.EC0.LSTE == One))
                    {
                        \_SB.PCI0.RP01.PXSX.CCND |= One
                    }
                }

                F3SS = 0x04
                \_SB.PCI0.RP01.PXSX.TLSN = CTOI (\_SB.PCI0.RP01.PXSX.CACD)
                Local1 = \_SB.PCI0.RP01.PXSX.CACD
                Local0 = \_SB.PCI0.RP01.PXSX.NTLE
                While (Local0)
                {
                    Local1 = NATL (\_SB.PCI0.RP01.PXSX.TLSN)
                    If ((Local1 != Zero))
                    {
                        If (((Local1 & \_SB.PCI0.RP01.PXSX.CCND) == Local1))
                        {
                            Local0 = One
                        }
                    }

                    Local0--
                    \_SB.PCI0.RP01.PXSX.TLSN++
                    If ((\_SB.PCI0.RP01.PXSX.TLSN > \_SB.PCI0.RP01.PXSX.NTLE))
                    {
                        \_SB.PCI0.RP01.PXSX.TLSN = One
                    }
                }

                SNXD (Local1)
                \_SB.PCI0.RP01.PXSX.NACD = Local1
                F3SD = \_SB.PCI0.RP01.PXSX.NACD
                Return (TMP3) /* \_SB_.PCI0.GFX0.ATIF.TMP3 */
            }

            If ((Arg0 == 0x11))
            {
                ADBG ("ATIF(17)")
            }

            If ((Arg0 == 0x12))
            {
                ADBG ("ATIF(18)")
                Name (CTNO, 0x14)
                Name (RCBO, 0x80)
                CTNO |= RCBO /* \_SB_.PCI0.GFX0.ATIF.RCBO */
                CreateWordField (Arg1, Zero, F18S)
                CreateByteField (Arg1, 0x02, F18O)
                Local0 = F18O /* \_SB_.PCI0.GFX0.ATIF.F18O */
                Local0 &= One
                If ((Local0 == One))
                {
                    ADBG ("TBT.Notify.OS=1")
                    WRCM (CTNO, One)
                }
                Else
                {
                    ADBG ("TBT.Notify.OS=0")
                    WRCM (CTNO, Zero)
                }
            }

            If ((Arg0 == 0x13))
            {
                ADBG ("ATIF(19)")
                Name (TM19, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                CreateWordField (Arg1, Zero, F19S)
                CreateWordField (Arg1, 0x02, F19O)
                CreateWordField (TM19, Zero, T19S)
                CreateWordField (TM19, 0x02, T19R)
                T19S = 0x0100
                T19R = Zero
                If ((EGPV == One))
                {
                    T19R |= One
                }

                Local7 = EGPC /* External reference */
                Local7 += F19O /* \_SB_.PCI0.GFX0.ATIF.F19O */
                Local6 = 0x04
                While (One)
                {
                    OperationRegion (DGPU, SystemMemory, Local7, One)
                    Field (DGPU, ByteAcc, NoLock, Preserve)
                    {
                        TEMP,   8
                    }

                    TM19 [Local6] = TEMP /* \_SB_.PCI0.GFX0.ATIF.TEMP */
                    Local6++
                    Local7++
                    If ((Local6 == 0x0100))
                    {
                        Break
                    }
                }

                Return (TM19) /* \_SB_.PCI0.GFX0.ATIF.TM19 */
            }

            If ((Arg0 == 0x14))
            {
                ADBG ("ATIF(20)")
                Name (TM20, Buffer (0x0100)
                {
                     0x00                                             // .
                })
                Local7 = TBDT /* External reference */
                Local6 = Zero
                While (One)
                {
                    OperationRegion (DGFX, SystemMemory, Local7, One)
                    Field (DGFX, ByteAcc, NoLock, Preserve)
                    {
                        TEMQ,   8
                    }

                    TM20 [Local6] = TEMQ /* \_SB_.PCI0.GFX0.ATIF.TEMQ */
                    Local6++
                    Local7++
                    If ((Local6 == 0x0100))
                    {
                        Break
                    }
                }

                Return (TM20) /* \_SB_.PCI0.GFX0.ATIF.TM20 */
            }

            Return (Zero)
        }

        Method (CTOI, 1, NotSerialized)
        {
            If ((\_SB.PCI0.RP01.PXSX.NTLE != Zero))
            {
                If ((\_SB.PCI0.RP01.PXSX.TLE1 == Arg0))
                {
                    Return (One)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE2 == Arg0))
                {
                    Return (0x02)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE3 == Arg0))
                {
                    Return (0x03)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE4 == Arg0))
                {
                    Return (0x04)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE5 == Arg0))
                {
                    Return (0x05)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE6 == Arg0))
                {
                    Return (0x06)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE7 == Arg0))
                {
                    Return (0x07)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE8 == Arg0))
                {
                    Return (0x08)
                }

                If ((\_SB.PCI0.RP01.PXSX.TLE9 == Arg0))
                {
                    Return (0x09)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL10 == Arg0))
                {
                    Return (0x0A)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL11 == Arg0))
                {
                    Return (0x0B)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL12 == Arg0))
                {
                    Return (0x0C)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL13 == Arg0))
                {
                    Return (0x0D)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL14 == Arg0))
                {
                    Return (0x0E)
                }

                If ((\_SB.PCI0.RP01.PXSX.TL15 == Arg0))
                {
                    Return (0x0F)
                }
            }

            Return (Zero)
        }

        Method (NATL, 1, NotSerialized)
        {
            If ((\_SB.PCI0.RP01.PXSX.NTLE != Zero))
            {
                If ((Arg0 == One))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE2)
                }

                If ((Arg0 == 0x02))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE3)
                }

                If ((Arg0 == 0x03))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE4)
                }

                If ((Arg0 == 0x04))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE5)
                }

                If ((Arg0 == 0x05))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE6)
                }

                If ((Arg0 == 0x06))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE7)
                }

                If ((Arg0 == 0x07))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE8)
                }

                If ((Arg0 == 0x08))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE9)
                }

                If ((Arg0 == 0x09))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL10)
                }

                If ((Arg0 == 0x0A))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL11)
                }

                If ((Arg0 == 0x0B))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL12)
                }

                If ((Arg0 == 0x0C))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL13)
                }

                If ((Arg0 == 0x0D))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL14)
                }

                If ((Arg0 == 0x0E))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TL15)
                }

                If ((Arg0 == 0x0F))
                {
                    Return (\_SB.PCI0.RP01.PXSX.TLE1)
                }
            }

            Return (Zero)
        }

        Method (INDL, 0, Serialized)
        {
            NXD1 = Zero
            NXD2 = Zero
            NXD3 = Zero
            NXD4 = Zero
            NXD5 = Zero
            NXD6 = Zero
            NXD7 = Zero
            NXD8 = Zero
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Local0 = Arg0
            If ((Local0 & 0x02))
            {
                NXD1 = One
            }

            If ((Local0 & One))
            {
                NXD2 = One
            }

            If ((Local0 & 0x08))
            {
                NXD3 = One
            }

            If ((Local0 & 0x80))
            {
                NXD4 = One
            }

            If ((Local0 & 0x0200))
            {
                NXD5 = One
            }

            If ((Local0 & 0x0400))
            {
                NXD6 = One
            }

            If ((Local0 & 0x0800))
            {
                NXD7 = One
            }
        }
    }
}

