
; PICBASIC PRO(TM) Compiler 3.0.4.1, (c) 1998, 2011 microEngineering Labs, Inc. All Rights Reserved. 
MPASMWIN_USED			EQU	1

#define	PBP_PATH	C:\PBP3\




        NOLIST
    ifdef PM_USED
        LIST
        "Error: PM does not support this device.  Use MPASM."
        NOLIST
    else
        LIST
        LIST p = 18F25K22, r = dec, w = -311, w = -230, f = inhx32
        INCLUDE "P18F25K22.INC"	; MPASM  Header
        NOLIST
    endif
        LIST
EEPROM_START	EQU	0F00000h
BLOCK_SIZE	EQU	64


PBP_HARDWAREDEF  macro
  endm


    CONFIG FOSC = INTIO67
    CONFIG PLLCFG = OFF
    CONFIG PRICLKEN = ON
    CONFIG FCMEN = OFF
    CONFIG IESO = OFF
    CONFIG PWRTEN = ON
    CONFIG BOREN = OFF
    CONFIG BORV = 285
    CONFIG WDTEN = OFF
    CONFIG WDTPS = 32768
    CONFIG CCP2MX = PORTB3
    CONFIG PBADEN = OFF
    CONFIG CCP3MX = PORTC6
    CONFIG HFOFST = ON
    CONFIG T3CMX = PORTC0
    CONFIG P2BMX = PORTC0
    CONFIG MCLRE = INTMCLR
    CONFIG STVREN = ON
    CONFIG LVP = OFF
    CONFIG XINST = OFF
    CONFIG CP0 = ON
    CONFIG CP1 = ON
    CONFIG CP2 = ON
    CONFIG CP3 = ON
    CONFIG CPB = ON
    CONFIG CPD = OFF
    CONFIG WRT0 = OFF
    CONFIG WRT1 = OFF
    CONFIG WRT2 = OFF
    CONFIG WRT3 = OFF
    CONFIG WRTC = OFF
    CONFIG WRTB = OFF
    CONFIG WRTD = OFF
    CONFIG EBTR0 = OFF
    CONFIG EBTR1 = OFF
    CONFIG EBTR2 = OFF
    CONFIG EBTR3 = OFF
    CONFIG EBTRB = OFF



; Define statements.
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00299	DEFINE  ADC_CHANNELS  1
#define		ADC_CHANNELS		  1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	define OSC 16
#define		OSC		 16
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00046	DEFINE LCD_DREG PORTA 
#define		LCD_DREG		 PORTA 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00047	DEFINE LCD_DBIT 0
#define		LCD_DBIT		 0
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00048	DEFINE LCD_RSREG PORTA
#define		LCD_RSREG		 PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00049	DEFINE LCD_RSBIT 5 
#define		LCD_RSBIT		 5 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00050	DEFINE LCD_EREG PORTA
#define		LCD_EREG		 PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00051	DEFINE LCD_EBIT 4 
#define		LCD_EBIT		 4 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00052	DEFINE LCD_BITS 4 
#define		LCD_BITS		 4 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00053	DEFINE LCD_LINE 2
#define		LCD_LINE		 2
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00054	DEFINE I2C_SCLOUT 1
#define		I2C_SCLOUT		 1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00055	DEFINE I2C_SLOW 1
#define		I2C_SLOW		 1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00056	define NO_CLRWDT 1
#define		NO_CLRWDT		 1

RAM_START       		EQU	00000h
RAM_END         		EQU	005FFh
RAM_BANKS       		EQU	00006h
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
BANKA_START     		EQU	00000h
BANKA_END       		EQU	0005Fh

