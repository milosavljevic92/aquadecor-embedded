
; PICBASIC PRO(TM) Compiler 2.60L, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP2.6\18F2550.INC"


; Define statements.
#define		OSC		 20
#define		INTHAND		       INT_ENTRY_H  
#define		INTLHAND		      INT_ENTRY_L  
#define		LCD_BITS		 4
#define		LCD_DREG		 PORTB
#define		LCD_DBIT		 0
#define		LCD_RSREG		 PORTB
#define		LCD_RSBIT		 4
#define		LCD_EREG		 PORTB
#define		LCD_EBIT		 5
#define		LCD_LINES		 2
#define		LCD_COMMANDUS		 2000
#define		LCD_DATAUS		 40
#define		SPWM_FREQ		  170        
#define		SPWM_RES		   100

RAM_START       		EQU	00000h
RAM_END         		EQU	007FFh
RAM_BANKS       		EQU	00008h
BANK0_START     		EQU	00060h
BANK0_END       		EQU	000FFh
BANK1_START     		EQU	00100h
BANK1_END       		EQU	001FFh
BANK2_START     		EQU	00200h
BANK2_END       		EQU	002FFh
BANK3_START     		EQU	00300h
BANK3_END       		EQU	003FFh
BANK4_START     		EQU	00400h
BANK4_END       		EQU	004FFh
BANK5_START     		EQU	00500h
BANK5_END       		EQU	005FFh
BANK6_START     		EQU	00600h
BANK6_END       		EQU	006FFh
BANK7_START     		EQU	00700h
BANK7_END       		EQU	007FFh
BANKA_START     		EQU	00000h
BANKA_END       		EQU	0005Fh

FLAGS           		EQU	RAM_START + 000h
GOP             		EQU	RAM_START + 001h
R4              		EQU	RAM_START + 002h
R5              		EQU	RAM_START + 004h
R6              		EQU	RAM_START + 006h
R7              		EQU	RAM_START + 008h
R8              		EQU	RAM_START + 00Ah
INT_Flags       		EQU	RAM_START + 00Ch
RM1             		EQU	RAM_START + 00Dh
RM2             		EQU	RAM_START + 00Eh
RR1             		EQU	RAM_START + 00Fh
RR2             		EQU	RAM_START + 010h
RS1             		EQU	RAM_START + 011h
RS2             		EQU	RAM_START + 012h
wsave           		EQU	RAM_START + 013h
RetAddrH        		EQU	RAM_START + 014h
RetAddrL        		EQU	RAM_START + 017h
R0              		EQU	RAM_START + 01Ah
R1              		EQU	RAM_START + 01Eh
R2              		EQU	RAM_START + 022h
R3              		EQU	RAM_START + 026h
T1              		EQU	RAM_START + 02Ah
T2              		EQU	RAM_START + 02Eh
PB01            		EQU	RAM_START + 032h
PB02            		EQU	RAM_START + 033h
_BezTastera      		EQU	RAM_START + 034h
_KMinuta         		EQU	RAM_START + 036h
_PMinuta         		EQU	RAM_START + 038h
_TMinuta         		EQU	RAM_START + 03Ah
_DECmin          		EQU	RAM_START + 03Ch
_DECsat          		EQU	RAM_START + 03Dh
_DECSec          		EQU	RAM_START + 03Eh
_DutyCount       		EQU	RAM_START + 03Fh
_DveTacke        		EQU	RAM_START + 040h
_EPROM           		EQU	RAM_START + 041h
_i               		EQU	RAM_START + 042h
_Kanal           		EQU	RAM_START + 043h
_Kursor          		EQU	RAM_START + 044h
_Meni            		EQU	RAM_START + 045h
_minut           		EQU	RAM_START + 046h
_MinutKraj       		EQU	RAM_START + 047h
_MinutPocetak    		EQU	RAM_START + 048h
_NoviMinut       		EQU	RAM_START + 049h
_NovostanjeRTC   		EQU	RAM_START + 04Ah
_osvetljenje     		EQU	RAM_START + 04Bh
_osvetljenjeOdrzavanje		EQU	RAM_START + 04Ch
_OsvKraj         		EQU	RAM_START + 04Dh
_OsvPocetak      		EQU	RAM_START + 04Eh
_Pali            		EQU	RAM_START + 04Fh
_RTCDate         		EQU	RAM_START + 050h
_RTCDay          		EQU	RAM_START + 051h
_RTCHour         		EQU	RAM_START + 052h
_RTCMin          		EQU	RAM_START + 053h
_RTCMonth        		EQU	RAM_START + 054h
_RTCSec          		EQU	RAM_START + 055h
_RTCYear         		EQU	RAM_START + 056h
_sat             		EQU	RAM_START + 057h
_SatKraj         		EQU	RAM_START + 058h
_SatPocetak      		EQU	RAM_START + 059h
_StaraV1         		EQU	RAM_START + 05Ah
_StaraV2         		EQU	RAM_START + 05Bh
_StaraV3         		EQU	RAM_START + 05Ch
_StaraV4         		EQU	RAM_START + 05Dh
_StarostanjeRTC  		EQU	RAM_START + 05Eh
_Svitanje        		EQU	RAM_START + 05Fh
fsave0H         		EQU	RAM_START + 060h
fsave0L         		EQU	RAM_START + 062h
fsave1H         		EQU	RAM_START + 064h
fsave1L         		EQU	RAM_START + 066h
fsave2H         		EQU	RAM_START + 068h
fsave2L         		EQU	RAM_START + 06Ah
bsave           		EQU	RAM_START + 06Ch
psaveH          		EQU	RAM_START + 06Dh
psaveL          		EQU	RAM_START + 06Eh
psaveUH         		EQU	RAM_START + 06Fh
psaveUL         		EQU	RAM_START + 070h
ssave           		EQU	RAM_START + 071h
_x               		EQU	RAM_START + 072h
_DutyVars        		EQU	RAM_START + 073h
_STKanal1        		EQU	RAM_START + 077h
_STKanal2        		EQU	RAM_START + 07Bh
_STKanal3        		EQU	RAM_START + 07Fh
_STKanal4        		EQU	RAM_START + 083h
_Displej         		EQU	RAM_START + 087h
_Prijem          		EQU	RAM_START + 08Ch
_Memorija        		EQU	RAM_START + 091h
_Kanal1          		EQU	_DutyVars
_Kanal2          		EQU	_DutyVars + 001h
_Kanal3          		EQU	_DutyVars + 002h
_Kanal4          		EQU	_DutyVars + 003h
_RKanal1         		EQU	_DutyVars
_RKanal2         		EQU	_DutyVars + 001h
_RKanal3         		EQU	_DutyVars + 002h
_RKanal4         		EQU	_DutyVars + 003h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTC
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISC
#define _Serviced_H      	_INT_Flags??0
#define _Serviced_L      	_INT_Flags??1
#define _InHPint         	_INT_Flags??2
#define _NoPriority      	_INT_Flags??3
#define _TMR1ON          	_T1CON??0
#define _BCKLIGHT        	_PORTB??6
#define _TLEFT           	_PORTC??4
#define _TRIGHT          	_PORTC??6
#define _TDOWN           	_PORTC??5
#define _TUP             	_PORTC??7
#define _ODRZAVANJE      	_PORTC??0
#define _SDA             	_PORTA??1
#define _SCL             	_PORTA??0
#define _NovoStanjeDesno 	 PB01, 000h
#define _StaroStanjeDesno	 PB01, 005h
#define _NovoStanjeLevo  	 PB01, 003h
#define _StaroStanjeLevo 	 PB02, 000h
#define _NovoStanjeGore  	 PB01, 002h
#define _StaroStanjeGore 	 PB01, 007h
#define _NovoStanjeDole  	 PB01, 001h
#define _StaroStanjeDole 	 PB01, 006h
#define _OdrzavanjeUkljuceno	 PB01, 004h
#define _INT_Flags??0    	 INT_Flags, 000h
#define _INT_Flags??1    	 INT_Flags, 001h
#define _INT_Flags??2    	 INT_Flags, 002h
#define _INT_Flags??3    	 INT_Flags, 003h
#define _T1CON??0        	 T1CON, 000h
#define _PORTB??6        	 PORTB, 006h
#define _PORTC??4        	 PORTC, 004h
#define _PORTC??6        	 PORTC, 006h
#define _PORTC??5        	 PORTC, 005h
#define _PORTC??7        	 PORTC, 007h
#define _PORTC??0        	 PORTC, 000h
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??0        	 PORTA, 000h
#define _UCFG??3         	 UCFG, 003h

; Constants.
_USBMEMORYADDRESS		EQU	00400h
_RTC             		EQU	000D0h
_SecReg          		EQU	00000h
	INCLUDE	"DANERV~1.MAC"
	INCLUDE	"C:\PBP2.6\PBPPI18L.LIB"


	ASM?

        __CONFIG    _CONFIG1L, _PLLDIV_1_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L
        __CONFIG    _CONFIG1H, _FOSC_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H
        __CONFIG    _CONFIG2L, _PWRT_ON_2L & _BOR_ON_2L & _BORV_3_2L & _VREGEN_ON_2L
        __CONFIG    _CONFIG2H, _WDT_ON_2H
        __CONFIG    _CONFIG3H, _CCP2MX_ON_3H & _PBADEN_OFF_3H & _LPT1OSC_OFF_3H & _MCLRE_OFF_3H
        __CONFIG    _CONFIG4L, _STVREN_ON_4L & _LVP_OFF_4L & _XINST_OFF_4L
        __CONFIG    _CONFIG5L, _CP1_ON_5L & _CP0_ON_5L
        __CONFIG    _CONFIG5H, _CPB_ON_5H & _CPD_ON_5H


	ENDASM?

	DDISABLE?	
	MOVE?CB	000h, INT_Flags
	GOTO?L	_OVER_DT_INTS_18

	ASM?

;____ Check for PBPL (PBP ver. 2.50 and above only)__________________________
PBPLongs_Used = 0
  if (R1 - R0 == 4)
PBPLongs_Used = 1
;    messg PBPL Used = 1
  endif

  nolist
;____ DEFINE available interrupt sources_____________________________________

  #define INT_INT   INTCON, INT0IF  ;-- INT External, 16F compatible
  #define INT0_INT  INTCON, INT0IF  ;-- INT0 External 
  #define INT1_INT  INTCON3,INT1IF  ;-- INT1 External 
  #define INT2_INT  INTCON3,INT2IF  ;-- INT2 External 
  #define INT3_INT  INTCON3,INT3IF  ;-- INT3 External 
  #define RBC_INT   INTCON, RBIF    ;-- RB Port Change 
  #define TMR0_INT  INTCON, TMR0IF  ;-- TMR0 Overflow  18F
  #define TMR1_INT  PIR1, TMR1IF    ;-- TMR1 Overflow 
  #define TMR2_INT  PIR1, TMR2IF    ;-- TMR2 to PR2 Match 
  #define TMR3_INT  PIR2, TMR3IF    ;-- TMR3 Overflow 
  #define TMR4_INT  PIR3, TMR4IF    ;-- TMR4 Overflow 
  #define TX_INT    PIR1, TXIF      ;-- USART Transmit 
  #define TX1_INT   PIR1, TX1IF     ;-- USART1 Transmit 
  #define TX2_INT   PIR3, TX2IF     ;-- USART2 Transmit 
  #define RX_INT    PIR1, RCIF      ;-- USART Receive 
  #define RX1_INT   PIR1, RC1IF     ;-- USART1 Receive 
  #define RX2_INT   PIR3, RC2IF     ;-- USART2 Receive 
  #define CMP_INT   PIR2, CMIF      ;-- Comparator 
  #define EE_INT    PIR2, EEIF      ;-- EEPROM/FLASH Write Operation 
  #define BUS_INT   PIR2, BCLIF     ;-- Bus Collision 
  #define LVD_INT   PIR2, LVDIF     ;-- Low Voltage Detect 
  #define HLVD_INT  PIR2, HLVDIF    ;-- High/Low Voltage Detect 
  #define PSP_INT   PIR1, PSPIF     ;-- Parallel Slave Port Read/Write 
  #define AD_INT    PIR1, ADIF      ;-- A/D Converter 
  #define SSP_INT   PIR1, SSPIF     ;-- Master Synchronous Serial Port 
  #define CCP1_INT  PIR1, CCP1IF    ;-- CCP1 
  #define CCP2_INT  PIR2, CCP2IF    ;-- CCP2 
  #define CCP3_INT  PIR3, CCP3IF    ;-- CCP3 
  #define CCP4_INT  PIR3, CCP4IF    ;-- CCP4 
  #define CCP5_INT  PIR3, CCP5IF    ;-- CCP5 
  #define OSC_INT   PIR2, OSCFIF    ;-- Oscillator Fail 

