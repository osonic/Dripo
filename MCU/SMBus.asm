;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (MINGW64)
; This file was generated Sun Nov 10 22:22:36 2013
;--------------------------------------------------------
	.module SMBus
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMBus_Write_Byte_PARM_2
	.globl _SMBus_ISR
	.globl _printf
	.globl _CP0HYN0
	.globl _CP0HYN1
	.globl _CP0HYP0
	.globl _CP0HYP1
	.globl _CP0FIF
	.globl _CP0RIF
	.globl _CP0OUT
	.globl _CP0EN
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0CM2
	.globl _AD0WINT
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _AD0TM
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _T2XCLK
	.globl _TR2
	.globl _T2SPLIT
	.globl _TF2LEN
	.globl _TF2L
	.globl _TF2H
	.globl _SI
	.globl _ACK
	.globl _ARBLOST
	.globl _ACKRQ
	.globl _STO
	.globl _STA
	.globl _TXMODE
	.globl _MASTER
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _IEGF0
	.globl _EA
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _MCE0
	.globl _S0MODE
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _TMR2
	.globl _TMR2RL
	.globl _DP
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _CPT0CN
	.globl _EIP1
	.globl _P0MDIN
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE1
	.globl _IT01CF
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _REF0CN
	.globl _PSW
	.globl _TMR2H
	.globl _TMR2L
	.globl _TMR2RLH
	.globl _TMR2RLL
	.globl _TMR2CN
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _ADC0
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _IE
	.globl _P0MDOUT
	.globl _CPT0MX
	.globl _CPT0MD
	.globl _SBUF0
	.globl _SCON0
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _SMB_RW
	.globl _SMB_BUSY
	.globl _TARGET
	.globl _SMB_DATA_OUT
	.globl _SMB_DATA_IN
	.globl _SMBus_Write_Byte
	.globl _SMBus_Read_Byte
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$CPT0MD$0$0 == 0x009d
_CPT0MD	=	0x009d
G$CPT0MX$0$0 == 0x009f
_CPT0MX	=	0x009f
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$OSCICL$0$0 == 0x00b3
_OSCICL	=	0x00b3
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0$0$0 == 0x00be
_ADC0	=	0x00be
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0CF$0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$ADC0GT$0$0 == 0x00c4
_ADC0GT	=	0x00c4
G$ADC0LT$0$0 == 0x00c6
_ADC0LT	=	0x00c6
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$TMR2RLL$0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$TMR2RLH$0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$IT01CF$0$0 == 0x00e4
_IT01CF	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0CPL1$0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA0CPH1$0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA0CPL2$0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA0CPH2$0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$P0MDIN$0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$CPT0CN$0$0 == 0x00f8
_CPT0CN	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$TMR2RL$0$0 == 0xcbca
_TMR2RL	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$PCA0CP1$0$0 == 0xeae9
_PCA0CP1	=	0xeae9
G$PCA0CP2$0$0 == 0xeceb
_PCA0CP2	=	0xeceb
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$IEGF0$0$0 == 0x00ae
_IEGF0	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$MASTER$0$0 == 0x00c7
_MASTER	=	0x00c7
G$TXMODE$0$0 == 0x00c6
_TXMODE	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$ACKRQ$0$0 == 0x00c3
_ACKRQ	=	0x00c3
G$ARBLOST$0$0 == 0x00c2
_ARBLOST	=	0x00c2
G$ACK$0$0 == 0x00c1
_ACK	=	0x00c1
G$SI$0$0 == 0x00c0
_SI	=	0x00c0
G$TF2H$0$0 == 0x00cf
_TF2H	=	0x00cf
G$TF2L$0$0 == 0x00ce
_TF2L	=	0x00ce
G$TF2LEN$0$0 == 0x00cd
_TF2LEN	=	0x00cd
G$T2SPLIT$0$0 == 0x00cb
_T2SPLIT	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$T2XCLK$0$0 == 0x00c8
_T2XCLK	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0WINT$0$0 == 0x00eb
_AD0WINT	=	0x00eb
G$AD0CM2$0$0 == 0x00ea
_AD0CM2	=	0x00ea
G$AD0CM1$0$0 == 0x00e9
_AD0CM1	=	0x00e9
G$AD0CM0$0$0 == 0x00e8
_AD0CM0	=	0x00e8
G$CP0EN$0$0 == 0x00ff
_CP0EN	=	0x00ff
G$CP0OUT$0$0 == 0x00fe
_CP0OUT	=	0x00fe
G$CP0RIF$0$0 == 0x00fd
_CP0RIF	=	0x00fd
G$CP0FIF$0$0 == 0x00fc
_CP0FIF	=	0x00fc
G$CP0HYP1$0$0 == 0x00fb
_CP0HYP1	=	0x00fb
G$CP0HYP0$0$0 == 0x00fa
_CP0HYP0	=	0x00fa
G$CP0HYN1$0$0 == 0x00f9
_CP0HYN1	=	0x00f9
G$CP0HYN0$0$0 == 0x00f8
_CP0HYN0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$SMB_DATA_IN$0$0==.
_SMB_DATA_IN::
	.ds 1
