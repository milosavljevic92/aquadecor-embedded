
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
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	define OSC 16
#define		OSC		 16
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00046	DEFINE LCD_DREG PORTA 
#define		LCD_DREG		 PORTA 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00047	DEFINE LCD_DBIT 0
#define		LCD_DBIT		 0
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00048	DEFINE LCD_RSREG PORTA
#define		LCD_RSREG		 PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00049	DEFINE LCD_RSBIT 5 
#define		LCD_RSBIT		 5 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00050	DEFINE LCD_EREG PORTA
#define		LCD_EREG		 PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00051	DEFINE LCD_EBIT 4 
#define		LCD_EBIT		 4 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00052	DEFINE LCD_BITS 4 
#define		LCD_BITS		 4 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00053	DEFINE LCD_LINE 2
#define		LCD_LINE		 2
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00054	DEFINE I2C_SCLOUT 1
#define		I2C_SCLOUT		 1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00055	DEFINE I2C_SLOW 1
#define		I2C_SLOW		 1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00056	define NO_CLRWDT 1
#define		NO_CLRWDT		 1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00077	DEFINE I2C_SDA PORTC,0 
#define		I2C_SDA		 PORTC,0 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00078	DEFINE I2C_SCL PORTC,1 
#define		I2C_SCL		 PORTC,1 

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
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A00022	define OSC 16
T1              		EQU	RAM_START + 022h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A00026	define OSC 16
T2              		EQU	RAM_START + 026h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A0002A	define OSC 16
PB01            		EQU	RAM_START + 02Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A0002B	define OSC 16
PB02            		EQU	RAM_START + 02Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A0002C	define OSC 16
PB03            		EQU	RAM_START + 02Ch
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	A0002D	define OSC 16
PB04            		EQU	RAM_START + 02Dh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00202	A0002E	Akvarijum               var word
_Akvarijum       		EQU	RAM_START + 02Eh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00174	A00030	BezTastera              var word
_BezTastera      		EQU	RAM_START + 030h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00167	A00032	Frequency               var word
_Frequency       		EQU	RAM_START + 032h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00047	A00034	HP_Duty      VAR WORD
_HP_Duty         		EQU	RAM_START + 034h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00046	A00036	HP_Freq      VAR Word
_HP_Freq         		EQU	RAM_START + 036h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00048	A00038	HP_Temp      VAR WORD
_HP_Temp         		EQU	RAM_START + 038h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00179	A0003A	KMinuta                 var word
_KMinuta         		EQU	RAM_START + 03Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00178	A0003C	PMinuta                 var word
_PMinuta         		EQU	RAM_START + 03Ch
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00188	A0003E	PocetnaAdresaJezika     var word
_PocetnaAdresaJezika		EQU	RAM_START + 03Eh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00209	A00040	smece var word
_smece           		EQU	RAM_START + 040h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00201	A00042	Soba                    var word
_Soba            		EQU	RAM_START + 042h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00151	A00044	Temp                    VAR word
_Temp            		EQU	RAM_START + 044h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00197	A00046	TemperaturaIzEproma     var word
_TemperaturaIzEproma		EQU	RAM_START + 046h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00155	A00048	TMinuta                 var word
_TMinuta         		EQU	RAM_START + 048h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00193	A0004A	BrojKanala              var byte
_BrojKanala      		EQU	RAM_START + 04Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00148	A0004B	Days                    var byte
_Days            		EQU	RAM_START + 04Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00132	A0004C	DecMin                  var byte
_DecMin          		EQU	RAM_START + 04Ch
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00139	A0004D	DecMin1                 var byte 
_DecMin1         		EQU	RAM_START + 04Dh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00204	A0004E	DecMinutGlavni          var byte
_DecMinutGlavni  		EQU	RAM_START + 04Eh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00206	A0004F	DecMinutPrikaz          var byte
_DecMinutPrikaz  		EQU	RAM_START + 04Fh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00131	A00050	DecSat                  var byte
_DecSat          		EQU	RAM_START + 050h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00138	A00051	DecSat1                 var byte 
_DecSat1         		EQU	RAM_START + 051h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00203	A00052	DecSatglavni            var byte
_DecSatglavni    		EQU	RAM_START + 052h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00205	A00053	DecSatPrikaz            var byte
_DecSatPrikaz    		EQU	RAM_START + 053h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00140	A00054	DecSec                  var byte
_DecSec          		EQU	RAM_START + 054h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00208	A00055	DesniBrojac             var byte
_DesniBrojac     		EQU	RAM_START + 055h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00176	A00056	DveTacke                var byte
_DveTacke        		EQU	RAM_START + 056h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00146	A00057	Hours                   var byte
_Hours           		EQU	RAM_START + 057h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00045	A00058	HP_Channel   VAR BYTE
_HP_Channel      		EQU	RAM_START + 058h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00039	A00059	HP_Flags  VAR BYTE
_HP_Flags        		EQU	RAM_START + 059h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00049	A0005A	HP_PR2       VAR BYTE
_HP_PR2          		EQU	RAM_START + 05Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00129	A0005B	i                       var byte 
_i               		EQU	RAM_START + 05Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00190	A0005C	JacinaOsvetljenja1      var byte
_JacinaOsvetljenja1		EQU	RAM_START + 05Ch
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00191	A0005D	JacinaOsvetljenja2      var byte
_JacinaOsvetljenja2		EQU	RAM_START + 05Dh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00169	A0005E	Kanal1                  var byte
_Kanal1          		EQU	RAM_START + 05Eh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00170	A0005F	Kanal2                  var byte
_Kanal2          		EQU	RAM_START + 05Fh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00171	A00060	Kanal3                  var byte
_Kanal3          		EQU	RAM_START + 060h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00172	A00061	Kanal4                  var byte
_Kanal4          		EQU	RAM_START + 061h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00207	A00062	LeviBrojac              var byte
_LeviBrojac      		EQU	RAM_START + 062h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00145	A00063	Minutes                 var byte
_Minutes         		EQU	RAM_START + 063h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00183	A00064	MinutKraj               var byte
_MinutKraj       		EQU	RAM_START + 064h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00182	A00065	MinutPocetak            var byte
_MinutPocetak    		EQU	RAM_START + 065h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00150	A00066	Month                   var byte
_Month           		EQU	RAM_START + 066h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00181	A00067	NoviMinut               var byte
_NoviMinut       		EQU	RAM_START + 067h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00152	A00068	NovostanjeRTC           var byte
_NovostanjeRTC   		EQU	RAM_START + 068h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00147	A00069	OdrzavanjeJacina        var byte 
_OdrzavanjeJacina		EQU	RAM_START + 069h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00130	A0006A	OsvetljenjeOdrzavanje   var byte
_OsvetljenjeOdrzavanje		EQU	RAM_START + 06Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00187	A0006B	OsvKraj                 var byte
_OsvKraj         		EQU	RAM_START + 06Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00186	A0006C	OsvPocetak              var byte
_OsvPocetak      		EQU	RAM_START + 06Ch
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00137	A0006D	Pozicija                var byte 
_Pozicija        		EQU	RAM_START + 06Dh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00133	A0006E	Rkanal1                 var byte  
_Rkanal1         		EQU	RAM_START + 06Eh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00134	A0006F	Rkanal2                 var byte  
_Rkanal2         		EQU	RAM_START + 06Fh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00135	A00070	Rkanal3                 var byte  
_Rkanal3         		EQU	RAM_START + 070h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00136	A00071	Rkanal4                 var byte 
_Rkanal4         		EQU	RAM_START + 071h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00192	A00072	RtcCnt                  var byte
_RtcCnt          		EQU	RAM_START + 072h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00185	A00073	SatKraj                 var byte
_SatKraj         		EQU	RAM_START + 073h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00184	A00074	SatPocetak              var byte
_SatPocetak      		EQU	RAM_START + 074h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00144	A00075	Seconds                 var byte
_Seconds         		EQU	RAM_START + 075h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00153	A00076	StarostanjeRTC          var byte
_StarostanjeRTC  		EQU	RAM_START + 076h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00143	A00077	Temperatura             var byte
_Temperatura     		EQU	RAM_START + 077h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00128	A00078	x                       var byte
_x               		EQU	RAM_START + 078h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00189	A00079	y                       var byte
_y               		EQU	RAM_START + 079h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00149	A0007A	Years                   var byte
_Years           		EQU	RAM_START + 07Ah
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00157	A0007B	DutyCycleL1             var long
_DutyCycleL1     		EQU	RAM_START + 07Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00158	A0007F	DutyCycleL2             var long
_DutyCycleL2     		EQU	RAM_START + 07Fh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00159	A00083	DutyCycleL3             var long
_DutyCycleL3     		EQU	RAM_START + 083h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00160	A00087	DutyCycleL4             var long
_DutyCycleL4     		EQU	RAM_START + 087h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00162	A0008B	STKanal1                var long
_STKanal1        		EQU	RAM_START + 08Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00163	A0008F	STKanal2                var long
_STKanal2        		EQU	RAM_START + 08Fh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00164	A00093	STKanal3                var long
_STKanal3        		EQU	RAM_START + 093h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00165	A00097	STKanal4                var long
_STKanal4        		EQU	RAM_START + 097h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00106	A0009B	displej                 var byte[7]
_displej         		EQU	RAM_START + 09Bh
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00108	A000A2	RelejiMemorija          var byte[17] 
_RelejiMemorija  		EQU	RAM_START + 0A2h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00107	A000B3	Memorija                var byte[75]
_Memorija        		EQU	RAM_START + 0B3h
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
#define _TASTDESNO       	_PORTB??4
#define _TASTGORE        	_PORTB??6
#define _TASTDOLE        	_PORTB??5
#define _TASTOK          	_PORTB??2
#define _TASTODRZAVANJE  	_PORTB??7
#define _NovoStanjeDesno 	 PB02, 000h
#define _NovoStanjeLevo  	 PB02, 003h
#define _NovoStanjeGore  	 PB02, 002h
#define _NovoStanjeDole  	 PB02, 001h
#define _NovoStanjeOk    	 PB02, 005h
#define _NovoStanjeOdrzavanje	 PB02, 004h
#define _StaroStanjeDesno	 PB03, 004h
#define _StaroStanjeLevo 	 PB03, 007h
#define _StaroStanjeGore 	 PB03, 006h
#define _StaroStanjeDole 	 PB03, 005h
#define _StaroStanjeOk   	 PB04, 001h
#define _StaroStanjeOdrzavanje	 PB04, 000h
#define _gore            	 PB01, 004h
#define _dole            	 PB01, 003h
#define _levo            	 PB01, 005h
#define _desno           	 PB01, 002h
#define _ok              	 PB03, 000h
#define _odrzavanje      	 PB02, 006h
#define _Pritisnuto      	 PB03, 002h
#define _Room            	 PB03, 003h
#define _ModDanNoc       	 PB01, 007h
#define _Prekidac        	 PB03, 001h
#define _VremePrekidaca  	 PB04, 002h
#define _AutomatskoAkvarijum	 PB01, 000h
#define _AutomatskoSoba  	 PB01, 001h
#define _OdrzavanjeMod   	 PB02, 007h
#define _MaliBit         	 PB01, 006h
#define _HP_Flags??0     	_HP_Flags, 000h
#define _HP_Flags??1     	_HP_Flags, 001h
#define _HP_Flags??2     	_HP_Flags, 002h
#define _HP_Flags??3     	_HP_Flags, 003h
#define _PIR1??1         	 PIR1, 001h
#define _T2CON??2        	 T2CON, 002h
#define _T2CON??1        	 T2CON, 001h
#define _T2CON??0        	 T2CON, 000h
#define _INTCON2??7      	 INTCON2, 007h
#define _PORTC??3        	 PORTC, 003h
#define _PORTC??0        	 PORTC, 000h
#define _PORTC??1        	 PORTC, 001h
#define _PORTC??4        	 PORTC, 004h
#define _PORTC??5        	 PORTC, 005h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??7        	 PORTB, 007h
#define _PORTC??6        	 PORTC, 006h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??0        	 PORTB, 000h
#define _PORTC??2        	 PORTC, 002h
#define _Minutes??7      	_Minutes, 007h
#define _Hours??7        	_Hours, 007h
#define _Hours??6        	_Hours, 006h