; C:\PBP3\PBPPI18L.RAM     	00028	A00000	FLAGS   VAR     BYTE BANKA SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 000h
; C:\PBP3\PBPPI18L.RAM     	00027	A00001	GOP     VAR     BYTE BANKA SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 001h
; C:\PBP3\PBPPI18L.RAM     	00016	A00002	R4      VAR     WORD BANKA SYSTEM       ' System Register
R4              		EQU	RAM_START + 002h
; C:\PBP3\PBPPI18L.RAM     	00017	A00004	R5      VAR     WORD BANKA SYSTEM       ' System Register
R5              		EQU	RAM_START + 004h
; C:\PBP3\PBPPI18L.RAM     	00018	A00006	R6      VAR     WORD BANKA SYSTEM       ' System Register
R6              		EQU	RAM_START + 006h
; C:\PBP3\PBPPI18L.RAM     	00019	A00008	R7      VAR     WORD BANKA SYSTEM       ' System Register
R7              		EQU	RAM_START + 008h
; C:\PBP3\PBPPI18L.RAM     	00020	A0000A	R8      VAR     WORD BANKA SYSTEM       ' System Register
R8              		EQU	RAM_START + 00Ah
; C:\PBP3\PBPPI18L.RAM     	00023	A0000C	RM1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 00Ch
; C:\PBP3\PBPPI18L.RAM     	00026	A0000D	RM2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 00Dh
; C:\PBP3\PBPPI18L.RAM     	00021	A0000E	RR1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 00Eh
; C:\PBP3\PBPPI18L.RAM     	00024	A0000F	RR2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 00Fh
; C:\PBP3\PBPPI18L.RAM     	00022	A00010	RS1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Bank
RS1             		EQU	RAM_START + 010h
; C:\PBP3\PBPPI18L.RAM     	00025	A00011	RS2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Bank
RS2             		EQU	RAM_START + 011h
; C:\PBP3\PBPPI18L.RAM     	00012	A00012	R0      VAR     LONG BANKA SYSTEM       ' System Register
R0              		EQU	RAM_START + 012h
; C:\PBP3\PBPPI18L.RAM     	00013	A00016	R1      VAR     LONG BANKA SYSTEM       ' System Register
R1              		EQU	RAM_START + 016h
; C:\PBP3\PBPPI18L.RAM     	00014	A0001A	R2      VAR     LONG BANKA SYSTEM       ' System Register
R2              		EQU	RAM_START + 01Ah
; C:\PBP3\PBPPI18L.RAM     	00015	A0001E	R3      VAR     LONG BANKA SYSTEM       ' System Register
R3              		EQU	RAM_START + 01Eh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	A00022	define OSC 16
T1              		EQU	RAM_START + 022h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	A00026	define OSC 16
T2              		EQU	RAM_START + 026h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	A0002A	define OSC 16
PB01            		EQU	RAM_START + 02Ah
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	A0002B	define OSC 16
PB02            		EQU	RAM_START + 02Bh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	A0002C	define OSC 16
PB03            		EQU	RAM_START + 02Ch
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00120	A0002D	DutyCycleL1  VAR WORD
_DutyCycleL1     		EQU	RAM_START + 02Dh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00121	A0002F	DutyCycleL2 VAR WORD
_DutyCycleL2     		EQU	RAM_START + 02Fh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00122	A00031	DutyCycleL3 VAR WORD
_DutyCycleL3     		EQU	RAM_START + 031h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00123	A00033	DutyCycleL4 VAR WORD
_DutyCycleL4     		EQU	RAM_START + 033h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00119	A00035	Frequency       VAR WORD
_Frequency       		EQU	RAM_START + 035h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00047	A00037	HP_Duty      VAR WORD
_HP_Duty         		EQU	RAM_START + 037h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00046	A00039	HP_Freq      VAR Word
_HP_Freq         		EQU	RAM_START + 039h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00048	A0003B	HP_Temp      VAR WORD
_HP_Temp         		EQU	RAM_START + 03Bh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00124	A0003D	Merenje         var word
_Merenje         		EQU	RAM_START + 03Dh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00118	A0003F	Potenciometar   VAR word
_Potenciometar   		EQU	RAM_START + 03Fh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00113	A00041	Days            var byte
_Days            		EQU	RAM_START + 041h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00145	A00042	DesnoVar                var byte
_DesnoVar        		EQU	RAM_START + 042h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00147	A00043	DoleVar                 var byte
_DoleVar         		EQU	RAM_START + 043h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00146	A00044	GoreVar                 var byte
_GoreVar         		EQU	RAM_START + 044h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00112	A00045	Hours           var byte
_Hours           		EQU	RAM_START + 045h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00045	A00046	HP_Channel   VAR BYTE
_HP_Channel      		EQU	RAM_START + 046h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00039	A00047	HP_Flags  VAR BYTE
_HP_Flags        		EQU	RAM_START + 047h
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00049	A00048	HP_PR2       VAR BYTE
_HP_PR2          		EQU	RAM_START + 048h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00144	A00049	LevoVar                 var byte
_LevoVar         		EQU	RAM_START + 049h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00143	A0004A	LMcnt                   var byte 
_LMcnt           		EQU	RAM_START + 04Ah
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00111	A0004B	Minutes         var byte
_Minutes         		EQU	RAM_START + 04Bh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00115	A0004C	Month           var byte
_Month           		EQU	RAM_START + 04Ch
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00149	A0004D	OdrzVar                 var byte
_OdrzVar         		EQU	RAM_START + 04Dh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00148	A0004E	OkVar                   var byte
_OkVar           		EQU	RAM_START + 04Eh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00110	A0004F	Seconds         var byte
_Seconds         		EQU	RAM_START + 04Fh
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00116	A00050	Temp            var byte
_Temp            		EQU	RAM_START + 050h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00117	A00051	Temperatura     var byte  
_Temperatura     		EQU	RAM_START + 051h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00109	A00052	X               VAR BYTE
_X               		EQU	RAM_START + 052h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00114	A00053	Years           var byte
_Years           		EQU	RAM_START + 053h
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00300	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00301	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00302	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00303	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
_HP_Temp??LOWBYTE		EQU	_HP_Temp
_HP_Temp??HIGHBYTE		EQU	_HP_Temp + 001h
#define _PS0             	_HP_Flags??0
#define _PS1             	_HP_Flags??1
#define _PSchanged       	_HP_Flags??2
#define _PR2changed      	_HP_Flags??3
#define _TMR2IF          	_PIR1??1
#define _TMR2ON          	_T2CON??2
#define _T2CKPS1         	_T2CON??1
#define _T2CKPS0         	_T2CON??0
#define _BCKLIGHT        	_PORTC??3
#define _SDA             	_PORTC??0
#define _SCL             	_PORTC??1
#define _RELEJ1          	_PORTC??4
#define _RELEJ2          	_PORTC??5
#define _TASTLEVO        	_PORTB??1
#define _TASTOK          	_PORTB??2
#define _TASTDESNO       	_PORTB??4
#define _TASTGORE        	_PORTB??6
#define _TASTDOLE        	_PORTB??5
#define _TASTODRZAVANJE  	_PORTB??7
#define _gore            	 PB01, 002h
#define _dole            	 PB01, 001h
#define _levo            	 PB01, 003h
#define _desno           	 PB01, 000h
#define _ok              	 PB02, 003h
#define _odrzavanje      	 PB02, 002h
#define _NovoStanjeDesno 	 PB01, 004h
#define _NovoStanjeLevo  	 PB01, 007h
#define _NovoStanjeGore  	 PB01, 006h
#define _NovoStanjeDole  	 PB01, 005h
#define _NovoStanjeOk    	 PB02, 001h
#define _NovoStanjeOdrzavanje	 PB02, 000h
#define _StaroStanjeDesno	 PB02, 004h
#define _StaroStanjeLevo 	 PB02, 007h
#define _StaroStanjeGore 	 PB02, 006h
#define _StaroStanjeDole 	 PB02, 005h
#define _StaroStanjeOk   	 PB03, 001h
#define _StaroStanjeOdrzavanje	 PB03, 000h
#define _HP_Flags??0     	_HP_Flags, 000h
#define _HP_Flags??1     	_HP_Flags, 001h
#define _HP_Flags??2     	_HP_Flags, 002h
#define _HP_Flags??3     	_HP_Flags, 003h
#define _PIR1??1         	 PIR1, 001h
#define _T2CON??2        	 T2CON, 002h
#define _T2CON??1        	 T2CON, 001h
#define _T2CON??0        	 T2CON, 000h
#define _INTCON2??7      	 INTCON2, 007h
#define _PORTC??6        	 PORTC, 006h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??0        	 PORTB, 000h
#define _PORTC??2        	 PORTC, 002h
#define _PORTC??3        	 PORTC, 003h
#define _PORTC??0        	 PORTC, 000h
#define _PORTC??1        	 PORTC, 001h
#define _PORTC??4        	 PORTC, 004h
#define _PORTC??5        	 PORTC, 005h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??7        	 PORTB, 007h
#define _Minutes??7      	_Minutes, 007h
#define _Hours??7        	_Hours, 007h
#define _Hours??6        	_Hours, 006h
#define _Days??7         	_Days, 007h
#define _Days??6         	_Days, 006h
#define _Month??7        	_Month, 007h
#define _Month??6        	_Month, 006h
#define _Month??5        	_Month, 005h