; -- Added for ver. 3.2 --
  #define SPP_INT   PIR1, SPPIF     ;-- Streaming Parallel Port Read/Write
  #define BUS1_INT  PIR2, BCL1IF    ;-- Bus 1 Collision 
  #define BUS2_INT  PIR3, BCL2IF    ;-- Bus 2 Collision
  #define ECCP1_INT PIR2, ECCP1IF   ;-- ECCP1
  #define LCD_INT   PIR3, LCDIF     ;-- LCD Driver
  #define PMP_INT   PIR1, PMPIF     ;-- Parallel Master Port
  #define SSP1_INT  PIR1, SSP1IF    ;-- Synchronous Serial Port 1
  #define SSP2_INT  PIR3, SSP2IF    ;-- Synchronous Serial Port 2
  #define TMR5_INT  PIR3, TMR5IF    ;-- Timer 5
  #define PT_INT    PIR3, PTIF      ;-- PWM Time Base
  #define IC1IF_INT  PIR3, IC1IF    ;-- Motion Feedback
  #define IC2QEIF_INT  PIR3, IC2QEIF  ;-- Motion Feedback
  #define IC3DRIF_INT  PIR3, IC3DRIF  ;-- Motion Feedback

;_____ Comparators __________________________________________________________
  #define CMP0_INT  PIR1, CMP0IF    ;-- Comparator 0 - 1230/1330 only

CMPIFREG = PIR2                     ;-- Comparator 1
CMPIEREG = PIE2
CMPIPREG = IPR2
    ifdef C1IF                      ;     18F24K20  18F25K20  18F26K20
CM1IFBIT = C1IF                     ;     18F44K20  18F45K20  18F46K20
    endif
    ifdef CM1IF
CM1IFBIT = CM1IF                    ;     several J PICs
    endif
    ifdef CMP1IF
CMPIFREG = PIR1                     ;     1230/1330 only
CM1IFBIT = CMP1IF
CMPIEREG = PIE1
CMPIPREG = IPR1
    endif

    ifdef CM1IFBIT
       #define CMP1_INT  CMPIFREG, CM1IFBIT     
    endif

    ifdef C2IF                      ;-- Comparator 2
CM2IFBIT = C2IF                     ;     18F24K20  18F25K20  18F26K20
    endif                           ;     18F44K20  18F45K20  18F46K20
    ifdef CM2IF
CM2IFBIT = CM2IF                    ;     several J PICs
    endif    
    ifdef CMP2IF
CM2IFBIT = CMP2IF                   ;     1230/1330 only
    endif    

    ifdef CM2IFBIT
      #define CMP2_INT  CMPIFREG, CM2IFBIT     
    endif

;_____ USB Module ___________________________________________________________

  #define USB_INT       PIR2, USBIF   ;-- USB Interrupt (funnel)
  #define USB_ACTV_INT  UIR,  ACTVIF  ;-- Bus Activity Detect 
  #define USB_ERR_INT   UIR,  UERRIF  ;-- USB Error Condition INT (funnel)
  #define USB_RST_INT   UIR,  URSTIF  ;-- USB Reset 
  #define USB_IDLE_INT  UIR,  IDLEIF  ;-- Idle Detect 
  #define USB_STALL_INT UIR,  STALLIF ;-- A STALL Handshake 
  #define USB_TRN_INT   UIR,  TRNIF   ;-- Transaction Complete 
  #define USB_SOF_INT   UIR,  SOFIF   ;-- START-OF-FRAME Token 

; -- USB Error Flags --
  #define USB_BTO_INT   UEIR, BTOEF   ;-- Bus Turnaround Time-out Error
  #define USB_BTS_INT   UEIR, BTSEF   ;-- Bit Stuff Error
  #define USB_CRC16_INT UEIR, CRC16EF ;-- CRC16 Failure
  #define USB_CRC5_INT  UEIR, CRC5EF  ;-- CRC5 Host Error
  #define USB_DFN8_INT  UEIR, DFN8EF  ;-- Data Field Size Error
  #define USB_PID_INT   UEIR, PIDEF   ;-- PID Check Failure
   
;_____ Ethernet Module ______________________________________________________
  #define ETH_INT       PIR2, ETHIF   ;-- Ethernet Module
  #define ETH_DMA_INT    EIR, DMAIF   ;-- DMA Interrupt
  #define ETH_LINK_INT   EIR, LINKIF  ;-- Link Status Change
  #define ETH_PKT_INT    EIR, PKTIF   ;-- Receive Packet Pending
  #define ETH_RXER_INT   EIR, RXERIF  ;-- Receive Error
  #define ETH_TXER_INT   EIR, TXERIF  ;-- Transmit Error
  #define ETH_TX_INT     EIR, TXIF    ;-- Transmit

;_____ CAN Module ___________________________________________________________
  #define CAN_ERR_INT    PIR3, ERRIF    ;-- CAN bus Error
  #define CAN_IRX_INT    PIR3, IRXIF    ;-- Invalid Received Message
  #define CAN_RXB0_INT   PIR3, RXB0IF   ;-* Receive Buffer 0      Mode 0
  #define CAN_FIFOWM_INT PIR3, FIFOWMIF ;-- FIFO Watermark        Mode 1, 2
  #define CAN_RXB1_INT   PIR3, RXB1IF   ;-* Receive Buffer 1      Mode 0
  #define CAN_RXBn_INT   PIR3, RXBnIF   ;-- Any Receive Buffer    Mode 1, 2
  #define CAN_TXB0_INT   PIR3, TXB0IF   ;-- Transmit Buffer 0
  #define CAN_TXB1_INT   PIR3, TXB1IF   ;-- Transmit Buffer 1
  #define CAN_TXB2_INT   PIR3, TXB2IF   ;-* Transmit Buffer 2     Mode 0
  #define CAN_TXBn_INT   PIR3, TXBnIF   ;-- Any Transmit Buffer   Mode 1, 2
  #define CAN_WAKE_INT   PIR3, WAKIF    ;-- CAN bus Activity Wake-up


	ENDASM?


	ASM?

; -- macro --
INT_Source  macro  IFR, IFB, IER, IEB, IPR, IPB
    if (IflagReg == IFR) && (IflagBit == IFB)  
  list  
INT_Flag_Reg = IFR
INT_Flag_Bit = IFB
INT_Enable_Reg = IER
INT_Enable_Bit = IEB
INT_Priority_Reg = IPR
INT_Priority_Bit = IPB
Found = 1
    endif
  nolist  
    endm 


	ENDASM?


	ASM?

;____________________________________________________________________________
GetIntInfo  macro  IflagReg, IflagBit
  nolist
INT_Flag_Reg = -1
INT_Flag_Bit = -1
INT_Enable_Reg = -1
INT_Enable_Bit = -1
  ifdef  IPR1
INT_Priority_Reg = -1
INT_Priority_Bit = -1
  endif
