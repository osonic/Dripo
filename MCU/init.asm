;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (MINGW64)
; This file was generated Sun Nov 10 22:22:36 2013
;--------------------------------------------------------
	.module init
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Init_Device
	.globl _Interrupts_Init
	.globl _Port_IO_Init
	.globl _Voltage_Reference_Init
	.globl _Comparator_Init
	.globl _SMBus_Init
	.globl _UART_Init
	.globl _Timer_Init
	.globl _PCA_Init
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'PCA_Init'
;------------------------------------------------------------
	G$PCA_Init$0$0 ==.
	C$init.c$10$0$0 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:10: void PCA_Init()
;	-----------------------------------------
;	 function PCA_Init
;	-----------------------------------------
_PCA_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$init.c$12$1$1 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:12: PCA0MD    &= ~0x40;
	mov	r7,_PCA0MD
	mov	a,#0xBF
	anl	a,r7
	mov	_PCA0MD,a
	C$init.c$13$1$1 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:13: PCA0MD    = 0x00;
	mov	_PCA0MD,#0x00
	C$init.c$14$1$1 ==.
	XG$PCA_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$init.c$16$1$1 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:16: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$init.c$18$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:18: TCON      = 0x50;
	mov	_TCON,#0x50
	C$init.c$19$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:19: TMOD      = 0x22;
	mov	_TMOD,#0x22
	C$init.c$20$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:20: CKCON     = 0x18;
	mov	_CKCON,#0x18
	C$init.c$21$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:21: TH0       = 0xCD;
	mov	_TH0,#0xCD
	C$init.c$22$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:22: TH1       = 0x60;
	mov	_TH1,#0x60
	C$init.c$23$1$2 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$init.c$25$1$2 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:25: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	C$init.c$27$1$3 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:27: SCON0     = 0x10;
	mov	_SCON0,#0x10
	C$init.c$28$1$3 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Init'
;------------------------------------------------------------
	G$SMBus_Init$0$0 ==.
	C$init.c$30$1$3 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:30: void SMBus_Init()
;	-----------------------------------------
;	 function SMBus_Init
;	-----------------------------------------
_SMBus_Init:
	C$init.c$32$1$4 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:32: SMB0CF    = 0x80;
	mov	_SMB0CF,#0x80
	C$init.c$33$1$4 ==.
	XG$SMBus_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Comparator_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Comparator_Init$0$0 ==.
	C$init.c$35$1$4 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:35: void Comparator_Init()
;	-----------------------------------------
;	 function Comparator_Init
;	-----------------------------------------
_Comparator_Init:
	C$init.c$38$1$5 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:38: CPT0CN    = 0x85;
	mov	_CPT0CN,#0x85
	C$init.c$39$1$5 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:39: for (i = 0; i < 35; i++);  // Wait 10us for initialization
	mov	r6,#0x23
	mov	r7,#0x00
00104$:
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
	C$init.c$40$1$5 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:40: CPT0CN    &= ~0x30;
	mov	r7,_CPT0CN
	mov	a,#0xCF
	anl	a,r7
	mov	_CPT0CN,a
	C$init.c$41$1$5 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:41: CPT0MX    = 0x11;
	mov	_CPT0MX,#0x11
	C$init.c$42$1$5 ==.
	XG$Comparator_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Voltage_Reference_Init'
;------------------------------------------------------------
	G$Voltage_Reference_Init$0$0 ==.
	C$init.c$44$1$5 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:44: void Voltage_Reference_Init()
;	-----------------------------------------
;	 function Voltage_Reference_Init
;	-----------------------------------------
_Voltage_Reference_Init:
	C$init.c$46$1$6 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:46: REF0CN    = 0x04;
	mov	_REF0CN,#0x04
	C$init.c$47$1$6 ==.
	XG$Voltage_Reference_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_IO_Init'
;------------------------------------------------------------
	G$Port_IO_Init$0$0 ==.
	C$init.c$49$1$6 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:49: void Port_IO_Init()
;	-----------------------------------------
;	 function Port_IO_Init
;	-----------------------------------------
_Port_IO_Init:
	C$init.c$60$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:60: P0MDIN    = 0xF3;
	mov	_P0MDIN,#0xF3
	C$init.c$61$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:61: P0MDOUT   = 0xF0;
	mov	_P0MDOUT,#0xF0
	C$init.c$62$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:62: XBR0      = 0x0C;
	mov	_XBR0,#0x0C
	C$init.c$63$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:63: XBR1      = 0x4F;
	mov	_XBR1,#0x4F
	C$init.c$64$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:64: XBR2      = 0xC0;
	mov	_XBR2,#0xC0
	C$init.c$65$1$7 ==.
	XG$Port_IO_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupts_Init'
;------------------------------------------------------------
	G$Interrupts_Init$0$0 ==.
	C$init.c$67$1$7 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:67: void Interrupts_Init()
;	-----------------------------------------
;	 function Interrupts_Init
;	-----------------------------------------
_Interrupts_Init:
	C$init.c$69$1$8 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:69: EIE1      = 0x01;
	mov	_EIE1,#0x01
	C$init.c$70$1$8 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:70: EIP1      = 0x01;
	mov	_EIP1,#0x01
	C$init.c$71$1$8 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:71: IE        = 0x80;
	mov	_IE,#0x80
	C$init.c$72$1$8 ==.
	XG$Interrupts_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Device'
;------------------------------------------------------------
	G$Init_Device$0$0 ==.
	C$init.c$76$1$8 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:76: void Init_Device(void)
;	-----------------------------------------
;	 function Init_Device
;	-----------------------------------------
_Init_Device:
	C$init.c$78$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:78: PCA_Init();
	lcall	_PCA_Init
	C$init.c$79$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:79: Timer_Init();
	lcall	_Timer_Init
	C$init.c$80$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:80: UART_Init();
	lcall	_UART_Init
	C$init.c$81$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:81: SMBus_Init();
	lcall	_SMBus_Init
	C$init.c$82$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:82: Comparator_Init();
	lcall	_Comparator_Init
	C$init.c$83$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:83: Voltage_Reference_Init();
	lcall	_Voltage_Reference_Init
	C$init.c$84$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:84: Port_IO_Init();
	lcall	_Port_IO_Init
	C$init.c$85$1$10 ==.
;	C:\Users\Sonic\Dropbox\Code\DripoCore\init.c:85: Interrupts_Init();
	lcall	_Interrupts_Init
	C$init.c$86$1$10 ==.
	XG$Init_Device$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