; Constants.
_RTC             		EQU	000A2h
_EPROM           		EQU	000A0h
_LM75            		EQU	00090h
_Strelica        		EQU	0007Eh

; EEPROM data.


	INCLUDE	"TESTPROGRAM.MAC"
	INCLUDE	"C:\PBP3\PBPPI18L.LIB"


; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00036	#HEADER
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00062	#CONFIG
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00282	BANKA   $0000, $005F
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00283	BANK0   $0060, $00FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00284	BANK1   $0100, $01FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00285	BANK2   $0200, $02FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00286	BANK3   $0300, $03FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00287	BANK4   $0400, $04FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00288	BANK5   $0500, $05FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00290	'EEPROM  $F00000, $F000FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00292	    #MSG "LONG Variables enabled (PBPL used)"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00293	    LIBRARY  "PBPPI18L"

; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00294	    INCLUDE "PBPPI18L.RAM"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00297	    INCLUDE "PBPPIC18.RAM"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00298	#ENDIF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00299	DEFINE  ADC_CHANNELS  1
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00307	#HEADER
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00001	define OSC 16

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00002	include "HPWM10_L.pbp"

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00018	disable debug
	DDISABLE?	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00019	asm

	ASM?

  if (R1 - R0 == 4)
  else
    messg You must use PBPL
  endif
;____[ HPWM10: 10-bit HPWM, with up to 5 CCP modules ]_____________

HPWM10 macro  Channel, Duty, Freq   
    if Channel < 6 
      MOVE?CB Channel, _HP_Channel      ; Save channel from constant
    else
      MOVE?BB Channel, _HP_Channel      ; Save channel from BYTE var
    endif
    MOVE?WW   Duty, _HP_Duty
    MOVE?WW   Freq, _HP_Freq
    L?CALL    _HPWM10_UPD    
    endm


	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00056	goto OverHPWM10
	GOTO?L	_OverHPWM10

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00058	@PS = ((OSC * 1000000) / 1024)

	ASM?