G$SMB_DATA_OUT$0$0==.
_SMB_DATA_OUT::
	.ds 1
G$TARGET$0$0==.
_TARGET::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LSMBus.SMBus_Write_Byte$c$1$17==.
_SMBus_Write_Byte_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$SMB_BUSY$0$0==.
_SMB_BUSY::
	.ds 1
G$SMB_RW$0$0==.
_SMB_RW::
	.ds 1
LSMBus.SMBus_ISR$ADDR_SEND$1$22==.
_SMBus_ISR_ADDR_SEND_1_22:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_ISR'
;------------------------------------------------------------
	G$SMBus_ISR$0$0 ==.
	C$SMBus.c$65$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:65: static bit ADDR_SEND = 0;           // Used by the ISR to flag byte
	clr	_SMBus_ISR_ADDR_SEND_1_22
	C$SMBus.c$15$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:15: bit SMB_BUSY = 0;                      // Software flag to indicate when the
	clr	_SMB_BUSY
	C$SMBus.c$19$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:19: bit SMB_RW = WRITE;                    // Software flag to indicate the
	clr	_SMB_RW
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Write_Byte'
;------------------------------------------------------------
;c                         Allocated with name '_SMBus_Write_Byte_PARM_2'
;addr                      Allocated to registers 
;------------------------------------------------------------
	G$SMBus_Write_Byte$0$0 ==.
	C$SMBus.c$33$0$0 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:33: void SMBus_Write_Byte (char addr, char c)
;	-----------------------------------------
;	 function SMBus_Write_Byte
;	-----------------------------------------
_SMBus_Write_Byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$SMBus.c$41$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:41: TARGET = SENSOR_ADDR;
	mov	_TARGET,#0x0D
	C$SMBus.c$42$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:42: while (SMB_BUSY);                   // Wait for SMBus to be free.
00101$:
	jb	_SMB_BUSY,00101$
	C$SMBus.c$43$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:43: SMB_BUSY = 1;                       // Claim SMBus (set to busy)
	setb	_SMB_BUSY
	C$SMBus.c$44$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:44: SMB_RW = WRITE;                     // Mark this transfer as a WRITE
	clr	_SMB_RW
	C$SMBus.c$45$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:45: SMB_DATA_OUT = c;
	mov	_SMB_DATA_OUT,_SMBus_Write_Byte_PARM_2
	C$SMBus.c$46$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:46: STA = 1;                            // Start transfer
	setb	_STA
	C$SMBus.c$47$1$18 ==.
	XG$SMBus_Write_Byte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Read_Byte'
;------------------------------------------------------------
;addr                      Allocated to registers 
;------------------------------------------------------------
	G$SMBus_Read_Byte$0$0 ==.
	C$SMBus.c$57$1$18 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:57: char SMBus_Read_Byte(char addr)
;	-----------------------------------------
;	 function SMBus_Read_Byte
;	-----------------------------------------
_SMBus_Read_Byte:
	C$SMBus.c$59$1$20 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:59: return '#';
	mov	dpl,#0x23
	C$SMBus.c$60$1$20 ==.
	XG$SMBus_Read_Byte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_ISR'
;------------------------------------------------------------
	G$SMBus_ISR$0$0 ==.
	C$SMBus.c$62$1$20 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:62: void SMBus_ISR (void) interrupt 6
;	-----------------------------------------
;	 function SMBus_ISR
;	-----------------------------------------
_SMBus_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$SMBus.c$67$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:67: if (ARBLOST == 1) // ARB error occurred       
	jnb	_ARBLOST,00102$
	C$SMBus.c$69$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:69: SMB0CF &= ~0x80;                 // Reset communication
	mov	r7,_SMB0CF
	mov	a,#0x7F
	anl	a,r7
	mov	_SMB0CF,a
	C$SMBus.c$70$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:70: SMB0CF |= 0x80;
	orl	_SMB0CF,#0x80
	C$SMBus.c$71$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:71: STA = 0;
	clr	_STA
	C$SMBus.c$72$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:72: STO = 0;
	clr	_STO
	C$SMBus.c$73$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:73: ACK = 0;
	clr	_ACK
	C$SMBus.c$74$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:74: SMB_BUSY = 0;                    // Free SMBus
	clr	_SMB_BUSY
	C$SMBus.c$78$2$23 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:78: return;             // quit on error
	ljmp	00116$