Found = 0

  ifdef INT0IF  ;----{ INT0 External Interrupt }----------[INTCON, INT0IF]---
      INT_Source  INTCON,INT0IF, INTCON,INT0IE, -1, -1
  endif
  ifdef INT1IF  ;----{ INT1 External Interrupt }---------[INTCON3, INT1IF]---
      INT_Source  INTCON3,INT1IF, INTCON3,INT1IE, INTCON3,INT1IP
  endif
  ifdef INT2IF  ;----{ INT2 External Interrupt }---------[INTCON3, INT2IF]---
      INT_Source  INTCON3,INT2IF, INTCON3,INT2IE, INTCON3,INT2IP
  endif
  ifdef INT3IF  ;----{ INT3 External Interrupt }---------[INTCON3, INT3IF]---
      INT_Source  INTCON3,INT3IF, INTCON3,INT3IE, INTCON2,INT3IP
  endif
  ifdef RBIF    ;----{ RB Port Change Interrupt }-----------[INTCON, RBIF]---
      INT_Source  INTCON,RBIF, INTCON, RBIE,INTCON2,RBIP
  endif
  ifdef TMR0IF  ;----{ TMR0 Overflow Interrupt }----------[INTCON, TMR0IF]---
      INT_Source  INTCON,TMR0IF, INTCON,TMR0IE, INTCON2,TMR0IP
  endif
  ifdef TMR1IF  ;----{ TMR1 Overflow Interrupt }------------[PIR1, TMR1IF]---
      INT_Source  PIR1,TMR1IF, PIE1,TMR1IE, IPR1,TMR1IP
  endif
  ifdef TMR2IF  ;----{ TMR2 to PR2 Match Interrupt }--------[PIR1, TMR2IF]---
      INT_Source  PIR1,TMR2IF, PIE1,TMR2IE, IPR1,TMR2IP
  endif
  ifdef TMR3IF  ;----{ TMR3 Overflow Interrupt }------------[PIR2, TMR3IF]---
      INT_Source  PIR2,TMR3IF, PIE2,TMR3IE, IPR2,TMR3IP
  endif
  ifdef TMR4IF  ;----{ TMR4 Overflow Interrupt }------------[PIR3, TMR4IF]---
      INT_Source  PIR3,TMR4IF, PIE3,TMR4IE, IPR3,TMR4IP
  endif
  ifndef TX1IF  ;----{ USART Transmit Interrupt }-------------[PIR1, TXIF]---
      ifdef TXIF
          INT_Source  PIR1,TXIF, PIE1,TXIE, IPR1,TXIP
      endif
  endif
  ifdef TX1IF   ;----{ USART1 Transmit Interrupt }-----------[PIR1, TX1IF]---
      INT_Source  PIR1,TX1IF, PIE1,TX1IE, IPR1,TX1IP
  endif
  ifdef TX2IF   ;----{ USART2 Transmit Interrupt }-----------[PIR3, TX2IF]---
      INT_Source  PIR3,TX2IF, PIE3,TX2IE, IPR3,TX2IP
  endif
  ifndef RC1IF  ;----{ USART Receive Interrupt }---------------[PIR1 RCIF]---  
    ifdef RCIF
        INT_Source  PIR1,RCIF, PIE1,RCIE, IPR1,RCIP
    endif
  endif
  ifdef RC1IF   ;----{ USART1 Receive Interrupt }------------[PIR1, RC1IF]---
      INT_Source  PIR1,RC1IF, PIE1,RC1IE, IPR1,RC1IP
  endif
  ifdef RC2IF   ;----{ USART2 Receive Interrupt }------------[PIR3, RC2IF]---
      INT_Source  PIR3,RC2IF, PIE3,RC2IE, IPR3,RC2IP
  endif
  ifdef CMIF    ;----{ Comparator Interrupt }-----------------[PIR2, CMIF]---
      INT_Source  PIR2,CMIF, PIE2,CMIE, IPR2,CMIP
  endif
  ifdef EEIF    ;----{ EEPROM/FLASH Write Operation Interrupt [PIR2, EEIF]---
      INT_Source  PIR2,EEIF, PIE2,EEIE, IPR2,EEIP
  endif
  ifdef BCLIF   ;----{ Bus Collision Interrupt }-------------[PIR2, BCLIF]---
      INT_Source  PIR2,BCLIF, PIE2,BCLIE, IPR2,BCLIP
  endif
  ifdef LVDIF   ;----{ Low Voltage Detect Interrupt }--------[PIR2, LVDIF]---
      INT_Source  PIR2,LVDIF, PIE2,LVDIE, IPR2,LVDIP
  endif
  ifdef HLVDIF  ;----{ High/Low Voltage Detect Interrupt }--[PIR2, HLVDIF]---
      INT_Source  PIR2,HLVDIF, PIE2,HLVDIE, IPR2,HLVDIP
  endif
  ifdef PSPIF   ;----{ Parallel Slave Port Interrupt }-------[PIR1, PSPIF]---
      INT_Source  PIR1,PSPIF, PIE1,PSPIE, IPR1,PSPIP
  endif
  ifdef ADIF    ;----{ A/D Converter Interrupt }--------------[PIR1, ADIF]---
      INT_Source  PIR1,ADIF, PIE1,ADIE, IPR1,ADIP
  endif
  ifdef SSPIF   ;----{ Synchronous Serial Port Interrupt }---[PIR1, SSPIF]---
      INT_Source  PIR1,SSPIF, PIE1,SSPIE, IPR1,SSPIP
  endif
  ifdef CCP1IF  ;----{ CCP1 Interrupt }---------------------[PIR1, CCP1IF]---
      INT_Source  PIR1,CCP1IF, PIE1,CCP1IE, IPR1,CCP1IP
  endif
  ifdef CCP2IF  ;----{ CCP2 Interrupt Flag }----------------[PIR2, CCP2IF]---
      INT_Source  PIR2,CCP2IF, PIE2,CCP2IE, IPR2,CCP2IP
  endif
  ifdef CCP3IF  ;----{ CCP3 Interrupt Flag }----------------[PIR3, CCP3IF]---
      INT_Source  PIR3,CCP3IF, PIE3,CCP3IE, IPR3,CCP3IP
  endif
  ifdef CCP4IF  ;----{ CCP4 Interrupt Flag }----------------[PIR3, CCP4IF]---
      INT_Source  PIR3,CCP4IF, PIE3,CCP4IE, IPR3,CCP4IP
  endif
  ifdef CCP5IF  ;----{ CCP5 Interrupt Flag }----------------[PIR3, CCP5IF]---
      INT_Source  PIR3,CCP5IF, PIE3,CCP5IE, IPR3,CCP5IP
  endif
  ifdef OSCFIF  ;----{ Osc Fail  Interrupt Flag }-----------[PIR2, OSCFIF]---
      INT_Source  PIR2,OSCFIF, PIE2,OSCFIE, IPR2,OSCFIP
  endif


	ENDASM?


	ASM?

; -- Added for ver. 3.2 --
  ifdef SPPIF   ;----{ Streaming Parallel Port Read/Write }--[PIR1, SPPIF]---
      INT_Source  PIR1,SPPIF, PIE1,SPPIE, IPR1,SPPIP
  endif
  ifdef BCL1IF  ;----{ Bus 1 Collision }--------------------[PIR2, BCL1IF]---
      INT_Source  BUS1_INT, PIE2,BCL1IE, IPR2,BCL1IP
  endif
  ifdef BCL2IF  ;----{ Bus 2 Collision }--------------------[PIR3, BCL2IF]---
      INT_Source  BUS2_INT, PIE3,BCL2IE, IPR3,BCL2IP
  endif
  ifdef CMP0IF  ;----{ Comparator 0 }-----------------------[PIR1, CMP0IF]---
      INT_Source  CMP0_INT, PIE1,CMP0IE, IPR1,CMP0IP
  endif
  ifdef CM1IFBIT  ;--{ Comparator 1 }-----------------------------[varies]---
      INT_Source  CMP1_INT, CMPIEREG,CM1IFBIT, CMPIPREG,CM1IFBIT
  endif
  ifdef CM2IFBIT  ;--{ Comparator 2 }-----------------------------[varies]---
      INT_Source  CMP2_INT, CMPIEREG,CM2IFBIT, CMPIPREG,CM2IFBIT
  endif
  ifdef ECCP1IF  ;---{ ECCP1 }-----------------------------[PIR2, ECCP1IF]---
      INT_Source  ECCP1_INT, PIE2,ECCP1IE, IPR2,ECCP1IP
  endif
  ifdef LCDIF   ;----{ LCD Driver }--------------------------[PIR3, LCDIF]---
      INT_Source  LCD_INT, PIE3,LCDIE, IPR3,LCDIP
  endif
  ifdef PMPIF   ;----{ Parallel Master Port }----------------[PIR1, PMPIF]---
      INT_Source  PMP_INT, PIE1,PMPIE, IPR1,PMPIP
  endif
  ifdef SSP1IF  ;----{ Synchronous Serial Port 1 }----------[PIR1, SSP1IF]---
      INT_Source  SSP1_INT, PIE1,SSP1IE, IPR1,SSP1IP
  endif
  ifdef SSP2IF  ;----{ Synchronous Serial Port 2 }----------[PIR3, SSP2IF]---
      INT_Source  SSP2_INT, PIE3,SSP2IE, IPR3,SSP2IP
  endif
  ifdef TMR5IF  ;----{ Timer 5 }----------------------------[PIR3, TMR5IF]---
      INT_Source  TMR5_INT, PIE3,TMR5IE, IPR3,TMR5IP
  endif
  ifdef PTIF    ;----{ PWM Time Base }------------------------[PIR3, PTIF]---
      INT_Source  PT_INT, PIE3,PTIE, IPR3,PTIP
  endif
  ifdef IC1IF   ;----{ Motion Feedback IC1}------------------[PIR3, IC1IF]---
      INT_Source  IC1IF_INT, PIE3,IC1IE, IPR3,IC1IP
  endif
  ifdef IC2QEIF ;----{ Motion Feedback IC2QE}--------------[PIR3, IC2QEIF]---
      INT_Source  IC2QEIF_INT, PIE3,IC2QEIE, IPR3,IC2QEIP
  endif
  ifdef IC3DRIF ;----{ Motion Feedback IC3DR}--------------[PIR3, IC3DRIF]---
      INT_Source  IC3DRIF_INT, PIE3,IC3DRIE, IPR3,IC3DRIP
  endif
  
;  ifdef   ;----{  }-------------[, ]---
;      INT_Source  , ,, ,
;  endif


	ENDASM?


	ASM?
  ; -- USB sources --
  ifdef USBIF   ;----{ USB  Interrupt funnel }---------------[PIR2, USBIF]---
      INT_Source  PIR2,USBIF, PIE2,USBIE, IPR2,USBIP
          
                ;----{ Bus Activity Detect }-----------------[UIR, ACTVIF]---
      INT_Source  USB_ACTV_INT, UIE,ACTVIE, _NoPriority
  
                ;----{ USB Reset }---------------------------[UIR, URSTIF]---
      INT_Source  USB_RST_INT, UIE,URSTIE, _NoPriority
  
                ;----{ Idle Detect }-------------------------[UIR, IDLEIF]---
      INT_Source  USB_IDLE_INT, UIE,IDLEIE, _NoPriority
  
                ;----{ A STALL Handshake }------------------[UIR, STALLIF]---
      INT_Source  USB_STALL_INT, UIE,STALLIE, _NoPriority
  
                ;----{ Transaction Complete }-----------------[UIR, TRNIF]---
      INT_Source  USB_TRN_INT, UIE,TRNIE, _NoPriority
  
                ;----{ START-OF-FRAME Token }-----------------[UIR, SOFIF]---
      INT_Source  USB_SOF_INT, UIE,SOFIE, _NoPriority
  
; -- USB Error Flags --
                ;----{ USB Error Condition Int funnel }------[UIR, UERRIF]---
      INT_Source  USB_ERR_INT, UIE,UERRIE, _NoPriority
   
                ;----{ Bus Turnaround Time-out Error }-------[UEIR, BTOEF]---
      INT_Source  USB_BTO_INT, UEIE,BTOEE, _NoPriority
   
                ;----{ Bit Stuff Error }---------------------[UEIR, BTSEF]---
      INT_Source  USB_BTS_INT, UEIE,BTSEE, _NoPriority
   
                ;--{ CRC16 Failure }-----------------------[UEIR, CRC16EF]---
      INT_Source  USB_CRC16_INT, UEIE,CRC16EE, _NoPriority
   
                ;---{ CRC5 Host Error }---------------------[UEIR, CRC5EF]---
      INT_Source  USB_CRC5_INT, UEIE,CRC5EE, _NoPriority
   
                ;---{ Data Field Size Error }---------------[UEIR, DFN8EF]---
      INT_Source  USB_DFN8_INT, UEIE,DFN8EE, _NoPriority
   
                ;----{ PID Check Failure }-------------------[UEIR, PIDEF]---
      INT_Source  USB_PID_INT, UEIE,PIDEE, _NoPriority
  endif


	ENDASM?


	ASM?
  ; -- Ethernet sources --
  ifdef ETHIF  ;----{ Ethernet Module }----------------------[PIR2, ETHIF]---
      INT_Source  ETH_INT, PIE2,ETHIE, IPR2,ETHIP
   
               ;----{ DMA Interrupt }-------------------------[EIR, DMAIF]---
      INT_Source  ETH_DMA_INT, EIE,DMAIE, _NoPriority
   
               ;----{ Link Status Change }-------------------[EIR, LINKIF]---
      INT_Source  ETH_LINK_INT, EIE,LINKIE, _NoPriority
   
               ;----{ Receive Packet Pending }----------------[EIR, PKTIF]---
      INT_Source  ETH_PKT_INT, EIE,PKTIE, _NoPriority
   
               ;----{ Receive Error }------------------------[EIR, RXERIF]---
      INT_Source  ETH_RXER_INT, EIE,RXERIE, _NoPriority
              
               ;----{ Transmit Error }-----------------------[EIR, TXERIF]---
      INT_Source  ETH_TXER_INT, EIE,TXERIE, _NoPriority
   
               ;----{ Transmit }-------------------------------[EIR, TXIF]---
      INT_Source  ETH_TX_INT, EIE,TXIE, _NoPriority
  endif


	ENDASM?


	ASM?
  ; -- CAN Module --
  ifdef WAKIF  
               ;----{ CAN bus Error }------------------------[PIR3, ERRIF]---
      INT_Source  CAN_ERR_INT, PIE3,ERRIE, IPR3,ERRIP
  
               ;----{ Invalid Received Message }-------------[PIR3, IRXIF]---
      INT_Source  CAN_IRX_INT, PIE3,IRXIE, IPR3,IRXIP
  
               ;----{ Receive Buffer 0 }------Mode 0--------[PIR3, RXB0IF]---
      INT_Source  CAN_RXB0_INT, PIE3,RXB0IE, IPR3,RXB0IP
               ;----{ FIFO Watermark }--------Mode 1, 2---[PIR3, FIFOWMIF]---
      INT_Source  CAN_FIFOWM_INT, PIE3,FIFOWMIE, IPR3,FIFOWMIP
  
               ;----{ Receive Buffer 1 }------Mode 0--------[PIR3, RXB1IF]---
      INT_Source  CAN_RXB1_INT, PIE3,RXB1IE, IPR3,RXB1IP
               ;----{ Any Receive Buffer }----Mode 1, 2-----[PIR3, RXBnIF]---
      INT_Source  CAN_RXBn_INT, PIE3,RXBnIE, IPR3,RXBnIP
  
               ;----{ Transmit Buffer 0 }-------------------[PIR3, TXB0IF]---
      INT_Source  CAN_TXB0_INT, PIE3,TXB0IE, IPR3,TXB0IP
  
               ;----{ Transmit Buffer 1 }-------------------[PIR3, TXB1IF]---
      INT_Source  CAN_TXB1_INT, PIE3,TXB1IE, IPR3,TXB1IP
  
               ;----{ Transmit Buffer 2 }-----Mode 0=-------[PIR3, TXB2IF]---
      INT_Source  CAN_TXB2_INT, PIE3,TXB2IE, IPR3,TXB2IP
               ;----{ Any Transmit Buffer }---Mode 1, 2-----[PIR3, TXBnIF]---
      INT_Source  CAN_TXBn_INT, PIE3,TXBnIE, IPR3,TXBnIP
  
               ;----{ CAN bus Activity Wake-up }-------------[PIR3, WAKIF]---
      INT_Source  CAN_WAKE_INT, PIE3,WAKIE, IPR3,WAKIP
  endif
  
  list
    endm
  list  


	ENDASM?


	ASM?

    ifndef  USE_LOWPRIORITY
INT_ENTRY_L
        retfie
    else
        if (USE_LOWPRIORITY != 1)
INT_ENTRY_L
            retfie
        endif
    endif        


	ENDASM?


	ASM?

asm = 0    ; Assembly language Interrupts
ASM = 0
Asm = 0
pbp = 1    ; Basic language interrupts
PBP = 1
Pbp = 1
YES = 1
yes = 1
Yes = 1
NO = 0
no = 0
No = 0
H equ 'H'  ; High Priority
h equ 'H'
L equ 'L'  ; Low Priority
l equ 'L'

  nolist
  
;_____________________________________________________________________________
SaveFSR  macro  F, Pr
  list
    if (F >= 0) && (F <= 2)
        if (Pr == H) || (Pr == L)
            movff    FSR#v(F)L, fsave#v(F)Pr
            movff    FSR#v(F)H, fsave#v(F)Pr + 1
          nolist
        else
            ERROR "SaveFSR - Invalid Priority"
        endif
    else
        ERROR "SaveFSR - Invalid FSR number"
    endif
    list
  endm


	ENDASM?


	ASM?

RestFSR  macro  F, Pr
  list
    if (F >= 0) && (F <= 2)
        if (Pr == H) || (Pr == L)
            movff    fsave#v(F)Pr , FSR#v(F)L
            movff    fsave#v(F)Pr + 1 , FSR#v(F)H 
          nolist
        else
            ERROR "RestFSR - Invalid Priority"
        endif
    else
        ERROR "RestFSR - Invalid FSR number"
    endif
    list
  endm


	ENDASM?


	ASM?

INT_FINISH_H   macro
  endm


	ENDASM?


	ASM?

INT_CREATE_H  macro
  local OverCREATE
    goto OverCREATE
Priority = H    
INT_ENTRY_H  
    movff   PCLATU, psaveUH
    movff   PCLATH, psaveH
    SaveFSR  0, H
    SaveFSR  1, H
    SaveFSR  2, H
    bsf      _InHPint, 0
List_Start_H
    bcf      _Serviced_H, 0         ; Clear Serviced flag
    clrf  BSR
PREV_BANK = 0
    ifdef INT_LIST_H
        INT_LIST_H                  ; Expand the users list of HP INT handlers
    else
        ifdef INT_LIST
            INT_LIST                ; Expand the 16F Compatible List
        else
            error "INT_CREATE_H - INT_LIST or INT_LIST_H not found"
        endif
    endif
    btfsc    _Serviced_H,0          ; if anything was serviced
    goto     List_Start_H           ; go around, and check again

    ifdef ReEnterHPused             ; was ReEnterPBP-18.bas included
        GetAddress21  INT_EXIT_H, RetAddrH
        L?GOTO   _RestorePBP_H      ; Restore PBP system Vars
    endif

INT_EXIT_H
PREV_BANK = 0
    bcf      _InHPint, 0
    RestFSR  0, H                   ; Restore FSR0, if it was saved?
    RestFSR  1, H                   ; Restore FSR1, if it was saved?
    RestFSR  2, H                   ; Restore FSR2, if it was saved?
    movff    psaveH, PCLATH
    movff    psaveUH, PCLATU
    retfie    FAST                  ; Return from Interrupt
OverCREATE
    bsf   INTCON,GIE, 0             ; Enable High Priority Interrupts
    bsf   INTCON,PEIE, 0            ; Enable Peripheral Interrupts
  endm

;---[Stay compatible with the 14-bit version]---------------------------------
INT_CREATE  macro
    INT_CREATE_H
  endm


	ENDASM?


	ASM?

INT_CREATE_L  macro
  local OverCREATE
    goto OverCREATE
    ifdef USE_LOWPRIORITY
        if (USE_LOWPRIORITY != 1)
       error "'DEFINE USE_LOWPRIORITY 1' required for Low Priority Interrupts"
        endif
    else
       error "'DEFINE USE_LOWPRIORITY 1' required for Low Priority Interrupts"
    endif
Priority = L
INT_ENTRY_L  
    movff   WREG, wsave             ; Wreg
    movff   STATUS, ssave           ; STATUS
    movff   BSR, bsave              ; BSR
    movff   PCLATU, psaveUL
    movff   PCLATH, psaveL
    SaveFSR  0, L                   ; FSR0
    SaveFSR  1, L                   ; FSR1
    SaveFSR  2, L                   ; FSR2
    bcf      _InHPint, 0    
List_Start_L
  clrf  BSR
PREV_BANK = 0
    bcf      _Serviced_L, 0
    ifdef INT_LIST_L
        INT_LIST_L                  ; Expand the users list of HP INT handlers
    else
        error "INT_CREATE_L - INT_LIST_L not defined, can not create"
    endif
    btfsc    _Serviced_L, 0         ; if anything was serviced
    goto     List_Start_L           ; go around, and check again

    ifdef ReEnterLPused             ; was ReEnterPBP-18LP.bas included
        GetAddress21  INT_EXIT_L, RetAddrL
        L?GOTO   _RestorePBP_L      ; Restore PBP system Vars
    endif

INT_EXIT_L
PREV_BANK = 0
    RestFSR  0, L                   ; Restore saved vars
    RestFSR  1, L
    RestFSR  2, L                
    movff   psaveUL, PCLATU
    movff   psaveL, PCLATH
    movff   bsave, BSR              ; BSR
    movff   wsave, WREG             ; WREG
    movff   ssave, STATUS           ; STATUS
    retfie                          ; Return from Interrupt
OverCREATE
    bsf   RCON,IPEN, 0              ; Enable Interrupt Priorities
    bsf   INTCON,GIEL, 0            ; Enable Low Priority Interrupts
  endm


	ENDASM?


	ASM?

;---[Returns the Address of a Label as a Word]--(under 64K)------------------
GetAddress macro Label, Wout
    CHK?RP Wout
    movlw low Label          ; get low byte
    movwf Wout
    movlw High Label         ; get high byte
    movwf Wout + 1
    endm

;---[Returns the Address of a Label as a 3 byte array]---(under/over 64k)-----
GetAddress21 macro Label, Aout
    CHK?RP Aout
    movlw low Label          ; get low byte
    movwf Aout
    movlw high Label         ; get high byte
    movwf Aout + 1
    movlw upper Label        ; get upper byte
    movwf Aout + 2
    endm

;---[find correct bank for a PBP BIT variable]-------------------------------
CHKRP?T  macro reg, bit
        CHK?RP  reg
    endm
    


;---[find Assigned Priority for specified INT Source]------------------------
INT_Count = 0

FindIntPriority  macro IntFlagReg, IntFlagBit
  local LoopCount
    nolist
Pfound = 0
LoopCount = 1
      while LoopCount <= INT_Count
          if  (IntFlagReg == PrList#v(LoopCount)R)
             if (IntFlagBit == PrList#v(LoopCount)B)
  list
Priority =  PrList#v(LoopCount)Priority
Pfound = 1
             endif
          endif
LoopCount += 1
      endw
  endm  


	ENDASM?


	ASM?


;---[Add an Interrupt Source to the user's list of INT Handlers]--------------
INT_Handler  macro  IntFlagReg, IntFlagBit, Label, Type, Reset
  list
    local AfterSave, AfterUser, NoInt
INT_Count += 1
PrList#v(INT_Count)R = IntFlagReg
PrList#v(INT_Count)B = IntFlagBit
PrList#v(INT_Count)Priority = Priority
        GetIntInfo   IntFlagReg, IntFlagBit
        if (Found == YES)
            btfss    INT_Enable_Reg, INT_Enable_Bit, 0  ; if INT is enabled
            goto   NoInt
            btfss    INT_Flag_Reg, INT_Flag_Bit, 0      ; and the Flag set?
            goto     NoInt
            if (Priority == H)
                bsf      _Serviced_H, 0
            else
                bsf      _Serviced_L, 0
            endif
            ifdef NO_CLRWDT
                if  (NO_CLRWDT != 1)
                    CLRWDT
                endif
            else
                CLRWDT
            endif
                
            if (Type == PBP)                         ; If INT handler is PBP
              if (Priority == H)
                ifdef ReEnterHPused
                    GetAddress21  AfterSave, RetAddrH  
                    L?GOTO  _SavePBP_H        ; Save PBP system Vars in HP INT
                else
    error "ReEnterPBP-18 must be INCLUDEd to use High Priority PBP interrupts"
                endif
              else ; Priority = L
                ifdef ReEnterLPused
                    GetAddress21  AfterSave, RetAddrL  
                    L?GOTO  _SavePBP_L        ; Save PBP system Vars in LP INT
                else
   error "ReEnterPBP-18LP must be INCLUDEd to use Low Priority PBP interrupts"
                endif
              endif
            endif
AfterSave
PREV_BANK = 0
            if (Priority == H)
                  GetAddress21  AfterUser, RetAddrH  
            else ; Priority = L
                  GetAddress21  AfterUser, RetAddrL
            endif  
            L?GOTO   Label                        ; goto the users INT handler
                    
AfterUser
PREV_BANK = 0
            if (Reset == YES)                      ; reset flag (if specified)
                bcf      INT_Flag_Reg, INT_Flag_Bit, 0 
            endif
        else
            error Interrupt Source (IntFlagReg,IntFlagBit) not found
        endif
NoInt
    clrf  BSR
PREV_BANK = 0
    endm


	ENDASM?


	ASM?

;---[Returns from a "goto" subroutine]--(21-bit RetAddr? must be set first)---
INT_RETURN  macro
  local Ret2LP, Ret2HP
      btfsc   _InHPint, 0
      goto    Ret2HP
Ret2LP
      movff   RetAddrL + 2, PCLATU  ; Load PC buffers with return address
      movff   RetAddrL + 1, PCLATH
      movf    RetAddrL, W, 0
    clrf  BSR                    ; Set to BANK0 before returning
PREV_BANK = 0                    ; Tell PBP about the BANK change
      movwf   PCL, 0             ; Go back to where we were
      
Ret2HP       
      movff   RetAddrH + 2, PCLATU ; Load PC buffers with return address
      movff   RetAddrH + 1, PCLATH
      movf    RetAddrH, W, 0
    clrf  BSR                    ; Set to BANK0 before returning
PREV_BANK = 0                    ; Tell PBP about the BANK change
      movwf   PCL, 0             ; Go back to where we were
    endm    
    
;---[Enable an interrupt source]----------------------------------------------
INT_ENABLE  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          FindIntPriority  IntFlagReg, IntFlagBit
          if (Pfound == 1)
              if (INT_Priority_Reg != -1)
                  if (Priority == H)
                      bsf  INT_Priority_Reg, INT_Priority_Bit, 0
                  else
                      if (Priority == L)
                          bcf  INT_Priority_Reg, INT_Priority_Bit, 0
                      else
                          error "INT_ENABLE - Invalid Priority Specified"
                      endif
                  endif
              else
                  if (Priority == L)
                      error "INT0_INT can NOT be assigned to Low Priority"
                  endif
              endif
          else
              error "INT_ENABLE - Priority State Not Found"
          endif
;          bcf     INT_Flag_Reg, INT_Flag_Bit, 0        ; clear the flag first 
          bsf     INT_Enable_Reg, INT_Enable_Bit, 0    ; enable the INT source  
      else
          error  "INT_ENABLE - Interrupt Source not found!"
      endif
    endm    

;---[Disable an interrupt source]---------------------------------------------
INT_DISABLE  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          bcf     INT_Enable_Reg, INT_Enable_Bit, 0   ; disable the INT source  
      else
          error "INT_DISABLE - Interrupt Source not found!"
      endif
    endm    

;---[Clear an interrupt Flag]-------------------------------------------------
INT_CLEAR  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          bcf     INT_Flag_Reg, INT_Flag_Bit, 0       ; clear the INT flag
      else
          error "INT_CLEAR -  Interrupt Source not found!"
      endif
    endm



	ENDASM?


	ASM?

Save_TBLPTR = 0

    ifdef SIN_USED
Save_TBLPTR = 1
    endif
    ifdef DTMFOUT_USED
Save_TBLPTR = 1
    endif
    ifdef SERDELAY_USED
Save_TBLPTR = 1
    endif
    ifdef CONVBIT_USED
Save_TBLPTR = 1
    endif
    ifdef ERASECODE_USED
Save_TBLPTR = 1
    endif
    ifdef READCODE_USED
Save_TBLPTR = 1
    endif
    ifdef WRITECODE_USED
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLW
Save_TBLPTR = 1
    endif
    ifdef LOOK2_USED 
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLW
Save_TBLPTR = 1
    endif


	ENDASM?


	LABEL?L	_OVER_DT_INTS_18	
	DENABLE?	

	ASM?

    ifndef T1CON
        error "This chip doesn't have a Timer1 - Can't use SPWM"
    endif
    ifndef SPWM_FREQ
SPWM_FREQ = 60                            
    endif
    ifndef SPWM_RES
SPWM_RES = 100                            
    else
        if (SPWM_RES > 256)
           error Maximum "SPWM_RES" is 256
        endif
    endif    
FOSC4 = OSC * 1000000 / 4
IntFREQ = SPWM_FREQ * SPWM_RES
TimerCount = FOSC4 / IntFREQ
TimerReload = 65543 - TimerCount

;_____________________________________________________________________________
SPWM_PIN  macro Port, Pin, DutyVar
  local NotIdle, SPWMdone
  
  if (InitializingSPWM == 1)
    MOVE?CT 0, Port, Pin                  ; Make Port.Pin LOW
    ifdef BSR  ; if chip is 16-bit        ; Set TRIS to output
        MOVE?CT 0, (Port + 12h), Pin
    else       ; chip is 14-bit
        MOVE?CT 0, (Port + 80h), Pin    
    endif
  else
    MOVE?BA   DutyVar              ; Copy DutyVar to W reg
    btfss     STATUS, Z            ; if DutyVar = 0
    goto      NotIdle              ; No, Skip Idle
    MOVE?CT   0, Port, Pin         ; YES, then idle Low
    goto      SPWMdone

NotIdle
    MOVE?BA   _DutyCount           ; Copy DutyCount to W reg
    CHK?RP    DutyVar              ; Select proper bank
    subwf     DutyVar, W           ; Subtract DutyVar from DutyCount
    MOVE?TT   STATUS,C, Port,Pin   ; Copy carry bit to Port/Pin

SPWMdone
    endif
  endm


	ENDASM?


	ASM?
Timer1 = TMR1L                   ; map timer registers to a word variable

	ENDASM?


	ASM?

SPWM_INIT  macro  PinList
  local OverSPWMhandler
InitializingSPWM = 1
    PinList                       ; Set SPWM pins to Output LOW
InitializingSPWM = 0
    MOVE?CT  1, T1CON, TMR1ON     ;  1     start timer
    goto OverSPWMhandler
    
SPWMhandler
;end asm
;   T1CON.0 = 0 ; stop timer
;   write 0, TMR1L
;   write 1, TMR1H
;   stop
;asm
StartAdd = $
    ;---Reload Timer1------
    MOVE?CT  0, T1CON, TMR1ON     ;  1     stop timer
    MOVLW    LOW(TimerReload)     ;  1     Add TimerReload to the 
    ADDWF    TMR1L,F              ;  1     value in Timer1
    BTFSC    STATUS,C             ;  1/2
    INCF     TMR1H,F              ;  1
    MOVLW    HIGH(TimerReload)    ;  1
    ADDWF    TMR1H,F              ;  1
    MOVE?CT  1, T1CON, TMR1ON     ;  1     start timer

    PinList                       ;  Execute the PWM for each Pin in the List

    CHK?RP   _DutyCount
    incf     _DutyCount, F
    movlw    low (SPWM_RES)
    subwf    _DutyCount, W
  if (SPWM_RES < 256)  
    btfsc    STATUS, Z
    clrf     _DutyCount
  endif
EndAdd = $     
  INT_RETURN
OverSPWMhandler
  VerifySPWM
  endm


	ENDASM?


	ASM?

VerifySPWM macro                             ; verify valid SPWM configuration
    ifdef BSR                                ; for 18F's
Entry_Delay = 37                             ;   instructions to Enter INT
Exit_Delay  = 16                             ;   instructions to Exit INT
InstCount = (EndAdd - StartAdd) / 2          ;   instructions used by handler
    else                                     ; for 14-bit core's
Entry_Delay = 32                             ;   instructions to Enter INT
Exit_Delay  = 11                             ;   instructions to Exit INT
InstCount = (EndAdd - StartAdd)              ;   instructions used by handler
    endif
InstCount = InstCount + Entry_Delay + Exit_Delay
BetweenInts = TimerCount - InstCount
  if (BetweenInts < 2)
      error Current SPWM configuration is INVALID - NO time left between interrupts
      messg 1 - Try using a "SPWM_FREQ" lower than SPWM_FREQ Hz
      messg 2 - OR, Try using a "SPWM_RES" lower than SPWM_RES
      messg 3 - OR, Use a faster "OSC" than OSC Mhz
      messg 4 - OR, Use fewer SPWM channels
  endif
  endm


	ENDASM?

	OUTPUT?T	_BCKLIGHT
	INPUT?T	_TLEFT
	INPUT?T	_TRIGHT
	INPUT?T	_TUP
	INPUT?T	_TDOWN
	INPUT?T	_ODRZAVANJE
	MOVE?CB	00Fh, ADCON1
	MOVE?CB	007h, CMCON
	MOVE?CT	001h, _UCFG??3
	MOVE?CB	000h, PORTA
	MOVE?CB	000h, PORTB
	MOVE?CB	000h, PORTC
	MOVE?CB	003h, TRISA

	ASM?


SPWM_LIST  macro                   
     SPWM_PIN  LATA, 2, _Kanal1  
     SPWM_PIN  LATA, 3, _Kanal2 
     SPWM_PIN  LATA, 4, _Kanal3 
     SPWM_PIN  LATA, 5, _Kanal4 
  endm
  SPWM_INIT  SPWM_LIST              


	ENDASM?


	ASM?

INT_LIST  macro   
        INT_Handler   TMR1_INT,  SPWMhandler,  ASM,  yes
    endm
    INT_CREATE                    


	ENDASM?


	ASM?
 INT_ENABLE  TMR1_INT              

	ENDASM?

	CLEAR?	
	MOVE?CT	001h, _StaroStanjeDesno
	MOVE?CT	001h, _StaroStanjeLevo
	MOVE?CT	001h, _StaroStanjeGore
	MOVE?CT	001h, _StaroStanjeDole
	MOVE?CB	000h, _Meni

	LABEL?L	_Init	
	GOSUB?L	_ProveriPrviPut
	GOSUB?L	_EEpromMemorija
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	020h
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Ch
	LCDOUT?C	020h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	043h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	054h
	LCDOUT?C	052h
	LCDOUT?C	04Fh
	LCDOUT?C	04Ch
	LCDOUT?C	020h
	LCDOUT?C	046h
	LCDOUT?C	057h
	LCDOUT?C	03Ah
	LCDOUT?C	031h
	LCDOUT?C	02Eh
	LCDOUT?C	031h
	MOVE?CT	001h, _BCKLIGHT
	MOVE?CB	000h, _Kanal1
	MOVE?CB	000h, _Kanal2
	MOVE?CB	000h, _Kanal3
	MOVE?CB	000h, _Kanal4
	MOVE?CB	001h, _Kursor
	PAUSE?C	003E8h
	READADDRESS?C	003h
	READ?B	_x
	CMPNE?BCL	_x, 001h, L00001
	GOTO?L	_Main
	GOTO?L	L00002
	LABEL?L	L00001	
	CMPNE?BCL	_x, 002h, L00003
	MOVE?CB	001h, _Kursor
	READADDRESS?C	050h
	READ?B	_RKanal1
	READADDRESS?C	051h
	READ?B	_RKanal2
	READADDRESS?C	052h
	READ?B	_RKanal3
	READADDRESS?C	053h
	READ?B	_RKanal4
	GOTO?L	_RucnoPodesavanje
	LABEL?L	L00002	
	LABEL?L	L00003	

	LABEL?L	_Main	
	MOVE?TT	_TRIGHT, _NovoStanjeDesno
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	GOSUB?L	_uzmivreme
	ADD?BCB	_x, 001h, _x
	CMPGE?WCL	_BezTastera, 00BB8h, L00005
	ADD?WCW	_BezTastera, 001h, _BezTastera
	MOVE?CT	001h, _BCKLIGHT
	GOTO?L	L00006
	LABEL?L	L00005	
	MOVE?CT	000h, _BCKLIGHT
	LABEL?L	L00006	
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00007
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00009
	ADD?BCB	_i, 001h, _i
	CMPLT?BCL	_i, 001h, L00011
	MOVE?CB	000h, _i
	MOVE?CB	000h, _Meni
	GOTO?L	_menu
	LABEL?L	L00011	
	LABEL?L	L00009	
	LABEL?L	L00007	
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00013
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00015
	ADD?BCB	_i, 001h, _i
	CMPLT?BCL	_i, 001h, L00017
	MOVE?CB	000h, _i
	MOVE?CB	044h, _Meni
	GOTO?L	_menu
	LABEL?L	L00017	
	LABEL?L	L00015	
	LABEL?L	L00013	
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00019
	MOVE?CW	000h, _BezTastera
	LABEL?L	L00019	
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00021
	MOVE?CW	000h, _BezTastera
	LABEL?L	L00021	
	CMPNE?TCL	_ODRZAVANJE, 000h, L00023
	MOVE?BB	_Kanal1, _StaraV1
	MOVE?BB	_Kanal2, _StaraV2
	MOVE?BB	_Kanal3, _StaraV3
	MOVE?BB	_Kanal4, _StaraV4
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje
	GOTO?L	_OdrzavanjePrekidac
	LABEL?L	L00023	
	CMPGE?BCL	_x, 05Ah, L00025
	MOVE?CB	020h, _DveTacke
	LABEL?L	L00025	
	CMPGT?BCB	_x, 05Ah, T1
	CMPLT?BCB	_x, 0B4h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00027
	MOVE?CB	03Ah, _DveTacke
	LABEL?L	L00027	
	CMPLE?BCL	_x, 0B4h, L00029
	MOVE?CB	000h, _x
	LABEL?L	L00029	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	020h
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Ch
	LCDOUT?C	020h
	LCDOUT?C	045h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DECsat
	LCDOUTDEC?	
	LCDOUT?B	_DveTacke
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DECmin
	LCDOUTDEC?	
	LCDOUT?B	_DveTacke
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DECSec
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOSUB?L	_Kreni
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	GOTO?L	_Main

	LABEL?L	_RucnoPodesavanje	
	MOVE?CT	001h, _OdrzavanjeUkljuceno
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TRIGHT, _NovoStanjeDesno
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPGE?WCL	_BezTastera, 00BB8h, L00031
	ADD?WCW	_BezTastera, 001h, _BezTastera
	MOVE?CT	001h, _BCKLIGHT
	GOTO?L	L00032
	LABEL?L	L00031	
	MOVE?CT	000h, _BCKLIGHT
	LABEL?L	L00032	
	CMPNE?TCL	_ODRZAVANJE, 000h, L00033
	MOVE?BB	_Kanal1, _StaraV1
	MOVE?BB	_Kanal2, _StaraV2
	MOVE?BB	_Kanal3, _StaraV3
	MOVE?BB	_Kanal4, _StaraV4
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje
	GOTO?L	_OdrzavanjePrekidac
	LABEL?L	L00033	
	CMPNE?BCL	_Kursor, 001h, L00035
	MOVE?CB	03Eh, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	MOVE?CB	020h, _Displej + 00003h
	MOVE?CB	020h, _Displej + 00004h
	LABEL?L	L00035	
	CMPNE?BCL	_Kursor, 002h, L00037
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	03Eh, _Displej + 00002h
	MOVE?CB	020h, _Displej + 00003h
	MOVE?CB	020h, _Displej + 00004h
	LABEL?L	L00037	
	CMPNE?BCL	_Kursor, 003h, L00039
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	MOVE?CB	03Eh, _Displej + 00003h
	MOVE?CB	020h, _Displej + 00004h
	LABEL?L	L00039	
	CMPNE?BCL	_Kursor, 004h, L00041
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	MOVE?CB	020h, _Displej + 00003h
	MOVE?CB	03Eh, _Displej + 00004h
	LABEL?L	L00041	
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00043
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00045
	ADD?BCB	_Kursor, 001h, _Kursor
	CMPLE?BCL	_Kursor, 004h, L00047
	MOVE?CB	001h, _Kursor
	LABEL?L	L00047	
	LABEL?L	L00045	
	LABEL?L	L00043	
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00049
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00051
	ADD?BCB	_i, 001h, _i
	CMPLT?BCL	_i, 002h, L00053
	MOVE?CB	000h, _i
	MOVE?CB	000h, _Meni
	MOVE?CT	000h, _OdrzavanjeUkljuceno
	GOTO?L	_menu
	LABEL?L	L00053	
	LABEL?L	L00051	
	LABEL?L	L00049	
	CMPNE?TCL	_TUP, 000h, L00055
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00057
	CMPNE?BCL	_Kursor, 001h, L00059
	ADD?BCB	_RKanal1, 001h, _RKanal1
	CMPLE?BCL	_RKanal1, 064h, L00061
	MOVE?CB	064h, _RKanal1
	LABEL?L	L00061	
	WRITEADDRESS?C	050h
	WRITE?B	_RKanal1
	LABEL?L	L00059	
	CMPNE?BCL	_Kursor, 002h, L00063
	ADD?BCB	_RKanal2, 001h, _RKanal2
	CMPLE?BCL	_RKanal2, 064h, L00065
	MOVE?CB	064h, _RKanal2
	LABEL?L	L00065	
	WRITEADDRESS?C	051h
	WRITE?B	_RKanal2
	LABEL?L	L00063	
	CMPNE?BCL	_Kursor, 003h, L00067
	ADD?BCB	_RKanal3, 001h, _RKanal3
	CMPLE?BCL	_RKanal3, 064h, L00069
	MOVE?CB	064h, _RKanal3
	LABEL?L	L00069	
	WRITEADDRESS?C	052h
	WRITE?B	_RKanal3
	LABEL?L	L00067	
	CMPNE?BCL	_Kursor, 004h, L00071
	ADD?BCB	_RKanal4, 001h, _RKanal4
	CMPLE?BCL	_RKanal4, 064h, L00073
	MOVE?CB	064h, _RKanal4
	LABEL?L	L00073	
	WRITEADDRESS?C	053h
	WRITE?B	_RKanal4
	LABEL?L	L00071	
	PAUSE?C	03Ch
	LABEL?L	L00057	
	LABEL?L	L00055	
	CMPNE?TCL	_TDOWN, 000h, L00075
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00077
	CMPNE?BCL	_Kursor, 001h, L00079
	SUB?BCB	_RKanal1, 001h, _RKanal1
	CMPLT?BCB	_RKanal1, 001h, T1
	CMPGT?BCB	_RKanal1, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00081
	MOVE?CB	000h, _RKanal1
	LABEL?L	L00081	
	WRITEADDRESS?C	050h
	WRITE?B	_RKanal1
	LABEL?L	L00079	
	CMPNE?BCL	_Kursor, 002h, L00083
	SUB?BCB	_RKanal2, 001h, _RKanal2
	CMPLT?BCB	_RKanal2, 001h, T1
	CMPGT?BCB	_RKanal2, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00085
	MOVE?CB	000h, _RKanal2
	LABEL?L	L00085	
	WRITEADDRESS?C	051h
	WRITE?B	_RKanal2
	LABEL?L	L00083	
	CMPNE?BCL	_Kursor, 003h, L00087
	SUB?BCB	_RKanal3, 001h, _RKanal3
	CMPLT?BCB	_RKanal3, 001h, T1
	CMPGT?BCB	_RKanal3, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00089
	MOVE?CB	000h, _RKanal3
	LABEL?L	L00089	
	WRITEADDRESS?C	052h
	WRITE?B	_RKanal3
	LABEL?L	L00087	
	CMPNE?BCL	_Kursor, 004h, L00091
	SUB?BCB	_RKanal4, 001h, _RKanal4
	CMPLT?BCB	_RKanal4, 001h, T1
	CMPGT?BCB	_RKanal4, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00093
	MOVE?CB	000h, _RKanal4
	LABEL?L	L00093	
	WRITEADDRESS?C	053h
	WRITE?B	_RKanal4
	LABEL?L	L00091	
	PAUSE?C	03Ch
	LABEL?L	L00077	
	LABEL?L	L00075	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?B	_Displej + 00001h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_RKanal1
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?B	_Displej + 00002h
	LCDOUT?C	032h
	LCDOUT?C	023h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_RKanal2
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?B	_Displej + 00003h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_RKanal3
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?B	_Displej + 00004h
	LCDOUT?C	034h
	LCDOUT?C	023h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_RKanal4
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?C	020h
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	GOTO?L	_RucnoPodesavanje

	LABEL?L	_Kreni	
	MOVE?BB	_DECmin, _NovostanjeRTC
	MUL?BCN	_DECsat, 03Ch, T1
	ADD?NBW	T1, _DECmin, _TMinuta
	CMPEQ?BBL	_NovostanjeRTC, _StarostanjeRTC, L00095
	MOVE?CB	001h, _NoviMinut
	GOTO?L	L00096
	LABEL?L	L00095	
	MOVE?CB	000h, _NoviMinut
	LABEL?L	L00096	
	MOVE?BB	_Memorija + 00008h, _SatPocetak
	MOVE?BB	_Memorija + 00009h, _MinutPocetak
	MOVE?BB	_Memorija + 0000Ah, _OsvPocetak
	MOVE?BB	_Memorija + 0000Ch, _SatKraj
	MOVE?BB	_Memorija + 0000Dh, _MinutKraj
	MOVE?BB	_Memorija + 0000Eh, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00097
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00099
	MUL?BCN	_OsvPocetak, 064h, _STKanal1
	GOTO?L	L00100
	LABEL?L	L00099	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00101
	MUL?BCN	_OsvKraj, 064h, _STKanal1
	GOTO?L	L00102
	LABEL?L	L00101	
	CMPNE?BCL	_NoviMinut, 001h, L00103
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal1, T2, _STKanal1
	LABEL?L	L00103	
	LABEL?L	L00102	
	LABEL?L	L00100	
	LABEL?L	L00097	
	MOVE?BB	_Memorija + 00010h, _SatPocetak
	MOVE?BB	_Memorija + 00011h, _MinutPocetak
	MOVE?BB	_Memorija + 00012h, _OsvPocetak
	MOVE?BB	_Memorija + 00014h, _SatKraj
	MOVE?BB	_Memorija + 00015h, _MinutKraj
	MOVE?BB	_Memorija + 00016h, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00105
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00107
	MUL?BCN	_OsvPocetak, 064h, _STKanal1
	GOTO?L	L00108
	LABEL?L	L00107	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00109
	MUL?BCN	_OsvKraj, 064h, _STKanal1
	GOTO?L	L00110
	LABEL?L	L00109	
	CMPNE?BCL	_NoviMinut, 001h, L00111
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal1, T2, _STKanal1
	LABEL?L	L00111	
	LABEL?L	L00110	
	LABEL?L	L00108	
	LABEL?L	L00105	
	MOVE?BB	_Memorija + 00018h, _SatPocetak
	MOVE?BB	_Memorija + 00019h, _MinutPocetak
	MOVE?BB	_Memorija + 0001Ah, _OsvPocetak
	MOVE?BB	_Memorija + 0001Ch, _SatKraj
	MOVE?BB	_Memorija + 0001Dh, _MinutKraj
	MOVE?BB	_Memorija + 0001Eh, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00113
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00115
	MUL?BCN	_OsvPocetak, 064h, _STKanal2
	GOTO?L	L00116
	LABEL?L	L00115	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00117
	MUL?BCN	_OsvKraj, 064h, _STKanal2
	GOTO?L	L00118
	LABEL?L	L00117	
	CMPNE?BCL	_NoviMinut, 001h, L00119
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal2, T2, _STKanal2
	LABEL?L	L00119	
	LABEL?L	L00118	
	LABEL?L	L00116	
	LABEL?L	L00113	
	MOVE?BB	_Memorija + 00020h, _SatPocetak
	MOVE?BB	_Memorija + 00021h, _MinutPocetak
	MOVE?BB	_Memorija + 00022h, _OsvPocetak
	MOVE?BB	_Memorija + 00024h, _SatKraj
	MOVE?BB	_Memorija + 00025h, _MinutKraj
	MOVE?BB	_Memorija + 00026h, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00121
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00123
	MOVE?BB	_OsvPocetak, _Kanal2
	MUL?BCN	_OsvPocetak, 064h, _STKanal2
	GOTO?L	L00124
	LABEL?L	L00123	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00125
	MUL?BCN	_OsvKraj, 064h, _STKanal2
	GOTO?L	L00126
	LABEL?L	L00125	
	CMPNE?BCL	_NoviMinut, 001h, L00127
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal2, T2, _STKanal2
	LABEL?L	L00127	
	LABEL?L	L00126	
	LABEL?L	L00124	
	LABEL?L	L00121	
	MOVE?BB	_Memorija + 00028h, _SatPocetak
	MOVE?BB	_Memorija + 00029h, _MinutPocetak
	MOVE?BB	_Memorija + 0002Ah, _OsvPocetak
	MOVE?BB	_Memorija + 0002Ch, _SatKraj
	MOVE?BB	_Memorija + 0002Dh, _MinutKraj
	MOVE?BB	_Memorija + 0002Eh, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00129
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00131
	MUL?BCN	_OsvPocetak, 064h, _STKanal3
	GOTO?L	L00132
	LABEL?L	L00131	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00133
	MUL?BCN	_OsvKraj, 064h, _STKanal3
	GOTO?L	L00134
	LABEL?L	L00133	
	CMPNE?BCL	_NoviMinut, 001h, L00135
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal3, T2, _STKanal3
	LABEL?L	L00135	
	LABEL?L	L00134	
	LABEL?L	L00132	
	LABEL?L	L00129	
	MOVE?BB	_Memorija + 00030h, _SatPocetak
	MOVE?BB	_Memorija + 00031h, _MinutPocetak
	MOVE?BB	_Memorija + 00032h, _OsvPocetak
	MOVE?BB	_Memorija + 00034h, _SatKraj
	MOVE?BB	_Memorija + 00035h, _MinutKraj
	MOVE?BB	_Memorija + 00036h, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00137
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00139
	MUL?BCN	_OsvPocetak, 064h, _STKanal3
	GOTO?L	L00140
	LABEL?L	L00139	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00141
	MUL?BCN	_OsvKraj, 064h, _STKanal3
	GOTO?L	L00142
	LABEL?L	L00141	
	CMPNE?BCL	_NoviMinut, 001h, L00143
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal3, T2, _STKanal3
	LABEL?L	L00143	
	LABEL?L	L00142	
	LABEL?L	L00140	
	LABEL?L	L00137	
	MOVE?BB	_Memorija + 00038h, _SatPocetak
	MOVE?BB	_Memorija + 00039h, _MinutPocetak
	MOVE?BB	_Memorija + 0003Ah, _OsvPocetak
	MOVE?BB	_Memorija + 0003Ch, _SatKraj
	MOVE?BB	_Memorija + 0003Dh, _MinutKraj
	MOVE?BB	_Memorija + 0003Eh, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00145
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00147
	MUL?BCN	_OsvPocetak, 064h, _STKanal4
	GOTO?L	L00148
	LABEL?L	L00147	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00149
	MUL?BCN	_OsvKraj, 064h, _STKanal4
	GOTO?L	L00150
	LABEL?L	L00149	
	CMPNE?BCL	_NoviMinut, 001h, L00151
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal4, T2, _STKanal4
	LABEL?L	L00151	
	LABEL?L	L00150	
	LABEL?L	L00148	
	LABEL?L	L00145	
	MOVE?BB	_Memorija + 00040h, _SatPocetak
	MOVE?BB	_Memorija + 00041h, _MinutPocetak
	MOVE?BB	_Memorija + 00042h, _OsvPocetak
	MOVE?BB	_Memorija + 00044h, _SatKraj
	MOVE?BB	_Memorija + 00045h, _MinutKraj
	MOVE?BB	_Memorija + 00046h, _OsvKraj
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00153
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00155
	MUL?BCN	_OsvPocetak, 064h, _STKanal4
	GOTO?L	L00156
	LABEL?L	L00155	
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00157
	MUL?BCN	_OsvKraj, 064h, _STKanal4
	GOTO?L	L00158
	LABEL?L	L00157	
	CMPNE?BCL	_NoviMinut, 001h, L00159
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal4, T2, _STKanal4
	LABEL?L	L00159	
	LABEL?L	L00158	
	LABEL?L	L00156	
	LABEL?L	L00153	
	CMPNE?TCL	_OdrzavanjeUkljuceno, 000h, L00161
	DIV?NCB	_STKanal1, 064h, _Kanal1
	DIV?NCB	_STKanal2, 064h, _Kanal2
	DIV?NCB	_STKanal3, 064h, _Kanal3
	DIV?NCB	_STKanal4, 064h, _Kanal4
	LABEL?L	L00161	
	MOVE?BB	_NovostanjeRTC, _StarostanjeRTC
	RETURN?	

	LABEL?L	_menu	
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?TT	_TRIGHT, _NovoStanjeDesno
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPGE?WCL	_BezTastera, 00BB8h, L00163
	ADD?WCW	_BezTastera, 001h, _BezTastera
	MOVE?CT	001h, _BCKLIGHT
	GOTO?L	L00164
	LABEL?L	L00163	
	MOVE?CT	000h, _BCKLIGHT
	LABEL?L	L00164	
	CMPNE?TCL	_ODRZAVANJE, 000h, L00165
	MOVE?BB	_Kanal1, _StaraV1
	MOVE?BB	_Kanal2, _StaraV2
	MOVE?BB	_Kanal3, _StaraV3
	MOVE?BB	_Kanal4, _StaraV4
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje
	GOTO?L	_OdrzavanjePrekidac
	LABEL?L	L00165	
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00167
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00169
	ADD?BCB	_i, 001h, _i
	CMPLE?BCL	_i, 001h, L00171
	ADD?BCB	_Meni, 004h, _Meni
	CMPLE?BCL	_Meni, 048h, L00173
	MOVE?CB	000h, _Meni
	LABEL?L	L00173	
	LABEL?L	L00171	
	LABEL?L	L00169	
	LABEL?L	L00167	
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00175
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00177
	ADD?BCB	_i, 001h, _i
	CMPLE?BCL	_i, 001h, L00179
	CMPNE?BCL	_Meni, 000h, L00181
	MOVE?CB	048h, _Meni
	GOTO?L	L00182
	LABEL?L	L00181	
	SUB?BCB	_Meni, 004h, _Meni
	LABEL?L	L00182	
	LABEL?L	L00179	
	LABEL?L	L00177	
	LABEL?L	L00175	
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00183
	MOVE?CW	000h, _BezTastera
	CMPNE?TCL	_BCKLIGHT, 001h, L00185
	ADD?BCB	_i, 001h, _i
	CMPLE?BCL	_i, 001h, L00187
	MOVE?CB	048h, _Meni
	MOVE?CB	000h, _i
	LABEL?L	L00187	
	LABEL?L	L00185	
	LABEL?L	L00183	
	CMPNE?BCL	_Meni, 000h, L00191
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	074h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	04Dh
	LCDOUT?C	06Fh
	LCDOUT?C	064h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00191	
	CMPNE?BCL	_Meni, 004h, L00192
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	074h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	04Dh
	LCDOUT?C	06Fh
	LCDOUT?C	064h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00192	
	CMPNE?BCL	_Meni, 008h, L00193
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00193	
	CMPNE?BCL	_Meni, 00Ch, L00194
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00194	
	CMPNE?BCL	_Meni, 010h, L00195
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00195	
	CMPNE?BCL	_Meni, 014h, L00196
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00196	
	CMPNE?BCL	_Meni, 018h, L00197
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00197	
	CMPNE?BCL	_Meni, 01Ch, L00198
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00198	
	CMPNE?BCL	_Meni, 020h, L00199
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00199	
	CMPNE?BCL	_Meni, 024h, L00200
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00200	
	CMPNE?BCL	_Meni, 028h, L00201
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00201	
	CMPNE?BCL	_Meni, 02Ch, L00202
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00202	
	CMPNE?BCL	_Meni, 030h, L00203
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00203	
	CMPNE?BCL	_Meni, 034h, L00204
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00204	
	CMPNE?BCL	_Meni, 038h, L00205
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00205	
	CMPNE?BCL	_Meni, 03Ch, L00206
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00206	
	CMPNE?BCL	_Meni, 040h, L00207
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00207	
	CMPNE?BCL	_Meni, 044h, L00208
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00190
	LABEL?L	L00208	
	CMPNE?BCL	_Meni, 048h, L00209
	READADDRESS?C	003h
	READ?B	_x
	CMPNE?BCL	_x, 001h, L00210
	GOTO?L	_Main
	LABEL?L	L00210	
	CMPNE?BCL	_x, 002h, L00212
	MOVE?CB	000h, _i
	MOVE?CB	001h, _Kursor
	READADDRESS?C	050h
	READ?B	_RKanal1
	READADDRESS?C	051h
	READ?B	_RKanal2
	READADDRESS?C	052h
	READ?B	_RKanal3
	READADDRESS?C	053h
	READ?B	_RKanal4
	GOTO?L	_RucnoPodesavanje
	LABEL?L	L00212	
	LABEL?L	L00209	
	LABEL?L	L00190	
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00214
	MOVE?CB	000h, _x
	MOVE?CW	000h, _BezTastera
	MOVE?BB	_Kanal1, _StaraV1
	MOVE?BB	_Kanal2, _StaraV2
	MOVE?BB	_Kanal3, _StaraV3
	MOVE?BB	_Kanal4, _StaraV4
	CMPNE?TCL	_BCKLIGHT, 001h, L00216
	MOVE?CB	000h, _Kursor
	CMPNE?BCL	_Meni, 000h, L00218
	MOVE?CT	000h, _T1CON??0
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	0D0h
	I2CWRITE?C	000h
	I2CREAD?B	_RTCSec
	I2CREAD?B	_RTCMin
	I2CREAD?B	_RTCHour
	I2CREAD?B	_RTCDay
	I2CREAD?B	_RTCDate
	I2CREAD?B	_RTCMonth
	I2CREADS?B	_RTCYear
	MOVE?CT	001h, _T1CON??0
	AND?BCN	_RTCMin, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCMin, 00Fh, T2
	ADD?NNB	T1, T2, _DECmin
	AND?BCN	_RTCHour, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCHour, 00Fh, T2
	ADD?NNB	T1, T2, _DECsat
	AND?BCN	_RTCSec, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCSec, 00Fh, T2
	ADD?NNB	T1, T2, _DECSec
	GOTO?L	_RTCvreme
	LABEL?L	L00218	
	CMPNE?BCL	_Meni, 004h, L00220
	READADDRESS?C	003h
	READ?B	_x
	GOTO?L	_RezimRada
	LABEL?L	L00220	
	CMPNE?BCL	_Meni, 008h, L00222
	MOVE?CB	001h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	MOVE?CB	000h, _Kanal1
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00222	
	CMPNE?BCL	_Meni, 00Ch, L00224
	MOVE?CB	001h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00224	
	CMPNE?BCL	_Meni, 010h, L00226
	MOVE?CB	001h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00226	
	CMPNE?BCL	_Meni, 014h, L00228
	MOVE?CB	001h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00228	
	CMPNE?BCL	_Meni, 018h, L00230
	MOVE?CB	002h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00230	
	CMPNE?BCL	_Meni, 01Ch, L00232
	MOVE?CB	002h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00232	
	CMPNE?BCL	_Meni, 020h, L00234
	MOVE?CB	002h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00234	
	CMPNE?BCL	_Meni, 024h, L00236
	MOVE?CB	002h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00236	
	CMPNE?BCL	_Meni, 028h, L00238
	MOVE?CB	003h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00238	
	CMPNE?BCL	_Meni, 02Ch, L00240
	MOVE?CB	003h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00240	
	CMPNE?BCL	_Meni, 030h, L00242
	MOVE?CB	003h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00242	
	CMPNE?BCL	_Meni, 034h, L00244
	MOVE?CB	003h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00244	
	CMPNE?BCL	_Meni, 038h, L00246
	MOVE?CB	004h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00246	
	CMPNE?BCL	_Meni, 03Ch, L00248
	MOVE?CB	004h, _Kanal
	MOVE?CB	001h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00248	
	CMPNE?BCL	_Meni, 040h, L00250
	MOVE?CB	004h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	001h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00250	
	CMPNE?BCL	_Meni, 044h, L00252
	MOVE?CB	004h, _Kanal
	MOVE?CB	000h, _Svitanje
	MOVE?CB	000h, _Pali
	MOVE?CB	001h, _Kursor
	READADDRESS?B	_Meni
	READ?B	_sat
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje
	GOTO?L	_podesavanje
	LABEL?L	L00252	
	LABEL?L	L00216	
	LABEL?L	L00214	
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	GOTO?L	_menu

	LABEL?L	_RezimRada	
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?CT	001h, _BCKLIGHT
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00254
	MOVE?CB	000h, _i
	GOTO?L	_menu
	LABEL?L	L00254	
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00256
	CMPNE?BCL	_x, 001h, L00258
	MOVE?CB	002h, _x
	GOTO?L	L00259
	LABEL?L	L00258	
	MOVE?CB	001h, _x
	LABEL?L	L00259	
	WRITEADDRESS?C	003h
	WRITE?B	_x
	LABEL?L	L00256	
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00260
	CMPNE?BCL	_x, 001h, L00262
	MOVE?CB	002h, _x
	GOTO?L	L00263
	LABEL?L	L00262	
	MOVE?CB	001h, _x
	LABEL?L	L00263	
	WRITEADDRESS?C	003h
	WRITE?B	_x
	LABEL?L	L00260	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	04Dh
	LCDOUT?C	06Fh
	LCDOUT?C	064h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	CMPNE?BCL	_x, 001h, L00264
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	041h
	LCDOUT?C	075h
	LCDOUT?C	074h
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	061h
	LCDOUT?C	074h
	LCDOUT?C	069h
	LCDOUT?C	063h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00264	
	CMPNE?BCL	_x, 002h, L00266
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	04Dh
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	075h
	LCDOUT?C	061h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00266	
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	GOTO?L	_RezimRada

	LABEL?L	_podesavanje	
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?CT	001h, _BCKLIGHT
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TRIGHT, _NovoStanjeDesno
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00268
	ADD?BCB	_x, 001h, _x
	CMPLE?BCL	_x, 001h, L00270
	MOVE?CB	000h, _x
	ADD?BCB	_Kursor, 001h, _Kursor
	CMPLE?BCL	_Kursor, 003h, L00272
	MOVE?CB	001h, _Kursor
	LABEL?L	L00272	
	LABEL?L	L00270	
	LABEL?L	L00268	
	CMPNE?BCL	_Kursor, 001h, L00274
	MOVE?CB	03Eh, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	MOVE?CB	020h, _Displej + 00003h
	LABEL?L	L00274	
	CMPNE?BCL	_Kursor, 002h, L00276
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	03Eh, _Displej + 00002h
	MOVE?CB	020h, _Displej + 00003h
	LABEL?L	L00276	
	CMPNE?BCL	_Kursor, 003h, L00278
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	MOVE?CB	03Eh, _Displej + 00003h
	LABEL?L	L00278	
	CMPNE?TCL	_TUP, 000h, L00280
	CMPNE?BCL	_Kursor, 001h, L00282
	ADD?BCB	_sat, 001h, _sat
	CMPLE?BCL	_sat, 017h, L00284
	MOVE?CB	017h, _sat
	LABEL?L	L00284	
	WRITEADDRESS?B	_Meni
	WRITE?B	_sat
	LABEL?L	L00282	
	CMPNE?BCL	_Kursor, 002h, L00286
	ADD?BCB	_minut, 001h, _minut
	CMPLE?BCL	_minut, 03Bh, L00288
	MOVE?CB	03Bh, _minut
	LABEL?L	L00288	
	ADD?BCN	_Meni, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_minut
	LABEL?L	L00286	
	CMPNE?BCL	_Kursor, 003h, L00290
	ADD?BCB	_osvetljenje, 001h, _osvetljenje
	CMPLE?BCL	_osvetljenje, 064h, L00292
	MOVE?CB	064h, _osvetljenje
	LABEL?L	L00292	
	ADD?BCN	_Meni, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_osvetljenje
	LABEL?L	L00290	
	PAUSE?C	03Ch
	LABEL?L	L00280	
	CMPNE?TCL	_TDOWN, 000h, L00294
	CMPNE?BCL	_Kursor, 001h, L00296
	SUB?BCB	_sat, 001h, _sat
	CMPLT?BCB	_sat, 001h, T1
	CMPGT?BCB	_sat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00298
	MOVE?CB	000h, _sat
	LABEL?L	L00298	
	WRITEADDRESS?B	_Meni
	WRITE?B	_sat
	LABEL?L	L00296	
	CMPNE?BCL	_Kursor, 002h, L00300
	SUB?BCB	_minut, 001h, _minut
	CMPLT?BCB	_minut, 001h, T1
	CMPGT?BCB	_minut, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00302
	MOVE?CB	000h, _minut
	LABEL?L	L00302	
	ADD?BCN	_Meni, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_minut
	LABEL?L	L00300	
	CMPNE?BCL	_Kursor, 003h, L00304
	SUB?BCB	_osvetljenje, 001h, _osvetljenje
	CMPLT?BCB	_osvetljenje, 001h, T1
	CMPGT?BCB	_osvetljenje, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00306
	MOVE?CB	000h, _osvetljenje
	LABEL?L	L00306	
	ADD?BCN	_Meni, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_osvetljenje
	LABEL?L	L00304	
	PAUSE?C	03Ch
	LABEL?L	L00294	
	CMPLE?BCL	_sat, 017h, L00308
	MOVE?CB	000h, _sat
	LABEL?L	L00308	
	CMPLE?BCL	_minut, 03Bh, L00310
	MOVE?CB	000h, _minut
	LABEL?L	L00310	
	CMPLE?BCL	_osvetljenje, 064h, L00312
	MOVE?CB	000h, _osvetljenje
	LABEL?L	L00312	
	CMPNE?BCL	_Svitanje, 001h, L00314
	CMPNE?BCL	_Pali, 001h, L00316
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUTD?B	_Kanal
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00317
	LABEL?L	L00316	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUTD?B	_Kanal
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00317	
	GOTO?L	L00315
	LABEL?L	L00314	
	CMPNE?BCL	_Pali, 001h, L00318
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUTD?B	_Kanal
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	GOTO?L	L00319
	LABEL?L	L00318	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUTD?B	_Kanal
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00319	
	LABEL?L	L00315	
	CMPNE?BCL	_Kursor, 003h, L00320
	CMPNE?BCL	_Kanal, 001h, L00322
	MOVE?BB	_osvetljenje, _Kanal1
	MOVE?CB	000h, _Kanal2
	MOVE?CB	000h, _Kanal3
	MOVE?CB	000h, _Kanal4
	LABEL?L	L00322	
	CMPNE?BCL	_Kanal, 002h, L00324
	MOVE?CB	000h, _Kanal1
	MOVE?BB	_osvetljenje, _Kanal2
	MOVE?CB	000h, _Kanal3
	MOVE?CB	000h, _Kanal4
	LABEL?L	L00324	
	CMPNE?BCL	_Kanal, 003h, L00326
	MOVE?CB	000h, _Kanal1
	MOVE?CB	000h, _Kanal2
	MOVE?BB	_osvetljenje, _Kanal3
	MOVE?CB	000h, _Kanal4
	LABEL?L	L00326	
	CMPNE?BCL	_Kanal, 004h, L00328
	MOVE?CB	000h, _Kanal1
	MOVE?CB	000h, _Kanal2
	MOVE?CB	000h, _Kanal3
	MOVE?BB	_osvetljenje, _Kanal4
	LABEL?L	L00328	
	LABEL?L	L00320	
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?B	_Displej + 00001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_sat
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_Displej + 00002h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_minut
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	02Ah
	LCDOUT?C	020h
	LCDOUT?B	_Displej + 00003h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_osvetljenje
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00330
	GOSUB?L	_EEpromMemorija
	MOVE?BB	_StaraV1, _Kanal1
	MOVE?BB	_StaraV2, _Kanal2
	MOVE?BB	_StaraV3, _Kanal3
	MOVE?BB	_StaraV4, _Kanal4
	MOVE?CB	000h, _i
	GOTO?L	_menu
	LABEL?L	L00330	
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	GOTO?L	_podesavanje

	LABEL?L	_RTCvreme	
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?CT	001h, _BCKLIGHT
	MOVE?TT	_TLEFT, _NovoStanjeLevo
	MOVE?TT	_TRIGHT, _NovoStanjeDesno
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00332
	ADD?BCB	_Kursor, 001h, _Kursor
	CMPLE?BCL	_Kursor, 002h, L00334
	MOVE?CB	001h, _Kursor
	LABEL?L	L00334	
	LABEL?L	L00332	
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00336
	DIG?BCN	_DECmin, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DECmin, 000h, T2
	ADD?NNB	T1, T2, _RTCMin
	DIG?BCN	_DECsat, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DECsat, 000h, T2
	ADD?NNB	T1, T2, _RTCHour
	MOVE?CB	000h, _RTCSec
	MOVE?CT	000h, _T1CON??0
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	_SecReg
	I2CWRITE?B	_RTCSec
	I2CWRITE?B	_RTCMin
	I2CWRITE?B	_RTCHour
	I2CWRITE?B	_RTCDay
	I2CWRITE?B	_RTCDate
	I2CWRITE?B	_RTCMonth
	I2CWRITES?B	_RTCYear
	MOVE?CT	001h, _T1CON??0
	PAUSE?C	014h
	MOVE?CB	000h, _i
	GOTO?L	_menu
	LABEL?L	L00336	
	CMPNE?BCL	_Kursor, 001h, L00340
	MOVE?CB	03Eh, _Displej + 00001h
	MOVE?CB	020h, _Displej + 00002h
	GOTO?L	L00339
	LABEL?L	L00340	
	CMPNE?BCL	_Kursor, 002h, L00341
	MOVE?CB	020h, _Displej + 00001h
	MOVE?CB	03Eh, _Displej + 00002h
	LABEL?L	L00341	
	LABEL?L	L00339	
	CMPNE?TCL	_TUP, 000h, L00342
	CMPNE?BCL	_Kursor, 001h, L00344
	ADD?BCB	_DECsat, 001h, _DECsat
	CMPLE?BCL	_DECsat, 017h, L00346
	MOVE?CB	017h, _DECsat
	LABEL?L	L00346	
	PAUSE?C	03Ch
	LABEL?L	L00344	
	CMPNE?BCL	_Kursor, 002h, L00348
	ADD?BCB	_DECmin, 001h, _DECmin
	CMPLE?BCL	_DECmin, 03Bh, L00350
	MOVE?CB	03Bh, _DECmin
	LABEL?L	L00350	
	PAUSE?C	03Ch
	LABEL?L	L00348	
	LABEL?L	L00342	
	CMPNE?TCL	_TDOWN, 000h, L00352
	CMPNE?BCL	_Kursor, 001h, L00354
	SUB?BCB	_DECsat, 001h, _DECsat
	CMPLT?BCB	_DECsat, 001h, T1
	CMPGT?BCB	_DECsat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00356
	MOVE?CB	000h, _DECsat
	LABEL?L	L00356	
	PAUSE?C	03Ch
	LABEL?L	L00354	
	CMPNE?BCL	_Kursor, 002h, L00358
	SUB?BCB	_DECmin, 001h, _DECmin
	CMPLT?BCB	_DECmin, 001h, T1
	CMPGT?BCB	_DECmin, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00360
	MOVE?CB	000h, _DECmin
	LABEL?L	L00360	
	PAUSE?C	03Ch
	LABEL?L	L00358	
	LABEL?L	L00352	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	054h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?B	_Displej + 00001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DECsat
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_Displej + 00002h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DECmin
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	GOTO?L	_RTCvreme

	LABEL?L	_OdrzavanjePrekidac	
	MOVE?CT	001h, _OdrzavanjeUkljuceno
	GOSUB?L	_uzmivreme
	GOSUB?L	_Kreni
	MOVE?CT	001h, _BCKLIGHT
	MOVE?TT	_TUP, _NovoStanjeGore
	MOVE?TT	_TDOWN, _NovoStanjeDole
	CMPEQ?TCL	_ODRZAVANJE, 000h, L00362
	MOVE?CT	000h, _OdrzavanjeUkljuceno
	READADDRESS?C	003h
	READ?B	_x
	CMPNE?BCL	_x, 001h, L00364
	GOTO?L	_Main
	LABEL?L	L00364	
	CMPNE?BCL	_x, 002h, L00366
	MOVE?CB	001h, _Kursor
	GOTO?L	_RucnoPodesavanje
	LABEL?L	L00366	
	LABEL?L	L00362	
	CMPNE?TCL	_TUP, 000h, L00368
	ADD?BCB	_osvetljenjeOdrzavanje, 001h, _osvetljenjeOdrzavanje
	CMPLE?BCL	_osvetljenjeOdrzavanje, 064h, L00370
	MOVE?CB	064h, _osvetljenjeOdrzavanje
	LABEL?L	L00370	
	WRITEADDRESS?C	002h
	WRITE?B	_osvetljenjeOdrzavanje
	PAUSE?C	03Ch
	LABEL?L	L00368	
	CMPNE?TCL	_TDOWN, 000h, L00372
	SUB?BCB	_osvetljenjeOdrzavanje, 001h, _osvetljenjeOdrzavanje
	CMPLT?BCB	_osvetljenjeOdrzavanje, 001h, T1
	CMPGT?BCB	_osvetljenjeOdrzavanje, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00374
	MOVE?CB	000h, _osvetljenjeOdrzavanje
	LABEL?L	L00374	
	WRITEADDRESS?C	002h
	WRITE?B	_osvetljenjeOdrzavanje
	PAUSE?C	03Ch
	LABEL?L	L00372	
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	04Dh
	LCDOUT?C	061h
	LCDOUT?C	069h
	LCDOUT?C	06Eh
	LCDOUT?C	074h
	LCDOUT?C	065h
	LCDOUT?C	06Eh
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	063h
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	043h
	LCDOUT?C	068h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Eh
	LCDOUT?C	065h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	02Dh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_osvetljenjeOdrzavanje
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	MOVE?BB	_osvetljenjeOdrzavanje, _Kanal1
	MOVE?CB	000h, _Kanal2
	MOVE?CB	000h, _Kanal3
	MOVE?CB	000h, _Kanal4
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole
	GOTO?L	_OdrzavanjePrekidac

	LABEL?L	_EEpromMemorija	
	MOVE?CB	008h, _i
	LABEL?L	L00376	
	CMPGT?BCL	_i, 048h, L00377
	AIN?CBB	000h, _Memorija, _i
	READADDRESS?B	_i
	READ?N	T1
	AIN?BBB	T1, _Memorija, _i
	NEXT?BCL	_i, 001h, L00376
	LABEL?L	L00377	
	RETURN?	

	LABEL?L	_ProveriPrviPut	
	READADDRESS?C	001h
	READ?B	_EPROM
	CMPNE?BCL	_EPROM, 0FFh, L00378
	MOVE?CB	008h, _i
	LABEL?L	L00380	
	CMPGT?BCL	_i, 048h, L00381
	WRITEADDRESS?B	_i
	WRITE?C	000h
	ADD?BCN	_i, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h
	ADD?BCN	_i, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h
	ADD?BCN	_i, 003h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h
	NEXT?BCL	_i, 004h, L00380
	LABEL?L	L00381	
	WRITEADDRESS?C	001h
	WRITE?C	001h
	WRITEADDRESS?C	002h
	WRITE?C	00Ah
	WRITEADDRESS?C	003h
	WRITE?C	001h
	WRITEADDRESS?C	050h
	WRITE?C	000h
	WRITEADDRESS?C	051h
	WRITE?C	000h
	WRITEADDRESS?C	052h
	WRITE?C	000h
	WRITEADDRESS?C	053h
	WRITE?C	000h
	WRITEADDRESS?C	054h
	WRITE?C	000h
	WRITEADDRESS?C	055h
	WRITE?C	000h
	WRITEADDRESS?C	056h
	WRITE?C	000h
	WRITEADDRESS?C	057h
	WRITE?C	000h
	MOVE?CT	000h, _T1CON??0
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	0D0h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITE?C	000h
	I2CWRITES?C	000h
	MOVE?CT	001h, _T1CON??0
	LABEL?L	L00378	
	RETURN?	

	LABEL?L	_uzmivreme	
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	0D0h
	I2CWRITE?C	000h
	I2CREAD?B	_RTCSec
	I2CREAD?B	_RTCMin
	I2CREAD?B	_RTCHour
	I2CREAD?B	_RTCDay
	I2CREAD?B	_RTCDate
	I2CREAD?B	_RTCMonth
	I2CREADS?B	_RTCYear
	AND?BCN	_RTCMin, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCMin, 00Fh, T2
	ADD?NNB	T1, T2, _DECmin
	AND?BCN	_RTCHour, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCHour, 00Fh, T2
	ADD?NNB	T1, T2, _DECsat
	AND?BCN	_RTCSec, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCSec, 00Fh, T2
	ADD?NNB	T1, T2, _DECSec
	RETURN?	
	END?	

	END