PS = ((OSC * 1000000) / 1024)

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00059	@PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ASM?
PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ENDASM?

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00060	PS  CON EXT                        ;<----Added
; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00061	PR2const CON EXT

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00062	HPWM10_UPD:  

	LABEL?L	_HPWM10_UPD	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00064	    HP_Temp = PS / HP_Freq
	DIV?CWW	PS, _HP_Freq, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00065	    if HP_Temp >= 4 then
	CMPLT?WCL	_HP_Temp, 004h, L00003

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00066	        if PS1 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 001h, L00005
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00005	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00067	        PS1 = 1
	MOVE?CT	001h, _PS1

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00068	        if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00007
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00007	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00069	        PS0 = 1
	MOVE?CT	001h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00070	    else
	GOTO?L	L00004
	LABEL?L	L00003	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00071	        if PS1 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 000h, L00009
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00009	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00072	        PS1 = 0
	MOVE?CT	000h, _PS1

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00073	        if HP_Temp > 0 then 
	CMPLE?WCL	_HP_Temp, 000h, L00011

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00074	            if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00013
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00013	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00075	            PS0 = 1
	MOVE?CT	001h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00076	        else
	GOTO?L	L00012
	LABEL?L	L00011	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00077	            if PS0 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 000h, L00015
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00015	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00078	            PS0 = 0
	MOVE?CT	000h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00079	        endif
	LABEL?L	L00012	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00080	    endif
	LABEL?L	L00004	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00091	    HP_Temp =PR2const/HP_Freq 'DIV32 HP_Freq <-------------------changed
	DIV?CWW	PR2const, _HP_Freq, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00093	    if PS0 then HP_Temp = HP_Temp >> 2  ; /4
	CMPF?TL	_PS0, L00017
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00017	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00094	    if PS1 then HP_Temp = HP_Temp >> 2  ; /4 or 16
	CMPF?TL	_PS1, L00019
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00019	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00095	    HP_PR2 = HP_Temp.lowbyte - 1
	SUB?BCB	_HP_Temp??LOWBYTE, 001h, _HP_PR2

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00096	    if HP_PR2 <> PR2 then PR2changed = 1
	CMPEQ?BBL	_HP_PR2, PR2, L00021
	MOVE?CT	001h, _PR2changed
	LABEL?L	L00021	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00100	    HP_Temp = (HP_PR2 + 1) << 2  ; * 4
	ADD?BCN	_HP_PR2, 001h, T1
	SHIFTL?NCW	T1, 002h, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00102	    HP_Duty = (HP_Temp * HP_Duty)/1023 'DIV32 1023 <-------------------changed
	MUL?WWN	_HP_Temp, _HP_Duty, T1
	DIV?NCW	T1, 0000003FFh, _HP_Duty

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00107	    Branch HP_Channel,[GetCH_Done,GetCH_1,GetCH_2,GetCH_3,GetCH_4,GetCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00001
	BRGOTO?L	_GetCH_Done
	BRGOTO?L	_GetCH_1
	BRGOTO?L	_GetCH_2
	BRGOTO?L	_GetCH_3
	BRGOTO?L	_GetCH_4
	BRGOTO?L	_GetCH_5

	LABEL?L	L00001	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00109	    GetCH_1:

	LABEL?L	_GetCH_1	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00110	            ASM

	ASM?

              ifdef CCP1CON  
                MOVE?BB  CCPR1L,  _HP_Temp
                MOVE?BB  CCP1CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00117	    GetCH_2:  

	LABEL?L	_GetCH_2	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00118	            ASM

	ASM?

              ifdef CCP2CON  
                MOVE?BB  CCPR2L,  _HP_Temp
                MOVE?BB  CCP2CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00125	    GetCH_3:  

	LABEL?L	_GetCH_3	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00126	            ASM

	ASM?

              ifdef CCP3CON  
                MOVE?BB  CCPR3L,  _HP_Temp
                MOVE?BB  CCP3CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00133	    GetCH_4:  

	LABEL?L	_GetCH_4	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00134	            ASM

	ASM?

              ifdef CCP4CON  
                MOVE?BB  CCPR4L,  _HP_Temp
                MOVE?BB  CCP4CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00141	    GetCH_5:  

	LABEL?L	_GetCH_5	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00142	            ASM

	ASM?

              ifdef CCP5CON  
                MOVE?BB  CCPR5L,  _HP_Temp
                MOVE?BB  CCP5CON, _HP_Temp + 1
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00149	GetCH_Done:

	LABEL?L	_GetCH_Done	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00150	    HP_Temp = (HP_Temp.lowbyte << 2) | ((HP_Temp.highbyte & %110000) >> 4)
	SHIFTL?BCN	_HP_Temp??LOWBYTE, 002h, T1
	AND?BCN	_HP_Temp??HIGHBYTE, 030h, T2
	SHIFTR?NCN	T2, 004h, T2
	OR?NNW	T1, T2, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00154	    if HP_Temp <> HP_Duty then  ; if DutyCycle Changed
	CMPEQ?WWL	_HP_Temp, _HP_Duty, L00023

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00156	        HP_Temp = HP_Duty >> 2        ; for CCP?CON
	SHIFTR?WCW	_HP_Duty, 002h, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00157	        HP_Temp.highbyte =  %1100 | ((HP_Duty & %11) << 4)
	AND?WCN	_HP_Duty, 003h, T1
	SHIFTL?NCN	T1, 004h, T1
	OR?CNB	00Ch, T1, _HP_Temp??HIGHBYTE

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00159	        if TMR2ON then              ; if Timer2 is running
	CMPF?TL	_TMR2ON, L00025

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00160	            TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	LABEL?L	L00027	
	CMPNE?TCL	_TMR2IF, 000h, L00028

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	GOTO?L	L00027
	LABEL?L	L00028	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00162	        endif
	LABEL?L	L00025	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00164	        Branch HP_Channel,[PutCH_Done,PutCH_1,PutCH_2,PutCH_3,PutCH_4,PutCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00002
	BRGOTO?L	_PutCH_Done
	BRGOTO?L	_PutCH_1
	BRGOTO?L	_PutCH_2
	BRGOTO?L	_PutCH_3
	BRGOTO?L	_PutCH_4
	BRGOTO?L	_PutCH_5

	LABEL?L	L00002	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00166	        PutCH_1:  

	LABEL?L	_PutCH_1	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00167	                ASM

	ASM?

                  ifdef CCP1CON
                    MOVE?BB  _HP_Temp, CCPR1L
                    MOVE?BB  _HP_Temp + 1, CCP1CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00174	        PutCH_2:  

	LABEL?L	_PutCH_2	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00175	                ASM

	ASM?

                  ifdef CCP2CON  
                    MOVE?BB  _HP_Temp, CCPR2L
                    MOVE?BB  _HP_Temp + 1, CCP2CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00182	        PutCH_3:  

	LABEL?L	_PutCH_3	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00183	                ASM

	ASM?

                  ifdef CCP3CON  
                    MOVE?BB  _HP_Temp, CCPR3L
                    MOVE?BB  _HP_Temp + 1, CCP3CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00190	        PutCH_4:  

	LABEL?L	_PutCH_4	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00191	                ASM

	ASM?

                  ifdef CCP4CON  
                    MOVE?BB  _HP_Temp, CCPR4L
                    MOVE?BB  _HP_Temp + 1, CCP4CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00198	        PutCH_5:

	LABEL?L	_PutCH_5	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00199	                ASM

	ASM?

                  ifdef CCP5CON  
                    MOVE?BB  _HP_Temp, CCPR5L
                    MOVE?BB  _HP_Temp + 1, CCP5CON
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00206	    PutCH_Done:

	LABEL?L	_PutCH_Done	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00207	    endif
	LABEL?L	L00023	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00211	    if TMR2ON = 0 then TMR2ON = 1     ; Start Timer2 if not already running
	CMPNE?TCL	_TMR2ON, 000h, L00029
	MOVE?CT	001h, _TMR2ON
	LABEL?L	L00029	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00213	    if (PSchanged | PR2changed) = 1 then
	OR?TTN	_PSchanged, _PR2changed, T1
	CMPNE?NCL	T1, 001h, L00031

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00214	        TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	LABEL?L	L00033	
	CMPT?TL	_TMR2IF, L00034

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	GOTO?L	L00033
	LABEL?L	L00034	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00217	        if PSchanged then             ; set T2 prescaler
	CMPF?TL	_PSchanged, L00035

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00218	            PSchanged = 0
	MOVE?CT	000h, _PSchanged

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00219	            T2CKPS0 = PS0
	MOVE?TT	_PS0, _T2CKPS0

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00220	            T2CKPS1 = PS1
	MOVE?TT	_PS1, _T2CKPS1

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00221	        endif
	LABEL?L	L00035	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00223	        if PR2changed then            ; set PR2
	CMPF?TL	_PR2changed, L00037

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00224	            PR2changed = 0
	MOVE?CT	000h, _PR2changed

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00225	            PR2 = HP_PR2
	MOVE?BB	_HP_PR2, PR2

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00226	        endif
	LABEL?L	L00037	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00227	    endif
	LABEL?L	L00031	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00228	return
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\HPWM10_L.PBP	00231	OverHPWM10:

	LABEL?L	_OverHPWM10	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00003	include "ALLDIGITAL.pbp"

; C:\USERS\ADMIN\DESKTOP\TEST\ALLDIGITAL.PBP	00026	ASM

	ASM?

;----[Module defaults]------------------------------------------------------
  #define SHOWDIGITALDEFAULT  0
  ifdef SHOWDIGITAL
SHOWDIGITALRESULT = SHOWDIGITAL
  else
SHOWDIGITALRESULT = SHOWDIGITALDEFAULT
  endif
  ifndef PM_USED
    ifndef ADLISTALL
      nolist
    endif
  endif
  
;----[Attempt to Set a registers Value]-------------------------------------
SetReg  macro RegOut, Cin
    ifndef PM_USED
      ifndef ADLISTALL
        nolist
      endif
    endif
    
    ifdef RegOut
      ifndef PM_USED
        list
      endif
      MOVE?CB  Cin, RegOut
      if (SHOWDIGITALRESULT == 1)
        ifndef PM_USED
          messg RegOut = Cin
        endif
      endif
      ifndef PM_USED
        ifndef ADLISTALL
          nolist
        endif
      endif
    endif
  endm
  
;----[A/D Converter registers]----------------------------------------------
  ifdef ANSEL0
    SetReg  ANSEL0, 0             ; if chip has ANSEL0, clear it
  endif
  ifdef ANSEL1
    SetReg  ANSEL1, 0             ; if chip has ANSEL1, clear it
  endif
  ifdef ANSELA
    SetReg  ANSELA, 0             ; if chip has ANSELA, clear it
  endif
  ifdef ANSELB
    SetReg  ANSELB, 0             ; if chip has ANSELB, clear it
  endif
  ifdef ANSELD
    SetReg  ANSELD, 0             ; if chip has ANSELD, clear it
  endif
  ifdef ANSELE
    SetReg  ANSELE, 0             ; if chip has ANSELE, clear it
  endif
  ifdef ANSEL
    SetReg  ANSEL, 0              ; if chip has ANSEL(s), clear them
    SetReg  ANSELH, 0
  else
    ifdef ANCON0                  ; Several chips use ANCON0 and ANCON1
      ifdef ADSHR                 ; if chip has shared address SFR's
        MOVE?CT  1, WDTCON,ADSHR  ;   switch to shared address registers
        if (SHOWDIGITALRESULT == 1)
          messg WDTCON.4 = 1
        endif
      endif
      SetReg  ANCON0, 0xFF        ;  
      ifdef PCFG15                ;  0 = Analog with these bits
        SetReg  ANCON1, 0xFF
      else
        SetReg  ANCON1, 0x7F
      endif
      ifdef ADSHR                 ; if chip has shared address SFR's
        MOVE?CT  0, WDTCON,ADSHR  ;   put SFR's back to legacy
        if (SHOWDIGITALRESULT == 1)
          messg WDTCON.4 = 0
        endif
      endif
    else
      ifdef PCFG6                 ; Some chips use ADCON1 bits
        SetReg ADCON1, 0x7F       ;  the same way as ANCONx
      else
        ifdef PCFG3               ; if there's a PCFG3 bit
          ifdef ADCON2            ;  but has no ADCON2, more than 8 A/D's
            SetReg  ADCON1, 0x0F  ;   A/D cfg from table = 0x0F
          else
            SetReg  ADCON1, 7     ; most common, 8 or less A/D ch's
          endif
        else
          ifdef PCFG2
            ifdef ADCON1
              SetReg  ADCON1, 7   ; A/D is 8-bit, 5 ch's
            endif
          else
            ifdef ADCON0          ; if there's an ADCON0
              ifndef ADCON1       ;  but not an ADCON1
                SetReg  ADCON0, 0 ;  A/D is 8-bit and ADS bits are in ADCON0
              endif
            endif
          endif
        endif
      endif
    endif
  endif
    
;----[Comparators]----------------------------------------------------------
  ifdef CMCON
    ifdef CMEN0       ; 18F1230/1330
      ;SetReg CMCON, 0 ; default already
    else
      ifdef CM2
        SetReg CMCON, 7
      else
        ifdef PM_USED
          "ALLDIGITAL: CMCON value not found"
        else
          messg "ALLDIGITAL: CMCON value not found"
        endif
      endif
    endif
  endif
  
  ifdef CMCON0
    ifdef NOT_COUTEN            
      SetReg CMCON0, 0xF1       ; 10F204/206
    else
      ifdef CMCH
        SetReg CMCON0, 0        ; 12F609/615
      else
        ifdef CM2
          SetReg CMCON0, 7      ; 12F635/683, 
        else                    ; 16F636/639/684/688/913/914/916/917/946
          ifndef PM_USED
            "ALLDIGITAL: CMCON0 value not found"
          else  
            messg "ALLDIGITAL: CMCON0 value not found"
          endif  
        endif
      endif
    endif
  endif
  
  ifdef CM1CON0                 ; individual comparator controls
    ifdef NOT_C1OUTEN           
      SetReg CM1CON0, 0xF1      ; 12F510/506, 16F526
    else
;      SetReg CM1CON0, 0         ; these already default to 0 --------------
    endif                       ; 16F882/883/884/886/887/ 610/616
  endif                         ; 16F631/677/685/687/689/690
                                
                                ; these aren't 0, but default to OFF
                                ; 18F24J11/25J11/26J11/44J11/45J11/46J11
                                ; 18F24J50/25J50/26J50/44J50/45J50/46J50
  ifdef CM2CON0
    ifdef NOT_C2OUTEN            
      SetReg CM2CON0, 0xF1
    else
;      SetReg CM2CON0, 0         ; already default to 0 -----see above-
    endif
  endif
    
; CM1CON                      ; these aren't 0, but default to OFF
                              ; 18F65J50/66J50/66J55/67J50/66J11/66J16/67J11
; CM2CON                      ; 18F85J50/86J50/86J55/87J50/86J11/86J16/87J11

  ifndef PM_USED
    list
  endif


	ENDASM?

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00005	#CONFIG
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00046	DEFINE LCD_DREG PORTA 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00047	DEFINE LCD_DBIT 0
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00048	DEFINE LCD_RSREG PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00049	DEFINE LCD_RSBIT 5 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00050	DEFINE LCD_EREG PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00051	DEFINE LCD_EBIT 4 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00052	DEFINE LCD_BITS 4 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00053	DEFINE LCD_LINE 2
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00054	DEFINE I2C_SCLOUT 1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00055	DEFINE I2C_SLOW 1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00056	define NO_CLRWDT 1

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00058	INTCON2.7 = 0 
	MOVE?CT	000h, _INTCON2??7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00060	WPUB = %11110111
	MOVE?CB	0F7h, WPUB

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00062	OSCCON  = %1111000
	MOVE?CB	078h, OSCCON

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00063	OSCCON2 = %0000000
	MOVE?CB	000h, OSCCON2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00064	OSCTUNE = %10000000
	MOVE?CB	080h, OSCTUNE

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00065	T1CON = %00000111
	MOVE?CB	007h, T1CON

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00066	ANSELA = 0
	MOVE?CB	000h, ANSELA

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00067	ANSELB = 0
	MOVE?CB	000h, ANSELB

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00068	ANSELC = %000010
	MOVE?CB	002h, ANSELC

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00069	TRISC = 255
	MOVE?CB	0FFh, TRISC

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00070	TRISA = 255
	MOVE?CB	0FFh, TRISA

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00071	TRISB = 255
	MOVE?CB	0FFh, TRISB

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00073	LOW portc.6
	LOW?T	_PORTC??6

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00074	low portb.3
	LOW?T	_PORTB??3

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00075	low portb.0
	LOW?T	_PORTB??0

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00076	low portc.2
	LOW?T	_PORTC??2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00078	pause 200
	PAUSE?C	0C8h
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00079	RTC             con %10100010
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00080	EPROM           CON %10100000
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00081	LM75            CON %10010000
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00082	Strelica        con 126 
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00084	symbol BCKLIGHT        = PORTC.3
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00085	symbol SDA             = PORTC.0
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00086	symbol SCL             = PORTC.1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00087	symbol RELEJ1          = PORTC.4
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00088	symbol RELEJ2          = PORTC.5
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00090	symbol TASTLEVO        = PORTB.1
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00091	symbol TASTOK          = PORTB.2
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00092	symbol TASTDESNO       = PORTB.4
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00093	symbol TASTGORE        = PORTB.6
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00094	symbol TASTDOLE        = PORTB.5
; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00095	symbol TASTODRZAVANJE  = PORTB.7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00097	low bcklight
	LOW?T	_BCKLIGHT

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00098	low relej1
	LOW?T	_RELEJ1

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00099	low relej2
	LOW?T	_RELEJ2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00101	input tastlevo
	INPUT?T	_TASTLEVO

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00102	input tastdesno
	INPUT?T	_TASTDESNO

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00103	input tastdole
	INPUT?T	_TASTDOLE

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00104	input tastgore
	INPUT?T	_TASTGORE

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00105	input tastodrzavanje
	INPUT?T	_TASTODRZAVANJE

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00106	input tastok
	INPUT?T	_TASTOK

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00150	  clear 
	CLEAR?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00152	Frequency = 30000
	MOVE?CW	000007530h, _Frequency

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00153	gosub UpisiVreme 
	GOSUB?L	_UpisiVreme

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00154	    DutyCycleL1 = 512
	MOVE?CW	000000200h, _DutyCycleL1

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00155	    DutyCycleL2 = 512
	MOVE?CW	000000200h, _DutyCycleL2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00156	    DutyCycleL3 = 512
	MOVE?CW	000000200h, _DutyCycleL3

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00157	    DutyCycleL4 = 512
	MOVE?CW	000000200h, _DutyCycleL4

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00159	    @ HPWM10 4, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL4, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00160	    @ HPWM10 3, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL3, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00161	    @ HPWM10 2, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL2, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00162	    @ HPWM10 1, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL1, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00163	relej1 = 0 
	MOVE?CT	000h, _RELEJ1

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00164	relej2 = 0    
	MOVE?CT	000h, _RELEJ2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00165	BCKLIGHT = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00172	Main:

	LABEL?L	_Main	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00173	gosub OcitajTastere
	GOSUB?L	_OcitajTastere

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00174	  if ok = 1 then okvar = okvar + 1 
	CMPNE?TCL	_ok, 001h, L00039
	ADD?BCB	_OkVar, 001h, _OkVar
	LABEL?L	L00039	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00175	  if levo = 1 then levovar = levovar + 1 
	CMPNE?TCL	_levo, 001h, L00041
	ADD?BCB	_LevoVar, 001h, _LevoVar
	LABEL?L	L00041	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00176	  if desno = 1 then desnovar = desnovar + 1 
	CMPNE?TCL	_desno, 001h, L00043
	ADD?BCB	_DesnoVar, 001h, _DesnoVar
	LABEL?L	L00043	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00177	  if gore  = 1 then gorevar = gorevar + 1 
	CMPNE?TCL	_gore, 001h, L00045
	ADD?BCB	_GoreVar, 001h, _GoreVar
	LABEL?L	L00045	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00178	  if dole = 1 then dolevar = dolevar + 1
	CMPNE?TCL	_dole, 001h, L00047
	ADD?BCB	_DoleVar, 001h, _DoleVar
	LABEL?L	L00047	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00179	  if odrzavanje = 1 then odrzvar = odrzvar + 1  
	CMPNE?TCL	_odrzavanje, 001h, L00049
	ADD?BCB	_OdrzVar, 001h, _OdrzVar
	LABEL?L	L00049	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00181	  Lcdout $fe, 1,dec2 Levovar,dec2 okvar, dec2 desnovar, dec2 gorevar,dec2 dolevar,dec2 odrzvar
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_LevoVar
	LCDOUTDEC?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_OkVar
	LCDOUTDEC?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DesnoVar
	LCDOUTDEC?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_GoreVar
	LCDOUTDEC?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DoleVar
	LCDOUTDEC?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_OdrzVar
	LCDOUTDEC?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00182	  lcdout $fe,$c0, #tastlevo,#tastok,#tastdesno,#tastgore,#tastdole,#tastodrzavanje,hex2 hours,hex2 minutes ,hex2 seconds  
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUTD?T	_TASTLEVO
	LCDOUTD?T	_TASTOK
	LCDOUTD?T	_TASTDESNO
	LCDOUTD?T	_TASTGORE
	LCDOUTD?T	_TASTDOLE
	LCDOUTD?T	_TASTODRZAVANJE
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_Hours
	LCDOUTHEX?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_Minutes
	LCDOUTHEX?	
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_Seconds
	LCDOUTHEX?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00183	    LMcnt = LMcnt + 1
	ADD?BCB	_LMcnt, 001h, _LMcnt

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00184	   if LMcnt = 10 then
	CMPNE?BCL	_LMcnt, 00Ah, L00051

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00185	        toggle relej1
	TOGGLE?T	_RELEJ1

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00186	        toggle relej2
	TOGGLE?T	_RELEJ2

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00189	        lmcnt = 0
	MOVE?CB	000h, _LMcnt

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00190	   endif 
	LABEL?L	L00051	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00191	 gosub UzmiVreme
	GOSUB?L	_UzmiVreme

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00193	    pause 100
	PAUSE?C	064h

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00195	Goto Main
	GOTO?L	_Main

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00197	UpisiVreme:

	LABEL?L	_UpisiVreme	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00198	    Seconds        = $00
	MOVE?CB	000h, _Seconds

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00199	    Minutes        = $00
	MOVE?CB	000h, _Minutes

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00200	    Hours          = $00
	MOVE?CB	000h, _Hours

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00201	    Days           = $01
	MOVE?CB	001h, _Days

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00202	    Years          = $01
	MOVE?CB	001h, _Years

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00203	    Month          = $01
	MOVE?CB	001h, _Month

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00204	    I2cwrite sda,scl,rtc,$02,[seconds,minutes,hours,days,$02,month,years]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	002h
	I2CWRITE?B	_Seconds
	I2CWRITE?B	_Minutes
	I2CWRITE?B	_Hours
	I2CWRITE?B	_Days
	I2CWRITE?C	002h
	I2CWRITE?B	_Month
	I2CWRITES?B	_Years

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00205	    PAUSE 10 
	PAUSE?C	00Ah

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00206	return 
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00208	UzmiVreme: 

	LABEL?L	_UzmiVreme	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00209	    PAUSE 50
	PAUSE?C	032h

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00210	    i2cread sda,scl,rtc,$02,[seconds,minutes,hours,days,temp,month,years]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	002h
	I2CREAD?B	_Seconds
	I2CREAD?B	_Minutes
	I2CREAD?B	_Hours
	I2CREAD?B	_Days
	I2CREAD?B	_Temp
	I2CREAD?B	_Month
	I2CREADS?B	_Years

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Minutes??7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Hours??7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Hours??6

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Days??7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Days??6

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Month??7

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Month??6

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00211	    minutes.7=0:hours.7=0:hours.6=0:days.7=0:days.6=0:month.7=0:month.6=0:month.5=0
	MOVE?CT	000h, _Month??5

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00212	return
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00214	OcitajTemperaturu:

	LABEL?L	_OcitajTemperaturu	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00215	    PAUSE 50
	PAUSE?C	032h

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00216	    I2CREAD  sda, scl, lm75, 0,[Temperatura]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	000h
	I2CREADS?B	_Temperatura

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00217	return 
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00219	OcitajTastere:

	LABEL?L	_OcitajTastere	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00220	    NovoStanjeDesno         =  tastdesno
	MOVE?TT	_TASTDESNO, _NovoStanjeDesno

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00221	    NovoStanjeLevo          =  tastlevo
	MOVE?TT	_TASTLEVO, _NovoStanjeLevo

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00222	    NovoStanjeGore          =  tastgore
	MOVE?TT	_TASTGORE, _NovoStanjeGore

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00223	    NovoStanjeDole          =  tastdole
	MOVE?TT	_TASTDOLE, _NovoStanjeDole

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00224	    NovoStanjeOk            =  tastok
	MOVE?TT	_TASTOK, _NovoStanjeOk

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00225	    NovoStanjeOdrzavanje    =  tastodrzavanje
	MOVE?TT	_TASTODRZAVANJE, _NovoStanjeOdrzavanje

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00227	    if novostanjegore < starostanjegore then 
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00053

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00228	        gore = 1 
	MOVE?CT	001h, _gore

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00229	    else
	GOTO?L	L00054
	LABEL?L	L00053	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00230	        gore = 0 
	MOVE?CT	000h, _gore

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00231	    ENDIF
	LABEL?L	L00054	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00233	    if novostanjedole < starostanjedole then 
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00055

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00234	        dole = 1
	MOVE?CT	001h, _dole

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00235	    else 
	GOTO?L	L00056
	LABEL?L	L00055	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00236	        dole = 0
	MOVE?CT	000h, _dole

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00237	    ENDIF
	LABEL?L	L00056	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00239	    if novostanjelevo < starostanjelevo then 
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00057

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00240	        levo = 1
	MOVE?CT	001h, _levo

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00241	    else
	GOTO?L	L00058
	LABEL?L	L00057	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00242	        levo = 0
	MOVE?CT	000h, _levo

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00243	    ENDIF
	LABEL?L	L00058	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00245	    if novostanjedesno < starostanjedesno then 
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00059

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00246	        desno = 1
	MOVE?CT	001h, _desno

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00247	    else
	GOTO?L	L00060
	LABEL?L	L00059	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00248	        desno = 0
	MOVE?CT	000h, _desno

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00249	    ENDIF
	LABEL?L	L00060	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00251	    if novostanjeOK < starostanjeok then 
	CMPGE?TTL	_NovoStanjeOk, _StaroStanjeOk, L00061

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00252	        ok = 1
	MOVE?CT	001h, _ok

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00253	    else
	GOTO?L	L00062
	LABEL?L	L00061	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00254	        ok = 0
	MOVE?CT	000h, _ok

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00255	    ENDIF
	LABEL?L	L00062	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00257	    if novostanjeodrzavanje < starostanjeodrzavanje then 
	CMPGE?TTL	_NovoStanjeOdrzavanje, _StaroStanjeOdrzavanje, L00063

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00258	        odrzavanje = 1
	MOVE?CT	001h, _odrzavanje

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00259	    else
	GOTO?L	L00064
	LABEL?L	L00063	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00260	        odrzavanje = 0
	MOVE?CT	000h, _odrzavanje

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00261	    ENDIF
	LABEL?L	L00064	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00275	    StaroStanjeDesno        = NovoStanjeDesno        
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00276	    StaroStanjeLevo         = NovoStanjeLevo      
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00277	    StaroStanjeGore         = NovoStanjeGore          
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00278	    StaroStanjeDole         = NovoStanjeDole         
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00279	    StaroStanjeOk           = NovoStanjeOk           
	MOVE?TT	_NovoStanjeOk, _StaroStanjeOk

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00280	    StaroStanjeOdrzavanje   = NovoStanjeOdrzavanje    
	MOVE?TT	_NovoStanjeOdrzavanje, _StaroStanjeOdrzavanje

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00281	return
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\TESTPROGRAM.PBP	00282	END
	END?	

	END