00102$:
	C$SMBus.c$81$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:81: switch (SMB0CN & 0xF0)           // Status vector
	mov	a,#0xF0
	anl	a,_SMB0CN
	mov	r7,a
	cjne	r7,#0x80,00140$
	sjmp	00113$
00140$:
	cjne	r7,#0xC0,00141$
	sjmp	00104$
00141$:
	cjne	r7,#0xE0,00114$
	C$SMBus.c$86$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:86: TARGET = TARGET << 1;
	mov	a,_TARGET
	add	a,_TARGET
	mov	_TARGET,a
	C$SMBus.c$87$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:87: SMB0DAT = TARGET;          // Load address of the target slave
	mov	_SMB0DAT,_TARGET
	C$SMBus.c$88$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:88: SMB0DAT &= 0xFE;           // Clear the LSB of the address for the
	anl	_SMB0DAT,#0xFE
	C$SMBus.c$90$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:90: SMB0DAT |= SMB_RW;         // Load R/W bit
	mov	r7,_SMB0DAT
	mov	c,_SMB_RW
	clr	a
	rlc	a
	mov	r6,a
	orl	a,r7
	mov	_SMB0DAT,a
	C$SMBus.c$91$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:91: STA = 0;                   // Manually clear START bit
	clr	_STA
	C$SMBus.c$92$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:92: ADDR_SEND = 1;
	setb	_SMBus_ISR_ADDR_SEND_1_22
	C$SMBus.c$93$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:93: break;
	C$SMBus.c$96$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:96: case SMB_MTDB:  //1100:0000
	sjmp	00115$
00104$:
	C$SMBus.c$97$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:97: if (ACK)                   // Slave ACK?
	jnb	_ACK,00111$
	C$SMBus.c$99$3$25 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:99: if (ADDR_SEND)          // If the previous byte was a slave
	C$SMBus.c$101$4$26 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:101: ADDR_SEND = 0;       // Next byte is not a slave address
	jbc	_SMBus_ISR_ADDR_SEND_1_22,00145$
	sjmp	00108$
00145$:
	C$SMBus.c$102$4$26 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:102: if (SMB_RW == WRITE) // If this transfer is a WRITE,
	jb	_SMB_RW,00115$
	C$SMBus.c$105$5$27 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:105: SMB0DAT = SMB_DATA_OUT;
	mov	_SMB0DAT,_SMB_DATA_OUT
	sjmp	00115$
00108$:
	C$SMBus.c$114$4$29 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:114: STO = 1;             // Set STO to terminate transfer
	setb	_STO
	C$SMBus.c$115$4$29 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:115: SMB_BUSY = 0;        // And free SMBus interface
	clr	_SMB_BUSY
	sjmp	00115$
00111$:
	C$SMBus.c$120$3$30 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:120: STO = 1;                // Send STOP condition, followed
	setb	_STO
	C$SMBus.c$123$3$30 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:123: SMB_BUSY = 0; 
	clr	_SMB_BUSY
	C$SMBus.c$124$3$30 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:124: printf("Error\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$SMBus.c$126$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:126: break;
	C$SMBus.c$129$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:129: case SMB_MRDB:   //1000:0000
	sjmp	00115$
00113$:
	C$SMBus.c$130$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:130: SMB_DATA_IN = SMB0DAT;     // Store received byte
	mov	_SMB_DATA_IN,_SMB0DAT
	C$SMBus.c$131$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:131: SMB_BUSY = 0;              // Free SMBus interface
	clr	_SMB_BUSY
	C$SMBus.c$132$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:132: ACK = 0;                   // Send NACK to indicate last byte
	clr	_ACK
	C$SMBus.c$135$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:135: STO = 1;                   // Send STOP to terminate transfer
	setb	_STO
	C$SMBus.c$136$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:136: break;
	C$SMBus.c$138$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:138: default:
	sjmp	00115$
00114$:
	C$SMBus.c$139$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:139: printf("Error\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$SMBus.c$140$2$24 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:140: SMB_BUSY = 0;               // and handle at end of ISR
	clr	_SMB_BUSY
	C$SMBus.c$143$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:143: } // end switch
00115$:
	C$SMBus.c$144$1$22 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\SMBus.c:144: SI = 0;                             // Clear interrupt flag
	clr	_SI
00116$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$SMBus.c$145$1$22 ==.
	XG$SMBus_ISR$0$0 ==.
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
FSMBus$_str_0$0$0 == .
__str_0:
	.ascii "Error"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