; Constants.
_RTC             		EQU	000A2h
_EPROM           		EQU	000A0h
_LM75            		EQU	00091h
_Strelica        		EQU	0007Eh
_PauzaZaTaster   		EQU	00064h

; EEPROM data.


	INCLUDE	"PROBA.MAC"
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
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00001	define OSC 16

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00002	include "HPWM10_L.pbp"

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00018	disable debug
	DDISABLE?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00019	asm

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


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00056	goto OverHPWM10
	GOTO?L	_OverHPWM10

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00058	@PS = ((OSC * 1000000) / 1024)

	ASM?
PS = ((OSC * 1000000) / 1024)

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00059	@PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ASM?
PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ENDASM?

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00060	PS  CON EXT                        ;<----Added
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00061	PR2const CON EXT

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00062	HPWM10_UPD:  

	LABEL?L	_HPWM10_UPD	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00064	    HP_Temp = PS / HP_Freq
	DIV?CWW	PS, _HP_Freq, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00065	    if HP_Temp >= 4 then
	CMPLT?WCL	_HP_Temp, 004h, L00003

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00066	        if PS1 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 001h, L00005
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00005	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00067	        PS1 = 1
	MOVE?CT	001h, _PS1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00068	        if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00007
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00007	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00069	        PS0 = 1
	MOVE?CT	001h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00070	    else
	GOTO?L	L00004
	LABEL?L	L00003	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00071	        if PS1 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 000h, L00009
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00009	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00072	        PS1 = 0
	MOVE?CT	000h, _PS1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00073	        if HP_Temp > 0 then 
	CMPLE?WCL	_HP_Temp, 000h, L00011

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00074	            if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00013
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00013	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00075	            PS0 = 1
	MOVE?CT	001h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00076	        else
	GOTO?L	L00012
	LABEL?L	L00011	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00077	            if PS0 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 000h, L00015
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00015	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00078	            PS0 = 0
	MOVE?CT	000h, _PS0

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00079	        endif
	LABEL?L	L00012	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00080	    endif
	LABEL?L	L00004	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00091	    HP_Temp =PR2const/HP_Freq 'DIV32 HP_Freq <-------------------changed
	DIV?CWW	PR2const, _HP_Freq, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00093	    if PS0 then HP_Temp = HP_Temp >> 2  ; /4
	CMPF?TL	_PS0, L00017
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00017	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00094	    if PS1 then HP_Temp = HP_Temp >> 2  ; /4 or 16
	CMPF?TL	_PS1, L00019
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00019	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00095	    HP_PR2 = HP_Temp.lowbyte - 1
	SUB?BCB	_HP_Temp??LOWBYTE, 001h, _HP_PR2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00096	    if HP_PR2 <> PR2 then PR2changed = 1
	CMPEQ?BBL	_HP_PR2, PR2, L00021
	MOVE?CT	001h, _PR2changed
	LABEL?L	L00021	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00100	    HP_Temp = (HP_PR2 + 1) << 2  ; * 4
	ADD?BCN	_HP_PR2, 001h, T1
	SHIFTL?NCW	T1, 002h, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00102	    HP_Duty = (HP_Temp * HP_Duty)/1023 'DIV32 1023 <-------------------changed
	MUL?WWN	_HP_Temp, _HP_Duty, T1
	DIV?NCW	T1, 0000003FFh, _HP_Duty

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00107	    Branch HP_Channel,[GetCH_Done,GetCH_1,GetCH_2,GetCH_3,GetCH_4,GetCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00001
	BRGOTO?L	_GetCH_Done
	BRGOTO?L	_GetCH_1
	BRGOTO?L	_GetCH_2
	BRGOTO?L	_GetCH_3
	BRGOTO?L	_GetCH_4
	BRGOTO?L	_GetCH_5

	LABEL?L	L00001	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00109	    GetCH_1:

	LABEL?L	_GetCH_1	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00110	            ASM

	ASM?

              ifdef CCP1CON  
                MOVE?BB  CCPR1L,  _HP_Temp
                MOVE?BB  CCP1CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00117	    GetCH_2:  

	LABEL?L	_GetCH_2	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00118	            ASM

	ASM?

              ifdef CCP2CON  
                MOVE?BB  CCPR2L,  _HP_Temp
                MOVE?BB  CCP2CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00125	    GetCH_3:  

	LABEL?L	_GetCH_3	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00126	            ASM

	ASM?

              ifdef CCP3CON  
                MOVE?BB  CCPR3L,  _HP_Temp
                MOVE?BB  CCP3CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00133	    GetCH_4:  

	LABEL?L	_GetCH_4	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00134	            ASM

	ASM?

              ifdef CCP4CON  
                MOVE?BB  CCPR4L,  _HP_Temp
                MOVE?BB  CCP4CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00141	    GetCH_5:  

	LABEL?L	_GetCH_5	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00142	            ASM

	ASM?

              ifdef CCP5CON  
                MOVE?BB  CCPR5L,  _HP_Temp
                MOVE?BB  CCP5CON, _HP_Temp + 1
              endif  
            

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00149	GetCH_Done:

	LABEL?L	_GetCH_Done	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00150	    HP_Temp = (HP_Temp.lowbyte << 2) | ((HP_Temp.highbyte & %110000) >> 4)
	SHIFTL?BCN	_HP_Temp??LOWBYTE, 002h, T1
	AND?BCN	_HP_Temp??HIGHBYTE, 030h, T2
	SHIFTR?NCN	T2, 004h, T2
	OR?NNW	T1, T2, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00154	    if HP_Temp <> HP_Duty then  ; if DutyCycle Changed
	CMPEQ?WWL	_HP_Temp, _HP_Duty, L00023

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00156	        HP_Temp = HP_Duty >> 2        ; for CCP?CON
	SHIFTR?WCW	_HP_Duty, 002h, _HP_Temp

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00157	        HP_Temp.highbyte =  %1100 | ((HP_Duty & %11) << 4)
	AND?WCN	_HP_Duty, 003h, T1
	SHIFTL?NCN	T1, 004h, T1
	OR?CNB	00Ch, T1, _HP_Temp??HIGHBYTE

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00159	        if TMR2ON then              ; if Timer2 is running
	CMPF?TL	_TMR2ON, L00025

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00160	            TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	LABEL?L	L00027	
	CMPNE?TCL	_TMR2IF, 000h, L00028

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	GOTO?L	L00027
	LABEL?L	L00028	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00162	        endif
	LABEL?L	L00025	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00164	        Branch HP_Channel,[PutCH_Done,PutCH_1,PutCH_2,PutCH_3,PutCH_4,PutCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00002
	BRGOTO?L	_PutCH_Done
	BRGOTO?L	_PutCH_1
	BRGOTO?L	_PutCH_2
	BRGOTO?L	_PutCH_3
	BRGOTO?L	_PutCH_4
	BRGOTO?L	_PutCH_5

	LABEL?L	L00002	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00166	        PutCH_1:  

	LABEL?L	_PutCH_1	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00167	                ASM

	ASM?

                  ifdef CCP1CON
                    MOVE?BB  _HP_Temp, CCPR1L
                    MOVE?BB  _HP_Temp + 1, CCP1CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00174	        PutCH_2:  

	LABEL?L	_PutCH_2	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00175	                ASM

	ASM?

                  ifdef CCP2CON  
                    MOVE?BB  _HP_Temp, CCPR2L
                    MOVE?BB  _HP_Temp + 1, CCP2CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00182	        PutCH_3:  

	LABEL?L	_PutCH_3	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00183	                ASM

	ASM?

                  ifdef CCP3CON  
                    MOVE?BB  _HP_Temp, CCPR3L
                    MOVE?BB  _HP_Temp + 1, CCP3CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00190	        PutCH_4:  

	LABEL?L	_PutCH_4	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00191	                ASM

	ASM?

                  ifdef CCP4CON  
                    MOVE?BB  _HP_Temp, CCPR4L
                    MOVE?BB  _HP_Temp + 1, CCP4CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00198	        PutCH_5:

	LABEL?L	_PutCH_5	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00199	                ASM

	ASM?

                  ifdef CCP5CON  
                    MOVE?BB  _HP_Temp, CCPR5L
                    MOVE?BB  _HP_Temp + 1, CCP5CON
                  endif  
                

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00206	    PutCH_Done:

	LABEL?L	_PutCH_Done	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00207	    endif
	LABEL?L	L00023	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00211	    if TMR2ON = 0 then TMR2ON = 1     ; Start Timer2 if not already running
	CMPNE?TCL	_TMR2ON, 000h, L00029
	MOVE?CT	001h, _TMR2ON
	LABEL?L	L00029	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00213	    if (PSchanged | PR2changed) = 1 then
	OR?TTN	_PSchanged, _PR2changed, T1
	CMPNE?NCL	T1, 001h, L00031

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00214	        TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	LABEL?L	L00033	
	CMPT?TL	_TMR2IF, L00034

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	GOTO?L	L00033
	LABEL?L	L00034	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00217	        if PSchanged then             ; set T2 prescaler
	CMPF?TL	_PSchanged, L00035

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00218	            PSchanged = 0
	MOVE?CT	000h, _PSchanged

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00219	            T2CKPS0 = PS0
	MOVE?TT	_PS0, _T2CKPS0

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00220	            T2CKPS1 = PS1
	MOVE?TT	_PS1, _T2CKPS1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00221	        endif
	LABEL?L	L00035	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00223	        if PR2changed then            ; set PR2
	CMPF?TL	_PR2changed, L00037

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00224	            PR2changed = 0
	MOVE?CT	000h, _PR2changed

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00225	            PR2 = HP_PR2
	MOVE?BB	_HP_PR2, PR2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00226	        endif
	LABEL?L	L00037	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00227	    endif
	LABEL?L	L00031	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00228	return
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\HPWM10_L.PBP	00231	OverHPWM10:

	LABEL?L	_OverHPWM10	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00003	include "ALLDIGITAL.pbp"

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\ALLDIGITAL.PBP	00026	ASM

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

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00005	#CONFIG
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00046	DEFINE LCD_DREG PORTA 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00047	DEFINE LCD_DBIT 0
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00048	DEFINE LCD_RSREG PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00049	DEFINE LCD_RSBIT 5 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00050	DEFINE LCD_EREG PORTA
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00051	DEFINE LCD_EBIT 4 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00052	DEFINE LCD_BITS 4 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00053	DEFINE LCD_LINE 2
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00054	DEFINE I2C_SCLOUT 1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00055	DEFINE I2C_SLOW 1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00056	define NO_CLRWDT 1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00058	INTCON2.7 = 0 
	MOVE?CT	000h, _INTCON2??7

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00059	WPUB = %11110111
	MOVE?CB	0F7h, WPUB

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00060	OSCCON  = %1111000
	MOVE?CB	078h, OSCCON

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00061	OSCCON2 = %0000000
	MOVE?CB	000h, OSCCON2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00062	OSCTUNE = %10000000
	MOVE?CB	080h, OSCTUNE

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00063	T1CON = %00000111
	MOVE?CB	007h, T1CON

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00064	ANSELA = 0
	MOVE?CB	000h, ANSELA

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00065	ANSELB = 0
	MOVE?CB	000h, ANSELB

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00066	ANSELC = %000010
	MOVE?CB	002h, ANSELC

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00067	TRISC = 255
	MOVE?CB	0FFh, TRISC

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00068	TRISA = 255
	MOVE?CB	0FFh, TRISA

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00069	TRISB = 255
	MOVE?CB	0FFh, TRISB

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00070	pause 200
	PAUSE?C	0C8h
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00071	RTC             con %10100010
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00072	EPROM           CON %10100000
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00073	LM75            CON %10010001
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00074	Strelica        con 126 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00075	PauzaZaTaster   con 100
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00077	DEFINE I2C_SDA PORTC,0 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00078	DEFINE I2C_SCL PORTC,1 
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00080	symbol BCKLIGHT        = PORTC.3
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00081	symbol SDA             = PORTC.0
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00082	symbol SCL             = PORTC.1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00083	symbol RELEJ1          = PORTC.4
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00084	symbol RELEJ2          = PORTC.5
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00085	symbol TASTLEVO        = PORTB.1
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00086	symbol TASTDESNO       = PORTB.4
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00087	symbol TASTGORE        = PORTB.6
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00088	symbol TASTDOLE        = PORTB.5
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00089	symbol TASTOK          = PORTB.2
; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00090	symbol TASTODRZAVANJE  = PORTB.7

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00092	low bcklight
	LOW?T	_BCKLIGHT

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00093	low relej1
	LOW?T	_RELEJ1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00094	low relej2
	LOW?T	_RELEJ2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00095	LOW portc.6
	LOW?T	_PORTC??6

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00096	low portb.3
	LOW?T	_PORTB??3

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00097	low portb.0
	LOW?T	_PORTB??0

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00098	low portc.2
	LOW?T	_PORTC??2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00099	input tastlevo
	INPUT?T	_TASTLEVO

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00100	input tastdesno
	INPUT?T	_TASTDESNO

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00101	input tastdole
	INPUT?T	_TASTDOLE

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00102	input tastgore
	INPUT?T	_TASTGORE

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00103	input tastodrzavanje
	INPUT?T	_TASTODRZAVANJE

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00104	input tastok
	INPUT?T	_TASTOK

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00211	CLEAR
	CLEAR?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00212	Frequency               = 30000
	MOVE?CW	000007530h, _Frequency

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00213	starostanjeDesno        = 1
	MOVE?CT	001h, _StaroStanjeDesno

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00214	starostanjelevo         = 1 
	MOVE?CT	001h, _StaroStanjeLevo

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00215	starostanjegore         = 1 
	MOVE?CT	001h, _StaroStanjeGore

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00216	starostanjedole         = 1 
	MOVE?CT	001h, _StaroStanjeDole

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00217	StaroStanjeOk           = 1         
	MOVE?CT	001h, _StaroStanjeOk

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00218	StaroStanjeOdrzavanje   = 1  
	MOVE?CT	001h, _StaroStanjeOdrzavanje

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00219	odrzavanjemod = 0 
	MOVE?CT	000h, _OdrzavanjeMod

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00220	desnibrojac = 1
	MOVE?CB	001h, _DesniBrojac

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00221	BCKLIGHT = 1 
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00222	malibit = 1
	MOVE?CT	001h, _MaliBit

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00223	I2Cwrite  sda, scl, lm75,1,[%00000000]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	001h
	I2CWRITES?C	000h

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00224	pause 20
	PAUSE?C	014h

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00225	gosub UpisiVreme
	GOSUB?L	_UpisiVreme

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00226	 Frequency = 30000
	MOVE?CW	000007530h, _Frequency

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00228	    DutyCycleL1 = 512
	MOVE?CN	000000200h, _DutyCycleL1

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00229	    DutyCycleL2 = 512
	MOVE?CN	000000200h, _DutyCycleL2

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00230	    DutyCycleL3 = 512
	MOVE?CN	000000200h, _DutyCycleL3

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00231	    DutyCycleL4 = 512
	MOVE?CN	000000200h, _DutyCycleL4

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00233	    @ HPWM10 4, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL4, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00234	    @ HPWM10 3, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL3, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00235	    @ HPWM10 2, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL2, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00236	    @ HPWM10 1, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL1, _Frequency

	ENDASM?


; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00237	Main:

	LABEL?L	_Main	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00238	     if  tastlevo = 0 then 
	CMPNE?TCL	_TASTLEVO, 000h, L00039

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00239	        pause 100
	PAUSE?C	064h

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00240	        desnibrojac = desnibrojac + 1 
	ADD?BCB	_DesniBrojac, 001h, _DesniBrojac

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00241	     endif
	LABEL?L	L00039	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00242	    Gosub UzmiVreme
	GOSUB?L	_UzmiVreme

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00243	    Lcdout $fe, 2 ,"Vreme > ",dec2 DecSatglavni,":",dec2 DecMinutGlavni,":",dec2 Decsec
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	056h
	LCDOUT?C	072h
	LCDOUT?C	065h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	03Eh
	LCDOUT?C	020h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSatglavni
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMinutGlavni
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSec
	LCDOUTDEC?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00244	    lcdout $fe,$c0,dec3 temperatura, " ",desnibrojac," ",dec3 desnibrojac, "              "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_Temperatura
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?B	_DesniBrojac
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_DesniBrojac
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

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00245	    gosub MeriTemperaturu
	GOSUB?L	_MeriTemperaturu

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00246	pause 50
	PAUSE?C	032h

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00247	Goto Main
	GOTO?L	_Main

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00249	MeriTemperaturu:

	LABEL?L	_MeriTemperaturu	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00252	i2cread sda, scl, lm75,0,[temperatura]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	000h
	I2CREADS?B	_Temperatura

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00254	pause 20
	PAUSE?C	014h

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00255	i2cread sda, scl, lm75,0,[smece]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	000h
	I2CREADS?W	_smece

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00256	return 
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00258	return
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00260	UpisiVreme:                                

	LABEL?L	_UpisiVreme	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00261	    Seconds        = $00
	MOVE?CB	000h, _Seconds

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00262	    Minutes        = $00
	MOVE?CB	000h, _Minutes

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00263	    Hours          = $00
	MOVE?CB	000h, _Hours

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00264	    Days           = $01
	MOVE?CB	001h, _Days

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00265	    Years          = $01
	MOVE?CB	001h, _Years

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00266	    Month          = $01
	MOVE?CB	001h, _Month

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00268	    I2cwrite sda,scl,rtc,$02,[seconds,minutes,hours,days,$02,month,years]
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

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00269	    PAUSE 10 
	PAUSE?C	00Ah

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00270	return 
	RETURN?	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00272	UzmiVreme:

	LABEL?L	_UzmiVreme	

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00275	    i2cread sda,scl,rtc,$02,[seconds,minutes,hours]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	002h
	I2CREAD?B	_Seconds
	I2CREAD?B	_Minutes
	I2CREADS?B	_Hours

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00276	    pause 10
	PAUSE?C	00Ah

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00277	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Minutes??7

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00277	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Hours??7

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00277	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Hours??6

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00278	    DecMinutGlavni = ((minutes  & %11110000)>>4)  * 10 + (minutes & %00001111)
	AND?BCN	_Minutes, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Minutes, 00Fh, T2
	ADD?NNB	T1, T2, _DecMinutGlavni

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00279	    decsatglavni = ((Hours & %11110000)>>4)  * 10 + (hours & %00001111)
	AND?BCN	_Hours, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Hours, 00Fh, T2
	ADD?NNB	T1, T2, _DecSatglavni

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00280	    decsec = ((Seconds  & %11110000)>>4)  * 10 + (seconds  & %00001111)
	AND?BCN	_Seconds, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Seconds, 00Fh, T2
	ADD?NNB	T1, T2, _DecSec

; C:\USERS\ADMIN\DESKTOP\TEST\SAMOSAT\PROBA.PBP	00283	return
	RETURN?	

	END
