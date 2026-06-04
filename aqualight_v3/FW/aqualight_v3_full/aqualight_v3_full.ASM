
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
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00347	DEFINE  ADC_CHANNELS  1
#define		ADC_CHANNELS		  1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	define OSC 16
#define		OSC		 16
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00045	DEFINE LCD_DREG PORTA 
#define		LCD_DREG		 PORTA 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00046	DEFINE LCD_DBIT 0
#define		LCD_DBIT		 0
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00047	DEFINE LCD_RSREG PORTA
#define		LCD_RSREG		 PORTA
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00048	DEFINE LCD_RSBIT 5 
#define		LCD_RSBIT		 5 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00049	DEFINE LCD_EREG PORTA
#define		LCD_EREG		 PORTA
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00050	DEFINE LCD_EBIT 4 
#define		LCD_EBIT		 4 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00051	DEFINE LCD_BITS 4 
#define		LCD_BITS		 4 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00052	DEFINE LCD_LINE 2
#define		LCD_LINE		 2
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00053	DEFINE I2C_SCLOUT 1
#define		I2C_SCLOUT		 1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00054	DEFINE I2C_SLOW 1
#define		I2C_SLOW		 1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00055	define NO_CLRWDT 1
#define		NO_CLRWDT		 1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00078	DEFINE I2C_SDA PORTC,0 
#define		I2C_SDA		 PORTC,0 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00079	DEFINE I2C_SCL PORTC,1 
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
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A00022	define OSC 16
T1              		EQU	RAM_START + 022h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A00026	define OSC 16
T2              		EQU	RAM_START + 026h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0002A	define OSC 16
T3              		EQU	RAM_START + 02Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0002E	define OSC 16
T4              		EQU	RAM_START + 02Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A00032	define OSC 16
T5              		EQU	RAM_START + 032h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A00036	define OSC 16
T6              		EQU	RAM_START + 036h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0003A	define OSC 16
PB01            		EQU	RAM_START + 03Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0003B	define OSC 16
PB02            		EQU	RAM_START + 03Bh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0003C	define OSC 16
PB03            		EQU	RAM_START + 03Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	A0003D	define OSC 16
PB04            		EQU	RAM_START + 03Dh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00143	A0003E	AbsKanal1               var word
_AbsKanal1       		EQU	RAM_START + 03Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00144	A00040	AbsKanal2               var word
_AbsKanal2       		EQU	RAM_START + 040h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00145	A00042	AbsKanal3               var word
_AbsKanal3       		EQU	RAM_START + 042h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00146	A00044	AbsKanal4               var word
_AbsKanal4       		EQU	RAM_START + 044h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00214	A00046	Akvarijum               var word
_Akvarijum       		EQU	RAM_START + 046h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00186	A00048	BezTastera              var word
_BezTastera      		EQU	RAM_START + 048h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00179	A0004A	Frequency               var word
_Frequency       		EQU	RAM_START + 04Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00047	A0004C	HP_Duty      VAR WORD
_HP_Duty         		EQU	RAM_START + 04Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00046	A0004E	HP_Freq      VAR Word
_HP_Freq         		EQU	RAM_START + 04Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00048	A00050	HP_Temp      VAR WORD
_HP_Temp         		EQU	RAM_START + 050h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00191	A00052	KMinuta                 var word
_KMinuta         		EQU	RAM_START + 052h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00190	A00054	PMinuta                 var word
_PMinuta         		EQU	RAM_START + 054h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00200	A00056	PocetnaAdresaJezika     var word
_PocetnaAdresaJezika		EQU	RAM_START + 056h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00221	A00058	smece var word
_smece           		EQU	RAM_START + 058h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00213	A0005A	Soba                    var word
_Soba            		EQU	RAM_START + 05Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00185	A0005C	b var byte
_b               		EQU	RAM_START + 05Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00205	A0005D	BrojKanala              var byte
_BrojKanala      		EQU	RAM_START + 05Dh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00160	A0005E	Days                    var byte
_Days            		EQU	RAM_START + 05Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00133	A0005F	DecMin                  var byte
_DecMin          		EQU	RAM_START + 05Fh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00140	A00060	DecMin1                 var byte 
_DecMin1         		EQU	RAM_START + 060h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00163	A00061	Temp                    VAR word
_Temp            		EQU	RAM_START + 061h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00167	A00063	TMinuta                 var word
_TMinuta         		EQU	RAM_START + 063h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00216	A00065	DecMinutGlavni          var byte
_DecMinutGlavni  		EQU	RAM_START + 065h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00218	A00066	DecMinutPrikaz          var byte
_DecMinutPrikaz  		EQU	RAM_START + 066h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00132	A00067	DecSat                  var byte
_DecSat          		EQU	RAM_START + 067h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00139	A00068	DecSat1                 var byte 
_DecSat1         		EQU	RAM_START + 068h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00215	A00069	DecSatglavni            var byte
_DecSatglavni    		EQU	RAM_START + 069h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00217	A0006A	DecSatPrikaz            var byte
_DecSatPrikaz    		EQU	RAM_START + 06Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00141	A0006B	DecSec                  var byte
_DecSec          		EQU	RAM_START + 06Bh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00220	A0006C	DesniBrojac             var byte
_DesniBrojac     		EQU	RAM_START + 06Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00188	A0006D	DveTacke                var byte
_DveTacke        		EQU	RAM_START + 06Dh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00158	A0006E	Hours                   var byte
_Hours           		EQU	RAM_START + 06Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00045	A0006F	HP_Channel   VAR BYTE
_HP_Channel      		EQU	RAM_START + 06Fh
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00039	A00070	HP_Flags  VAR BYTE
_HP_Flags        		EQU	RAM_START + 070h
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00049	A00071	HP_PR2       VAR BYTE
_HP_PR2          		EQU	RAM_START + 071h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00130	A00072	i                       var byte 
_i               		EQU	RAM_START + 072h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00202	A00073	JacinaOsvetljenja1      var byte
_JacinaOsvetljenja1		EQU	RAM_START + 073h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00203	A00074	JacinaOsvetljenja2      var byte
_JacinaOsvetljenja2		EQU	RAM_START + 074h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00181	A00075	Kanal1                  var byte
_Kanal1          		EQU	RAM_START + 075h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00182	A00076	Kanal2                  var byte
_Kanal2          		EQU	RAM_START + 076h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00183	A00077	Kanal3                  var byte
_Kanal3          		EQU	RAM_START + 077h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00184	A00078	Kanal4                  var byte
_Kanal4          		EQU	RAM_START + 078h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00219	A00079	LeviBrojac              var byte
_LeviBrojac      		EQU	RAM_START + 079h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00148	A0007A	MaxKanal1               var byte
_MaxKanal1       		EQU	RAM_START + 07Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00149	A0007B	MaxKanal2               var byte
_MaxKanal2       		EQU	RAM_START + 07Bh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00150	A0007C	MaxKanal3               var byte
_MaxKanal3       		EQU	RAM_START + 07Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00151	A0007D	MaxKanal4               var byte
_MaxKanal4       		EQU	RAM_START + 07Dh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00224	A0007E	MinDisplej var byte
_MinDisplej      		EQU	RAM_START + 07Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00157	A0007F	Minutes                 var byte
_Minutes         		EQU	RAM_START + 07Fh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00195	A00080	MinutKraj               var byte
_MinutKraj       		EQU	RAM_START + 080h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00194	A00081	MinutPocetak            var byte
_MinutPocetak    		EQU	RAM_START + 081h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00162	A00082	Month                   var byte
_Month           		EQU	RAM_START + 082h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00193	A00083	NoviMinut               var byte
_NoviMinut       		EQU	RAM_START + 083h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00164	A00084	NovostanjeRTC           var byte
_NovostanjeRTC   		EQU	RAM_START + 084h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00159	A00085	OdrzavanjeJacina        var byte 
_OdrzavanjeJacina		EQU	RAM_START + 085h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00131	A00086	OsvetljenjeOdrzavanje   var byte
_OsvetljenjeOdrzavanje		EQU	RAM_START + 086h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00199	A00087	OsvKraj                 var byte
_OsvKraj         		EQU	RAM_START + 087h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00198	A00088	OsvPocetak              var byte
_OsvPocetak      		EQU	RAM_START + 088h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00138	A00089	Pozicija                var byte 
_Pozicija        		EQU	RAM_START + 089h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00222	A0008A	pregrejan var byte
_pregrejan       		EQU	RAM_START + 08Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00134	A0008B	Rkanal1                 var byte  
_Rkanal1         		EQU	RAM_START + 08Bh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00135	A0008C	Rkanal2                 var byte  
_Rkanal2         		EQU	RAM_START + 08Ch
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00136	A0008D	Rkanal3                 var byte  
_Rkanal3         		EQU	RAM_START + 08Dh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00137	A0008E	Rkanal4                 var byte 
_Rkanal4         		EQU	RAM_START + 08Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00204	A0008F	RtcCnt                  var byte
_RtcCnt          		EQU	RAM_START + 08Fh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00225	A00090	SatDisplej var byte
_SatDisplej      		EQU	RAM_START + 090h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00197	A00091	SatKraj                 var byte
_SatKraj         		EQU	RAM_START + 091h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00196	A00092	SatPocetak              var byte
_SatPocetak      		EQU	RAM_START + 092h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00156	A00093	Seconds                 var byte
_Seconds         		EQU	RAM_START + 093h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00165	A00094	StarostanjeRTC          var byte
_StarostanjeRTC  		EQU	RAM_START + 094h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00155	A00095	Temperatura             var byte
_Temperatura     		EQU	RAM_START + 095h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00209	A00096	TemperaturaIzEproma     var byte
_TemperaturaIzEproma		EQU	RAM_START + 096h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00129	A00097	x                       var byte
_x               		EQU	RAM_START + 097h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00201	A00098	y                       var byte
_y               		EQU	RAM_START + 098h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00161	A00099	Years                   var byte
_Years           		EQU	RAM_START + 099h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00169	A0009A	DutyCycleL1             var long
_DutyCycleL1     		EQU	RAM_START + 09Ah
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00170	A0009E	DutyCycleL2             var long
_DutyCycleL2     		EQU	RAM_START + 09Eh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00171	A000A2	DutyCycleL3             var long
_DutyCycleL3     		EQU	RAM_START + 0A2h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00172	A000A6	DutyCycleL4             var long
_DutyCycleL4     		EQU	RAM_START + 0A6h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00174	A000AA	STKanal1                var long
_STKanal1        		EQU	RAM_START + 0AAh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00175	A000AE	STKanal2                var long
_STKanal2        		EQU	RAM_START + 0AEh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00176	A000B2	STKanal3                var long
_STKanal3        		EQU	RAM_START + 0B2h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00177	A000B6	STKanal4                var long
_STKanal4        		EQU	RAM_START + 0B6h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00107	A000BA	displej                 var byte[7]
_displej         		EQU	RAM_START + 0BAh
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00109	A000C1	RelejiMemorija          var byte[17] 
_RelejiMemorija  		EQU	RAM_START + 0C1h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00108	A000D2	Memorija                var byte[75]
_Memorija        		EQU	RAM_START + 0D2h
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00348	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00349	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00350	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00351	TRISH   VAR     TRISC
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
#define _NovoStanjeDesno 	 PB01, 007h
#define _NovoStanjeLevo  	 PB02, 002h
#define _NovoStanjeGore  	 PB02, 001h
#define _NovoStanjeDole  	 PB02, 000h
#define _NovoStanjeOk    	 PB02, 004h
#define _NovoStanjeOdrzavanje	 PB02, 003h
#define _StaroStanjeDesno	 PB03, 003h
#define _StaroStanjeLevo 	 PB03, 006h
#define _StaroStanjeGore 	 PB03, 005h
#define _StaroStanjeDole 	 PB03, 004h
#define _StaroStanjeOk   	 PB04, 000h
#define _StaroStanjeOdrzavanje	 PB03, 007h
#define _gore            	 PB01, 004h
#define _dole            	 PB01, 003h
#define _levo            	 PB01, 005h
#define _desno           	 PB01, 002h
#define _ok              	 PB02, 007h
#define _odrzavanje      	 PB02, 005h
#define _Pritisnuto      	 PB03, 001h
#define _Room            	 PB03, 002h
#define _ModDanNoc       	 PB01, 006h
#define _Prekidac        	 PB03, 000h
#define _VremePrekidaca  	 PB04, 001h
#define _AutomatskoAkvarijum	 PB01, 000h
#define _AutomatskoSoba  	 PB01, 001h
#define _OdrzavanjeMod   	 PB02, 006h
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
_LM75            		EQU	00090h
_Strelica        		EQU	0007Eh
_PauzaZaTaster   		EQU	0006Eh

; EEPROM data.


	INCLUDE	"DANER_V3_FULL.MAC"
	INCLUDE	"C:\PBP3\PBPPI18L.LIB"


; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00036	#HEADER
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00062	#CONFIG
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00330	BANKA   $0000, $005F
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00331	BANK0   $0060, $00FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00332	BANK1   $0100, $01FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00333	BANK2   $0200, $02FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00334	BANK3   $0300, $03FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00335	BANK4   $0400, $04FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00336	BANK5   $0500, $05FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00338	'EEPROM  $F00000, $F000FF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00340	    #MSG "LONG Variables enabled (PBPL used)"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00341	    LIBRARY  "PBPPI18L"

; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00342	    INCLUDE "PBPPI18L.RAM"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00345	    INCLUDE "PBPPIC18.RAM"
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00346	#ENDIF
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00347	DEFINE  ADC_CHANNELS  1
; C:\PBP3\DEVICES\PIC18F25K22.PBPINC	00355	#HEADER
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00001	define OSC 16

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00002	include "HPWM10_L.pbp"

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00018	disable debug
	DDISABLE?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00019	asm

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


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00056	goto OverHPWM10
	GOTO?L	_OverHPWM10

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00058	@PS = ((OSC * 1000000) / 1024)

	ASM?
PS = ((OSC * 1000000) / 1024)

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00059	@PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ASM?
PR2const = ((OSC * 1000000) / 4)  ;<----Added

	ENDASM?

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00060	PS  CON EXT                        ;<----Added
; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00061	PR2const CON EXT

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00062	HPWM10_UPD:  

	LABEL?L	_HPWM10_UPD	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00064	    HP_Temp = PS / HP_Freq
	DIV?CWW	PS, _HP_Freq, _HP_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00065	    if HP_Temp >= 4 then
	CMPLT?WCL	_HP_Temp, 004h, L00003

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00066	        if PS1 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 001h, L00005
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00005	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00067	        PS1 = 1
	MOVE?CT	001h, _PS1

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00068	        if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00007
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00007	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00069	        PS0 = 1
	MOVE?CT	001h, _PS0

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00070	    else
	GOTO?L	L00004
	LABEL?L	L00003	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00071	        if PS1 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS1, 000h, L00009
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00009	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00072	        PS1 = 0
	MOVE?CT	000h, _PS1

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00073	        if HP_Temp > 0 then 
	CMPLE?WCL	_HP_Temp, 000h, L00011

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00074	            if PS0 <> 1 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 001h, L00013
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00013	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00075	            PS0 = 1
	MOVE?CT	001h, _PS0

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00076	        else
	GOTO?L	L00012
	LABEL?L	L00011	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00077	            if PS0 <> 0 then PSchanged = 1 
	CMPEQ?TCL	_PS0, 000h, L00015
	MOVE?CT	001h, _PSchanged
	LABEL?L	L00015	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00078	            PS0 = 0
	MOVE?CT	000h, _PS0

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00079	        endif
	LABEL?L	L00012	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00080	    endif
	LABEL?L	L00004	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00091	    HP_Temp =PR2const/HP_Freq 'DIV32 HP_Freq <-------------------changed
	DIV?CWW	PR2const, _HP_Freq, _HP_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00093	    if PS0 then HP_Temp = HP_Temp >> 2  ; /4
	CMPF?TL	_PS0, L00017
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00017	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00094	    if PS1 then HP_Temp = HP_Temp >> 2  ; /4 or 16
	CMPF?TL	_PS1, L00019
	SHIFTR?WCW	_HP_Temp, 002h, _HP_Temp
	LABEL?L	L00019	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00095	    HP_PR2 = HP_Temp.lowbyte - 1
	SUB?BCB	_HP_Temp??LOWBYTE, 001h, _HP_PR2

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00096	    if HP_PR2 <> PR2 then PR2changed = 1
	CMPEQ?BBL	_HP_PR2, PR2, L00021
	MOVE?CT	001h, _PR2changed
	LABEL?L	L00021	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00100	    HP_Temp = (HP_PR2 + 1) << 2  ; * 4
	ADD?BCN	_HP_PR2, 001h, T1
	SHIFTL?NCW	T1, 002h, _HP_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00102	    HP_Duty = (HP_Temp * HP_Duty)/1023 'DIV32 1023 <-------------------changed
	MUL?WWN	_HP_Temp, _HP_Duty, T1
	DIV?NCW	T1, 0000003FFh, _HP_Duty

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00107	    Branch HP_Channel,[GetCH_Done,GetCH_1,GetCH_2,GetCH_3,GetCH_4,GetCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00001
	BRGOTO?L	_GetCH_Done
	BRGOTO?L	_GetCH_1
	BRGOTO?L	_GetCH_2
	BRGOTO?L	_GetCH_3
	BRGOTO?L	_GetCH_4
	BRGOTO?L	_GetCH_5

	LABEL?L	L00001	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00109	    GetCH_1:

	LABEL?L	_GetCH_1	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00110	            ASM

	ASM?

              ifdef CCP1CON  
                MOVE?BB  CCPR1L,  _HP_Temp
                MOVE?BB  CCP1CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00117	    GetCH_2:  

	LABEL?L	_GetCH_2	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00118	            ASM

	ASM?

              ifdef CCP2CON  
                MOVE?BB  CCPR2L,  _HP_Temp
                MOVE?BB  CCP2CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00125	    GetCH_3:  

	LABEL?L	_GetCH_3	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00126	            ASM

	ASM?

              ifdef CCP3CON  
                MOVE?BB  CCPR3L,  _HP_Temp
                MOVE?BB  CCP3CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00133	    GetCH_4:  

	LABEL?L	_GetCH_4	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00134	            ASM

	ASM?

              ifdef CCP4CON  
                MOVE?BB  CCPR4L,  _HP_Temp
                MOVE?BB  CCP4CON, _HP_Temp + 1
                goto _GetCH_Done        
              endif  
            

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00141	    GetCH_5:  

	LABEL?L	_GetCH_5	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00142	            ASM

	ASM?

              ifdef CCP5CON  
                MOVE?BB  CCPR5L,  _HP_Temp
                MOVE?BB  CCP5CON, _HP_Temp + 1
              endif  
            

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00149	GetCH_Done:

	LABEL?L	_GetCH_Done	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00150	    HP_Temp = (HP_Temp.lowbyte << 2) | ((HP_Temp.highbyte & %110000) >> 4)
	SHIFTL?BCN	_HP_Temp??LOWBYTE, 002h, T1
	AND?BCN	_HP_Temp??HIGHBYTE, 030h, T2
	SHIFTR?NCN	T2, 004h, T2
	OR?NNW	T1, T2, _HP_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00154	    if HP_Temp <> HP_Duty then  ; if DutyCycle Changed
	CMPEQ?WWL	_HP_Temp, _HP_Duty, L00023

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00156	        HP_Temp = HP_Duty >> 2        ; for CCP?CON
	SHIFTR?WCW	_HP_Duty, 002h, _HP_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00157	        HP_Temp.highbyte =  %1100 | ((HP_Duty & %11) << 4)
	AND?WCN	_HP_Duty, 003h, T1
	SHIFTL?NCN	T1, 004h, T1
	OR?CNB	00Ch, T1, _HP_Temp??HIGHBYTE

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00159	        if TMR2ON then              ; if Timer2 is running
	CMPF?TL	_TMR2ON, L00025

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00160	            TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	LABEL?L	L00027	
	CMPNE?TCL	_TMR2IF, 000h, L00028

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00161	            while TMR2IF = 0 : wend ; let current cycle complete
	GOTO?L	L00027
	LABEL?L	L00028	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00162	        endif
	LABEL?L	L00025	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00164	        Branch HP_Channel,[PutCH_Done,PutCH_1,PutCH_2,PutCH_3,PutCH_4,PutCH_5]
	BRANCH?BCL	_HP_Channel, 006h, L00002
	BRGOTO?L	_PutCH_Done
	BRGOTO?L	_PutCH_1
	BRGOTO?L	_PutCH_2
	BRGOTO?L	_PutCH_3
	BRGOTO?L	_PutCH_4
	BRGOTO?L	_PutCH_5

	LABEL?L	L00002	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00166	        PutCH_1:  

	LABEL?L	_PutCH_1	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00167	                ASM

	ASM?

                  ifdef CCP1CON
                    MOVE?BB  _HP_Temp, CCPR1L
                    MOVE?BB  _HP_Temp + 1, CCP1CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00174	        PutCH_2:  

	LABEL?L	_PutCH_2	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00175	                ASM

	ASM?

                  ifdef CCP2CON  
                    MOVE?BB  _HP_Temp, CCPR2L
                    MOVE?BB  _HP_Temp + 1, CCP2CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00182	        PutCH_3:  

	LABEL?L	_PutCH_3	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00183	                ASM

	ASM?

                  ifdef CCP3CON  
                    MOVE?BB  _HP_Temp, CCPR3L
                    MOVE?BB  _HP_Temp + 1, CCP3CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00190	        PutCH_4:  

	LABEL?L	_PutCH_4	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00191	                ASM

	ASM?

                  ifdef CCP4CON  
                    MOVE?BB  _HP_Temp, CCPR4L
                    MOVE?BB  _HP_Temp + 1, CCP4CON
                    goto _PutCH_Done
                  endif  
                

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00198	        PutCH_5:

	LABEL?L	_PutCH_5	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00199	                ASM

	ASM?

                  ifdef CCP5CON  
                    MOVE?BB  _HP_Temp, CCPR5L
                    MOVE?BB  _HP_Temp + 1, CCP5CON
                  endif  
                

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00206	    PutCH_Done:

	LABEL?L	_PutCH_Done	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00207	    endif
	LABEL?L	L00023	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00211	    if TMR2ON = 0 then TMR2ON = 1     ; Start Timer2 if not already running
	CMPNE?TCL	_TMR2ON, 000h, L00029
	MOVE?CT	001h, _TMR2ON
	LABEL?L	L00029	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00213	    if (PSchanged | PR2changed) = 1 then
	OR?TTN	_PSchanged, _PR2changed, T1
	CMPNE?NCL	T1, 001h, L00031

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00214	        TMR2IF = 0
	MOVE?CT	000h, _TMR2IF

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	LABEL?L	L00033	
	CMPT?TL	_TMR2IF, L00034

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00215	        while !TMR2IF : wend          ; let current cycle complete
	GOTO?L	L00033
	LABEL?L	L00034	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00217	        if PSchanged then             ; set T2 prescaler
	CMPF?TL	_PSchanged, L00035

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00218	            PSchanged = 0
	MOVE?CT	000h, _PSchanged

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00219	            T2CKPS0 = PS0
	MOVE?TT	_PS0, _T2CKPS0

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00220	            T2CKPS1 = PS1
	MOVE?TT	_PS1, _T2CKPS1

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00221	        endif
	LABEL?L	L00035	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00223	        if PR2changed then            ; set PR2
	CMPF?TL	_PR2changed, L00037

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00224	            PR2changed = 0
	MOVE?CT	000h, _PR2changed

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00225	            PR2 = HP_PR2
	MOVE?BB	_HP_PR2, PR2

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00226	        endif
	LABEL?L	L00037	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00227	    endif
	LABEL?L	L00031	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00228	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\HPWM10_L.PBP	00231	OverHPWM10:

	LABEL?L	_OverHPWM10	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00003	include "ALLDIGITAL.pbp"

; D:\DAMIR\DANER\DANER_V3_SOURCE\ALLDIGITAL.PBP	00026	ASM

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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00004	#CONFIG
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00045	DEFINE LCD_DREG PORTA 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00046	DEFINE LCD_DBIT 0
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00047	DEFINE LCD_RSREG PORTA
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00048	DEFINE LCD_RSBIT 5 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00049	DEFINE LCD_EREG PORTA
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00050	DEFINE LCD_EBIT 4 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00051	DEFINE LCD_BITS 4 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00052	DEFINE LCD_LINE 2
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00053	DEFINE I2C_SCLOUT 1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00054	DEFINE I2C_SLOW 1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00055	define NO_CLRWDT 1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00057	INTCON2.7 = 0 
	MOVE?CT	000h, _INTCON2??7

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00058	WPUB = %11110111
	MOVE?CB	0F7h, WPUB

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00060	OSCCON  = %1111000
	MOVE?CB	078h, OSCCON

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00061	OSCCON2 = %0000000
	MOVE?CB	000h, OSCCON2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00062	OSCTUNE = %10000000
	MOVE?CB	080h, OSCTUNE

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00063	T1CON = %00000111
	MOVE?CB	007h, T1CON

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00064	ANSELA = 0
	MOVE?CB	000h, ANSELA

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00065	ANSELB = 0
	MOVE?CB	000h, ANSELB

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00066	ANSELC = %000010
	MOVE?CB	002h, ANSELC

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00067	TRISC = 255
	MOVE?CB	0FFh, TRISC

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00068	TRISA = 255
	MOVE?CB	0FFh, TRISA

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00069	TRISB = 255
	MOVE?CB	0FFh, TRISB

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00070	pause 200
	PAUSE?C	0C8h
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00072	RTC             con %10100010
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00073	EPROM           CON %10100000
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00074	LM75            CON %10010000
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00075	Strelica        con 126 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00076	PauzaZaTaster   con 110
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00078	DEFINE I2C_SDA PORTC,0 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00079	DEFINE I2C_SCL PORTC,1 
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00081	symbol BCKLIGHT        = PORTC.3
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00082	symbol SDA             = PORTC.0
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00083	symbol SCL             = PORTC.1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00084	symbol RELEJ1          = PORTC.4
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00085	symbol RELEJ2          = PORTC.5
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00086	symbol TASTLEVO        = PORTB.1
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00087	symbol TASTDESNO       = PORTB.4
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00088	symbol TASTGORE        = PORTB.6
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00089	symbol TASTDOLE        = PORTB.5
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00090	symbol TASTOK          = PORTB.2
; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00091	symbol TASTODRZAVANJE  = PORTB.7

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00093	low bcklight
	LOW?T	_BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00094	low relej1
	LOW?T	_RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00095	low relej2
	LOW?T	_RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00096	LOW portc.6
	LOW?T	_PORTC??6

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00097	low portb.3
	LOW?T	_PORTB??3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00098	low portb.0
	LOW?T	_PORTB??0

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00099	low portc.2
	LOW?T	_PORTC??2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00100	input tastlevo
	INPUT?T	_TASTLEVO

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00101	input tastdesno
	INPUT?T	_TASTDESNO

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00102	input tastdole
	INPUT?T	_TASTDOLE

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00103	input tastgore
	INPUT?T	_TASTGORE

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00104	input tastodrzavanje
	INPUT?T	_TASTODRZAVANJE

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00105	input tastok
	INPUT?T	_TASTOK

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00226	CLEAR
	CLEAR?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00227	Frequency               = 30000
	MOVE?CW	000007530h, _Frequency

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00228	starostanjeDesno        = 1
	MOVE?CT	001h, _StaroStanjeDesno

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00229	starostanjelevo         = 1 
	MOVE?CT	001h, _StaroStanjeLevo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00230	starostanjegore         = 1 
	MOVE?CT	001h, _StaroStanjeGore

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00231	starostanjedole         = 1 
	MOVE?CT	001h, _StaroStanjeDole

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00232	StaroStanjeOk           = 1         
	MOVE?CT	001h, _StaroStanjeOk

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00233	StaroStanjeOdrzavanje   = 1 
	MOVE?CT	001h, _StaroStanjeOdrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00235	odrzavanjemod = 0 
	MOVE?CT	000h, _OdrzavanjeMod

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00236	BCKLIGHT = 1
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00237	I2Cwrite  sda, scl, lm75,1,[%00000000]   
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	001h
	I2CWRITES?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00238	pause 20 
	PAUSE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00240	read 1,x
	READADDRESS?C	001h
	READ?B	_x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00241	if x <> 1 then gosub PrviPut
	CMPEQ?BCL	_x, 001h, L00039
	GOSUB?L	_PrviPut
	LABEL?L	L00039	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00243	Splash:

	LABEL?L	_Splash	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00244	    gosub ocitajtastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00245	    if odrzavanje = 1 then 
	CMPNE?TCL	_odrzavanje, 001h, L00041

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00246	        read 7,TemperaturaIzEproma
	READADDRESS?C	007h
	READ?B	_TemperaturaIzEproma

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00247	        gosub podesavanjetemperature
	GOSUB?L	_podesavanjetemperature

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00248	    endif 
	LABEL?L	L00041	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00251	    gosub EEpromMemorija
	GOSUB?L	_EEpromMemorija

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00252	    read 5,AutomatskoAkvarijum
	READADDRESS?C	005h
	READ?T	_AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00253	    read 6,Automatskosoba
	READADDRESS?C	006h
	READ?T	_AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00254	    if automatskoakvarijum = 0 then
	CMPNE?TCL	_AutomatskoAkvarijum, 000h, L00043

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00255	        read 100,kanal1
	READADDRESS?C	064h
	READ?B	_Kanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00256	        read 101,kanal2  
	READADDRESS?C	065h
	READ?B	_Kanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00257	        read 102,kanal3 
	READADDRESS?C	066h
	READ?B	_Kanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00258	        DutyCycleL1 =(Kanal1 * 1024)/100
	MUL?BCN	_Kanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00259	        DutyCycleL2 =(Kanal2 * 1024)/100
	MUL?BCN	_Kanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00260	        DutyCycleL3 =(Kanal3 * 1024)/100
	MUL?BCN	_Kanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00261	        @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00262	        @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00263	        @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00264	    endif
	LABEL?L	L00043	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00265	    if automatskosoba = 0 then 
	CMPNE?TCL	_AutomatskoSoba, 000h, L00045

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00266	        read 103,kanal4
	READADDRESS?C	067h
	READ?B	_Kanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00267	        DutyCycleL4 =(Kanal4 * 1024)/100
	MUL?BCN	_Kanal4, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00268	        @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00269	    endif
	LABEL?L	L00045	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00270	    Lcdout $fe,2, "AQUA-LED            "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	041h
	LCDOUT?C	051h
	LCDOUT?C	055h
	LCDOUT?C	041h
	LCDOUT?C	02Dh
	LCDOUT?C	04Ch
	LCDOUT?C	045h
	LCDOUT?C	044h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00271	    Lcdout $fe,$C0, "DANER FW:3.0       "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	044h
	LCDOUT?C	041h
	LCDOUT?C	04Eh
	LCDOUT?C	045h
	LCDOUT?C	052h
	LCDOUT?C	020h
	LCDOUT?C	046h
	LCDOUT?C	057h
	LCDOUT?C	03Ah
	LCDOUT?C	033h
	LCDOUT?C	02Eh
	LCDOUT?C	030h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00272	    pause 1500
	PAUSE?C	005DCh

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00273	    x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00274	goto main
	GOTO?L	_main

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00276	Main:

	LABEL?L	_main	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00277	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00278	gosub uzmivreme
	GOSUB?L	_uzmivreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00279	gosub IzmeriTemperaturu
	GOSUB?L	_IzmeriTemperaturu

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00280	if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00047

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00281	    if bcklight = 1 then 
	CMPNE?TCL	_BCKLIGHT, 001h, L00049

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00282	        x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00283	        goto GlavniMeni
	GOTO?L	_GlavniMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00284	    else
	GOTO?L	L00050
	LABEL?L	L00049	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00285	        bcklight = 1 
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00286	    endif 
	LABEL?L	L00050	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00287	endif
	LABEL?L	L00047	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00288	if gore = 1  then 
	CMPNE?TCL	_gore, 001h, L00051

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00289	    if bcklight = 1 then 
	CMPNE?TCL	_BCKLIGHT, 001h, L00053

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00290	            if AutomatskoAkvarijum  = 1 then 
	CMPNE?TCL	_AutomatskoAkvarijum, 001h, L00055

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00291	                    AutomatskoAkvarijum  = 0
	MOVE?CT	000h, _AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00292	                    write 5,0
	WRITEADDRESS?C	005h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00293	            else
	GOTO?L	L00056
	LABEL?L	L00055	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00294	                    AutomatskoAkvarijum  = 1
	MOVE?CT	001h, _AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00295	                    kanal1 = stkanal1 / 100 
	DIV?NCB	_STKanal1, 064h, _Kanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00296	                    kanal2 = stkanal2 / 100 
	DIV?NCB	_STKanal2, 064h, _Kanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00297	                    kanal3 = stkanal3 / 100 
	DIV?NCB	_STKanal3, 064h, _Kanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00298	                    write 5,1
	WRITEADDRESS?C	005h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00299	            endif 
	LABEL?L	L00056	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00300	    else
	GOTO?L	L00054
	LABEL?L	L00053	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00301	            bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00302	    endif
	LABEL?L	L00054	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00303	endif
	LABEL?L	L00051	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00305	if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00057

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00306	     if bcklight = 1 then 
	CMPNE?TCL	_BCKLIGHT, 001h, L00059

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00307	            if AutomatskoSoba = 1 then 
	CMPNE?TCL	_AutomatskoSoba, 001h, L00061

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00308	                    AutomatskoSoba = 0
	MOVE?CT	000h, _AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00309	                    write 6,0
	WRITEADDRESS?C	006h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00310	            else
	GOTO?L	L00062
	LABEL?L	L00061	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00311	                    AutomatskoSoba = 1
	MOVE?CT	001h, _AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00312	                    write 6,1
	WRITEADDRESS?C	006h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00313	                    kanal4 = stkanal4 / 100 
	DIV?NCB	_STKanal4, 064h, _Kanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00314	            endif
	LABEL?L	L00062	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00315	     else
	GOTO?L	L00060
	LABEL?L	L00059	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00316	         bcklight = 1 
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00317	     endif
	LABEL?L	L00060	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00318	endif  
	LABEL?L	L00057	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00320	if odrzavanje = 1 then
	CMPNE?TCL	_odrzavanje, 001h, L00063

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00321	     if bcklight = 1 then  
	CMPNE?TCL	_BCKLIGHT, 001h, L00065

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00322	            OdrzavanjeMod  = 1 
	MOVE?CT	001h, _OdrzavanjeMod

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00323	            read 2,OdrzavanjeJacina 
	READADDRESS?C	002h
	READ?B	_OdrzavanjeJacina

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00324	            goto mododrzavanje
	GOTO?L	_mododrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00325	     else
	GOTO?L	L00066
	LABEL?L	L00065	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00326	        bcklight = 1 
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00327	     endif 
	LABEL?L	L00066	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00328	endif
	LABEL?L	L00063	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00330	if  tastlevo = 0 then
	CMPNE?TCL	_TASTLEVO, 000h, L00067

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00331	    levibrojac = levibrojac + 1
	ADD?BCB	_LeviBrojac, 001h, _LeviBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00332	    if levibrojac > 50 then  
	CMPLE?BCL	_LeviBrojac, 032h, L00069

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00333	        toggle relej1
	TOGGLE?T	_RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00334	        levibrojac = 0 
	MOVE?CB	000h, _LeviBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00335	    endif
	LABEL?L	L00069	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00336	else
	GOTO?L	L00068
	LABEL?L	L00067	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00337	    levibrojac = 0 
	MOVE?CB	000h, _LeviBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00338	endif
	LABEL?L	L00068	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00340	if  tastdesno = 0 then
	CMPNE?TCL	_TASTDESNO, 000h, L00071

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00341	    desnibrojac = desnibrojac + 1
	ADD?BCB	_DesniBrojac, 001h, _DesniBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00342	    if desnibrojac > 50 then  
	CMPLE?BCL	_DesniBrojac, 032h, L00073

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00343	        toggle relej2
	TOGGLE?T	_RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00344	        desnibrojac = 0
	MOVE?CB	000h, _DesniBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00345	    endif
	LABEL?L	L00073	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00346	else
	GOTO?L	L00072
	LABEL?L	L00071	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00347	    desnibrojac = 0
	MOVE?CB	000h, _DesniBrojac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00348	endif       
	LABEL?L	L00072	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00350	if automatskoakvarijum = 0 then 
	CMPNE?TCL	_AutomatskoAkvarijum, 000h, L00075

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00351	    read 100,kanal1
	READADDRESS?C	064h
	READ?B	_Kanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00352	    read 101,kanal2  
	READADDRESS?C	065h
	READ?B	_Kanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00353	    read 102,kanal3 
	READADDRESS?C	066h
	READ?B	_Kanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00354	    DutyCycleL1 =(Kanal1 * 1024)/100
	MUL?BCN	_Kanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00355	    DutyCycleL2 =(Kanal2 * 1024)/100
	MUL?BCN	_Kanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00356	    DutyCycleL3 =(Kanal3 * 1024)/100
	MUL?BCN	_Kanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00357	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00358	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00359	    @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00360	    akvarijum = "M"
	MOVE?CW	04Dh, _Akvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00361	else
	GOTO?L	L00076
	LABEL?L	L00075	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00362	    akvarijum = "A"
	MOVE?CW	041h, _Akvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00363	endif
	LABEL?L	L00076	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00365	if automatskosoba = 0 then   'onda je manuelno
	CMPNE?TCL	_AutomatskoSoba, 000h, L00077

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00366	    read 103,kanal4
	READADDRESS?C	067h
	READ?B	_Kanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00367	    DutyCycleL4 =(Kanal4 * 1024)/100
	MUL?BCN	_Kanal4, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00368	    @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00369	     soba = "M" 
	MOVE?CW	04Dh, _Soba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00370	else
	GOTO?L	L00078
	LABEL?L	L00077	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00371	     soba = "A" 
	MOVE?CW	041h, _Soba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00372	endif 
	LABEL?L	L00078	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00373	x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00374	if x < 90 then  DveTacke =  " " 
	CMPGE?BCL	_x, 05Ah, L00079
	MOVE?CB	020h, _DveTacke
	LABEL?L	L00079	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00375	if x > 90 and x < 170 then DveTacke = ":"
	CMPGT?BCB	_x, 05Ah, T1
	CMPLT?BCB	_x, 0AAh, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00081
	MOVE?CB	03Ah, _DveTacke
	LABEL?L	L00081	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00376	if x > 170 then x = 0 
	CMPLE?BCL	_x, 0AAh, L00083
	MOVE?CB	000h, _x
	LABEL?L	L00083	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00378	    if gore = 1 or dole = 1 or levo = 1 or desno = 1  or ok = 1 or odrzavanje = 1 then 
	CMPEQ?TCB	_gore, 001h, T1
	CMPEQ?TCB	_dole, 001h, T2
	LOR?BBN	T1, T2, T2
	CMPEQ?TCB	_levo, 001h, T3
	LOR?NBN	T2, T3, T3
	CMPEQ?TCB	_desno, 001h, T4
	LOR?NBN	T3, T4, T4
	CMPEQ?TCB	_ok, 001h, T5
	LOR?NBN	T4, T5, T5
	CMPEQ?TCB	_odrzavanje, 001h, T6
	LOR?NBN	T5, T6, T6
	CMPF?NL	T6, L00085

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00379	        BezTastera  =  0
	MOVE?CW	000h, _BezTastera

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00380	    endif 
	LABEL?L	L00085	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00382	    if BezTastera < 1700 then 
	CMPGE?WCL	_BezTastera, 0000006A4h, L00087

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00383	        BezTastera =  BezTastera + 1 
	ADD?WCW	_BezTastera, 001h, _BezTastera

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00384	        bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00385	     else
	GOTO?L	L00088
	LABEL?L	L00087	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00386	        bcklight = 0 
	MOVE?CT	000h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00387	    endif  
	LABEL?L	L00088	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00390	 if decsec > 10 and  decsec < 15 or decsec > 25 and decsec < 30 or decsec > 45 and decsec < 50 then  
	CMPGT?BCB	_DecSec, 00Ah, T1
	CMPLT?BCB	_DecSec, 00Fh, T2
	LAND?BBN	T1, T2, T2
	CMPGT?BCB	_DecSec, 019h, T3
	LOR?NBN	T2, T3, T3
	CMPLT?BCB	_DecSec, 01Eh, T4
	LAND?NBN	T3, T4, T4
	CMPGT?BCB	_DecSec, 02Dh, T5
	LOR?NBN	T4, T5, T5
	CMPLT?BCB	_DecSec, 032h, T6
	LAND?NBN	T5, T6, T6
	CMPF?NL	T6, L00089

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00391	        Lcdout $fe, 2 ,"AQUA-LED  ","T=",dec2 temperatura,223,"C"
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	041h
	LCDOUT?C	051h
	LCDOUT?C	055h
	LCDOUT?C	041h
	LCDOUT?C	02Dh
	LCDOUT?C	04Ch
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	054h
	LCDOUT?C	03Dh
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_Temperatura
	LCDOUTDEC?	
	LCDOUT?C	0DFh
	LCDOUT?C	043h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00392	 else
	GOTO?L	L00090
	LABEL?L	L00089	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00393	        Lcdout $fe, 2 ,"AQUA-LED   ",dec2 decsatglavni,DveTacke,dec2 decminutglavni
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	041h
	LCDOUT?C	051h
	LCDOUT?C	055h
	LCDOUT?C	041h
	LCDOUT?C	02Dh
	LCDOUT?C	04Ch
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSatglavni
	LCDOUTDEC?	
	LCDOUT?B	_DveTacke
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMinutGlavni
	LCDOUTDEC?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00394	 endif
	LABEL?L	L00090	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00396	        if relej1 = 1 and relej2 = 1 then lcdout $fe,$c0,"1=ON 2=ON    ",akvarijum, "#",soba
	CMPEQ?TCB	_RELEJ1, 001h, T1
	CMPEQ?TCB	_RELEJ2, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00091
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	031h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	032h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?W	_Akvarijum
	LCDOUT?C	023h
	LCDOUT?W	_Soba
	LABEL?L	L00091	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00397	        if relej1 = 1 and relej2 = 0 then lcdout $fe,$c0,"1=ON 2=OFF   ",akvarijum, "#",soba
	CMPEQ?TCB	_RELEJ1, 001h, T1
	CMPEQ?TCB	_RELEJ2, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00093
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	031h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	032h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?W	_Akvarijum
	LCDOUT?C	023h
	LCDOUT?W	_Soba
	LABEL?L	L00093	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00398	        if relej1 = 0 and relej2 = 0 then lcdout $fe,$c0,"1=OFF 2=OFF  ",akvarijum, "#",soba
	CMPEQ?TCB	_RELEJ1, 000h, T1
	CMPEQ?TCB	_RELEJ2, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00095
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	031h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	032h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?W	_Akvarijum
	LCDOUT?C	023h
	LCDOUT?W	_Soba
	LABEL?L	L00095	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00399	        if relej1 = 0 and relej2 = 1 then lcdout $fe,$c0,"1=OFF 2=ON   ",akvarijum, "#",soba
	CMPEQ?TCB	_RELEJ1, 000h, T1
	CMPEQ?TCB	_RELEJ2, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00097
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	031h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	032h
	LCDOUT?C	03Dh
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?W	_Akvarijum
	LCDOUT?C	023h
	LCDOUT?W	_Soba
	LABEL?L	L00097	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00401	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00402	goto Main 
	GOTO?L	_main

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00404	Kreni:

	LABEL?L	_kreni	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00406	    novostanjertc = DecMinutGlavni
	MOVE?BB	_DecMinutGlavni, _NovostanjeRTC

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00407	    TMinuta = (DecSatglavni * 60) + DecMinutGlavni
	MUL?BCN	_DecSatglavni, 03Ch, T1
	ADD?NBW	T1, _DecMinutGlavni, _TMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00408	    if novostanjeRTC <> starostanjeRTC then
	CMPEQ?BBL	_NovostanjeRTC, _StarostanjeRTC, L00099

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00409	          NoviMinut = 1
	MOVE?CB	001h, _NoviMinut

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00410	    else
	GOTO?L	L00100
	LABEL?L	L00099	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00411	          NoviMinut = 0
	MOVE?CB	000h, _NoviMinut

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00412	    endif
	LABEL?L	L00100	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00414	    satPocetak   = memorija[8] 
	MOVE?BB	_Memorija + 00008h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00415	    MinutPocetak = memorija[9]  
	MOVE?BB	_Memorija + 00009h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00416	    osvPocetak   = memorija[10]
	MOVE?BB	_Memorija + 0000Ah, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00417	    SatKraj      = memorija[12]  
	MOVE?BB	_Memorija + 0000Ch, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00418	    MinutKraj    = memorija[13]
	MOVE?BB	_Memorija + 0000Dh, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00419	    OsvKraj      = memorija[14]
	MOVE?BB	_Memorija + 0000Eh, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00421	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00422	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00423	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00101

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00425	       if Pminuta = tminuta and decsec = 0 then  
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00103

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00427	          stkanal1 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00428	       else
	GOTO?L	L00104
	LABEL?L	L00103	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00429	          if kminuta = tminuta and decsec = 0 then    
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00105

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00431	              stkanal1 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00432	          else
	GOTO?L	L00106
	LABEL?L	L00105	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00433	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00107

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00434	                 stkanal1 = stkanal1 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal1, T2, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00436	              endif
	LABEL?L	L00107	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00437	          endif
	LABEL?L	L00106	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00438	       endif
	LABEL?L	L00104	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00439	    endif
	LABEL?L	L00101	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00442	    satPocetak   = memorija[16] 
	MOVE?BB	_Memorija + 00010h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00443	    MinutPocetak = memorija[17]  
	MOVE?BB	_Memorija + 00011h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00444	    osvPocetak   = memorija[18] 
	MOVE?BB	_Memorija + 00012h, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00445	    SatKraj      = memorija[20]  
	MOVE?BB	_Memorija + 00014h, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00446	    MinutKraj    = memorija[21]  
	MOVE?BB	_Memorija + 00015h, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00447	    OsvKraj      = memorija[22]  
	MOVE?BB	_Memorija + 00016h, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00449	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00450	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00452	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00109

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00453	       if Pminuta = tminuta and decsec = 0 then 
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00111

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00455	          stkanal1 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00456	       else
	GOTO?L	L00112
	LABEL?L	L00111	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00457	          if kminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00113

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00459	              stkanal1 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00460	          else
	GOTO?L	L00114
	LABEL?L	L00113	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00461	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00115

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00462	                 stkanal1 = stkanal1 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal1, T2, _STKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00464	              endif
	LABEL?L	L00115	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00465	          endif
	LABEL?L	L00114	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00466	       endif
	LABEL?L	L00112	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00467	    endif 
	LABEL?L	L00109	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00469	    kanal1 = stkanal1 / 100 
	DIV?NCB	_STKanal1, 064h, _Kanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00471	    satPocetak   = memorija[24] 
	MOVE?BB	_Memorija + 00018h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00472	    MinutPocetak = memorija[25]  
	MOVE?BB	_Memorija + 00019h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00473	    osvPocetak   = memorija[26]
	MOVE?BB	_Memorija + 0001Ah, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00474	    SatKraj      = memorija[28]  
	MOVE?BB	_Memorija + 0001Ch, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00475	    MinutKraj    = memorija[29]
	MOVE?BB	_Memorija + 0001Dh, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00476	    OsvKraj      = memorija[30]
	MOVE?BB	_Memorija + 0001Eh, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00478	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00479	    KMinuta = (satkraj * 60) + minutkraj   
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00480	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00117

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00481	       if Pminuta = tminuta and decsec = 0 then  
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00119

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00483	          stkanal2 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00484	       else
	GOTO?L	L00120
	LABEL?L	L00119	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00485	          if kminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00121

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00487	              stkanal2 = osvkraj  * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00488	          else
	GOTO?L	L00122
	LABEL?L	L00121	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00489	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00123

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00490	                 stkanal2 = stkanal2 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal2, T2, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00492	              endif
	LABEL?L	L00123	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00493	          endif
	LABEL?L	L00122	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00494	       endif
	LABEL?L	L00120	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00495	    endif  
	LABEL?L	L00117	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00497	    satPocetak   = memorija[32] 
	MOVE?BB	_Memorija + 00020h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00498	    MinutPocetak = memorija[33]  
	MOVE?BB	_Memorija + 00021h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00499	    osvPocetak   = memorija[34] 
	MOVE?BB	_Memorija + 00022h, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00500	    SatKraj      = memorija[36]  
	MOVE?BB	_Memorija + 00024h, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00501	    MinutKraj    = memorija[37]  
	MOVE?BB	_Memorija + 00025h, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00502	    OsvKraj      = memorija[38]  
	MOVE?BB	_Memorija + 00026h, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00504	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00505	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00507	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00125

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00508	       if Pminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00127

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00510	          stkanal2 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00511	       else
	GOTO?L	L00128
	LABEL?L	L00127	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00512	          if kminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00129

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00514	              stkanal2 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00515	          else
	GOTO?L	L00130
	LABEL?L	L00129	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00516	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00131

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00517	                 stkanal2 = stkanal2 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal2, T2, _STKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00519	              endif
	LABEL?L	L00131	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00520	          endif
	LABEL?L	L00130	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00521	       endif
	LABEL?L	L00128	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00522	    endif
	LABEL?L	L00125	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00523	    kanal2 = stkanal2 / 100 
	DIV?NCB	_STKanal2, 064h, _Kanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00525	    satPocetak   = memorija[40] 
	MOVE?BB	_Memorija + 00028h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00526	    MinutPocetak = memorija[41]  
	MOVE?BB	_Memorija + 00029h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00527	    osvPocetak   = memorija[42]
	MOVE?BB	_Memorija + 0002Ah, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00528	    SatKraj      = memorija[44]  
	MOVE?BB	_Memorija + 0002Ch, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00529	    MinutKraj    = memorija[45]
	MOVE?BB	_Memorija + 0002Dh, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00530	    OsvKraj      = memorija[46]
	MOVE?BB	_Memorija + 0002Eh, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00532	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00533	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00535	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00133

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00536	       if Pminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00135

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00538	          stkanal3 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00539	       else
	GOTO?L	L00136
	LABEL?L	L00135	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00540	          if kminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00137

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00542	              stkanal3 = osvkraj * 100 
	MUL?BCN	_OsvKraj, 064h, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00543	          else
	GOTO?L	L00138
	LABEL?L	L00137	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00544	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00139

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00545	                 stkanal3 = stkanal3 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal3, T2, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00547	              endif
	LABEL?L	L00139	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00548	          endif
	LABEL?L	L00138	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00549	       endif
	LABEL?L	L00136	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00550	    endif 
	LABEL?L	L00133	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00552	    satPocetak   = memorija[48] 
	MOVE?BB	_Memorija + 00030h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00553	    MinutPocetak = memorija[49]  
	MOVE?BB	_Memorija + 00031h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00554	    osvPocetak   = memorija[50] 
	MOVE?BB	_Memorija + 00032h, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00555	    SatKraj      = memorija[52]  
	MOVE?BB	_Memorija + 00034h, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00556	    MinutKraj    = memorija[53]  
	MOVE?BB	_Memorija + 00035h, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00557	    OsvKraj      = memorija[54]  
	MOVE?BB	_Memorija + 00036h, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00559	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00560	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00562	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00141

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00563	       if Pminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00143

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00565	          stkanal3 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00566	       else
	GOTO?L	L00144
	LABEL?L	L00143	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00567	          if kminuta = tminuta and decsec = 0 then  
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00145

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00569	              stkanal3 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00570	          else
	GOTO?L	L00146
	LABEL?L	L00145	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00571	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00147

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00572	                 stkanal3 = stkanal3 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal3, T2, _STKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00574	              endif
	LABEL?L	L00147	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00575	          endif
	LABEL?L	L00146	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00576	       endif
	LABEL?L	L00144	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00577	    endif 
	LABEL?L	L00141	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00578	      kanal3 = stkanal3 / 100 
	DIV?NCB	_STKanal3, 064h, _Kanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00581	    satPocetak   = memorija[56] 
	MOVE?BB	_Memorija + 00038h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00582	    MinutPocetak = memorija[57]  
	MOVE?BB	_Memorija + 00039h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00583	    osvPocetak   = memorija[58]
	MOVE?BB	_Memorija + 0003Ah, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00584	    SatKraj      = memorija[60]  
	MOVE?BB	_Memorija + 0003Ch, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00585	    MinutKraj    = memorija[61]
	MOVE?BB	_Memorija + 0003Dh, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00586	    OsvKraj      = memorija[62]
	MOVE?BB	_Memorija + 0003Eh, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00588	    PMinuta = (satpocetak * 60) + minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00589	    KMinuta = (satkraj    * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00591	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00149

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00592	       if Pminuta = tminuta and decsec = 0 then 
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00151

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00594	          stkanal4 = osvpocetak  * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00595	       else
	GOTO?L	L00152
	LABEL?L	L00151	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00596	          if kminuta = tminuta and decsec = 0 then  
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00153

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00598	              stkanal4 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00599	          else
	GOTO?L	L00154
	LABEL?L	L00153	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00600	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00155

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00601	                 stkanal4 = stkanal4 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal4, T2, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00603	              endif
	LABEL?L	L00155	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00604	          endif
	LABEL?L	L00154	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00605	       endif
	LABEL?L	L00152	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00606	    endif 
	LABEL?L	L00149	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00608	    satPocetak   = memorija[64] 
	MOVE?BB	_Memorija + 00040h, _SatPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00609	    MinutPocetak = memorija[65]  
	MOVE?BB	_Memorija + 00041h, _MinutPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00610	    osvPocetak   = memorija[66] 
	MOVE?BB	_Memorija + 00042h, _OsvPocetak

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00611	    SatKraj      = memorija[68]  
	MOVE?BB	_Memorija + 00044h, _SatKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00612	    MinutKraj    = memorija[69]  
	MOVE?BB	_Memorija + 00045h, _MinutKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00613	    OsvKraj      = memorija[70]  
	MOVE?BB	_Memorija + 00046h, _OsvKraj

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00615	    PMinuta = (satpocetak * 60) + minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00616	    KMinuta = (satkraj    * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00618	if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00157

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00619	       if Pminuta = tminuta and decsec = 0 then   
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00159

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00621	          stkanal4 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00622	       else
	GOTO?L	L00160
	LABEL?L	L00159	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00623	          if kminuta = tminuta and decsec = 0 then  
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DecSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00161

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00625	              stkanal4 = osvkraj * 100
	MUL?BCN	_OsvKraj, 064h, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00626	          else
	GOTO?L	L00162
	LABEL?L	L00161	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00627	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00163

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00628	                 stkanal4 = stkanal4 - (((osvpocetak - osvkraj)*100 /(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal4, T2, _STKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00630	              endif
	LABEL?L	L00163	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00631	          endif
	LABEL?L	L00162	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00632	       endif
	LABEL?L	L00160	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00633	    endif
	LABEL?L	L00157	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00634	kanal4 = stkanal4 / 100   
	DIV?NCB	_STKanal4, 064h, _Kanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00635	if  pregrejan = 0 then   
	CMPNE?BCL	_pregrejan, 000h, L00165

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00636	        if odrzavanjemod = 0 then     
	CMPNE?TCL	_OdrzavanjeMod, 000h, L00167

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00637	            if AutomatskoAkvarijum  = 1 then 
	CMPNE?TCL	_AutomatskoAkvarijum, 001h, L00169

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00638	                 DutyCycleL1 =(kanal1 * 1024)/100
	MUL?BCN	_Kanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00639	                 DutyCycleL2 =(kanal2 * 1024)/100
	MUL?BCN	_Kanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00640	                 DutyCycleL3 =(kanal3 * 1024)/100
	MUL?BCN	_Kanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00641	                 @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00642	                 @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00643	                 @ HPWM10 1, _DutyCycleL3, _Frequency 

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency 

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00644	            endif
	LABEL?L	L00169	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00645	            if AutomatskoSoba  = 1 then 
	CMPNE?TCL	_AutomatskoSoba, 001h, L00171

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00646	                DutyCycleL4 =(Kanal4 * 1024)/100
	MUL?BCN	_Kanal4, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00647	                @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00648	            endif
	LABEL?L	L00171	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00650	        endif
	LABEL?L	L00167	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00651	endif    
	LABEL?L	L00165	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00653	if RelejiMemorija[1]  = DecSatglavni and RelejiMemorija[2] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 00001h, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 00002h, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00173

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00654	        relej1 = 1 
	MOVE?CT	001h, _RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00655	endif
	LABEL?L	L00173	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00656	if RelejiMemorija[3]  = DecSatglavni and RelejiMemorija[4] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 00003h, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 00004h, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00175

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00657	        relej1 = 0 
	MOVE?CT	000h, _RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00658	endif
	LABEL?L	L00175	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00661	if RelejiMemorija[5]  = DecSatglavni and RelejiMemorija[6] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 00005h, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 00006h, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00177

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00662	        relej1 = 1 
	MOVE?CT	001h, _RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00663	endif
	LABEL?L	L00177	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00664	if RelejiMemorija[7]  = DecSatglavni and RelejiMemorija[8] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 00007h, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 00008h, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00179

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00665	        relej1 = 0 
	MOVE?CT	000h, _RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00666	endif
	LABEL?L	L00179	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00669	if RelejiMemorija[9]  = DecSatglavni and RelejiMemorija[10] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 00009h, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 0000Ah, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00181

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00670	        relej2 = 1 
	MOVE?CT	001h, _RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00671	endif
	LABEL?L	L00181	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00672	if RelejiMemorija[11]  = DecSatglavni and RelejiMemorija[12] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 0000Bh, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 0000Ch, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00183

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00673	        relej2 = 0 
	MOVE?CT	000h, _RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00674	endif
	LABEL?L	L00183	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00677	if RelejiMemorija[13]  = DecSatglavni and RelejiMemorija[14] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 0000Dh, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 0000Eh, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00185

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00678	        relej2 = 1 
	MOVE?CT	001h, _RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00679	endif
	LABEL?L	L00185	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00680	if RelejiMemorija[15]  = DecSatglavni and RelejiMemorija[16] = DecMinutGlavni and decsec = 0 then 
	CMPEQ?BBB	_RelejiMemorija + 0000Fh, _DecSatglavni, T1
	CMPEQ?BBB	_RelejiMemorija + 00010h, _DecMinutGlavni, T2
	LAND?BBN	T1, T2, T2
	CMPEQ?BCB	_DecSec, 000h, T3
	LAND?NBN	T2, T3, T3
	CMPF?NL	T3, L00187

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00681	        relej2 = 0 
	MOVE?CT	000h, _RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00682	endif
	LABEL?L	L00187	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00684	    starostanjeRTC = novostanjeRTC 
	MOVE?BB	_NovostanjeRTC, _StarostanjeRTC

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00685	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00687	GlavniMeni:

	LABEL?L	_GlavniMeni	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00688	bcklight = 1  
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00689	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00691	  if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00189

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00692	     if x = 3 then 
	CMPNE?BCL	_x, 003h, L00191

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00693	        x = 3
	MOVE?CB	003h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00694	     else
	GOTO?L	L00192
	LABEL?L	L00191	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00695	        x = x + 1      
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00696	     endif
	LABEL?L	L00192	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00697	 endif
	LABEL?L	L00189	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00698	 if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00193

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00699	     if x = 1 then 
	CMPNE?BCL	_x, 001h, L00195

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00700	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00701	     else
	GOTO?L	L00196
	LABEL?L	L00195	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00702	        x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00703	     endif
	LABEL?L	L00196	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00704	 endif
	LABEL?L	L00193	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00705	 if levo = 1 then
	CMPNE?TCL	_levo, 001h, L00197

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00706	        beztastera = 0  
	MOVE?CW	000h, _BezTastera

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00707	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00708	        goto MAIN
	GOTO?L	_main

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00709	 endif
	LABEL?L	L00197	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00710	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00712	Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00713	    case 1                     
	CMPNE?BCL	_x, 001h, L00201

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00714	        Lcdout $fe, 2,Strelica ,"LED-light         "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	04Ch
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	02Dh
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00715	        lcdout $fe,$c0," Internal switch           "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	049h
	LCDOUT?C	06Eh
	LCDOUT?C	074h
	LCDOUT?C	065h
	LCDOUT?C	072h
	LCDOUT?C	06Eh
	LCDOUT?C	061h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	073h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00716	        if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00202

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00717	             x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00718	             goto LedPodMeni
	GOTO?L	_LedPodMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00719	        endif
	LABEL?L	L00202	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00720	    case 2            
	GOTO?L	L00200
	LABEL?L	L00201	
	CMPNE?BCL	_x, 002h, L00204

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00721	        Lcdout $fe, 2," LED-light        "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	04Ch
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	02Dh
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00722	        lcdout $fe,$c0,Strelica ,"Internal switch   "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	049h
	LCDOUT?C	06Eh
	LCDOUT?C	074h
	LCDOUT?C	065h
	LCDOUT?C	072h
	LCDOUT?C	06Eh
	LCDOUT?C	061h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	073h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00723	        if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00205

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00724	             X = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00725	             goto UnutrasnjiPrekidaci
	GOTO?L	_UnutrasnjiPrekidaci

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00726	        endif
	LABEL?L	L00205	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00727	    case 3                    
	GOTO?L	L00200
	LABEL?L	L00204	
	CMPNE?BCL	_x, 003h, L00207

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00728	        lcdout $fe,2,strelica,"Tools             "        
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	054h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Ch
	LCDOUT?C	073h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00729	        lcdout $fe,$c0,"                  "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00730	        if ok = 1 then      
	CMPNE?TCL	_ok, 001h, L00208

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00731	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00732	            goto Alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00733	        endif       
	LABEL?L	L00208	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00734	end select
	LABEL?L	L00207	
	LABEL?L	L00200	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00735	goto glavniMeni
	GOTO?L	_GlavniMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00737	LedPodMeni:

	LABEL?L	_LedPodMeni	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00738	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00739	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00741	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00210

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00742	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00212

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00743	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00744	         else
	GOTO?L	L00213
	LABEL?L	L00212	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00745	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00746	         endif
	LABEL?L	L00213	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00747	     endif
	LABEL?L	L00210	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00748	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00214

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00749	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00216

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00750	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00751	         else
	GOTO?L	L00217
	LABEL?L	L00216	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00752	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00753	         endif
	LABEL?L	L00217	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00754	     endif
	LABEL?L	L00214	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00755	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00218

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00756	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00757	         goto GlavniMeni
	GOTO?L	_GlavniMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00758	     endif
	LABEL?L	L00218	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00759	    Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00760	        case 1                                    
	CMPNE?BCL	_x, 001h, L00222

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00761	            Lcdout $fe, 2,Strelica ,"Automatic          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
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
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00762	            lcdout $fe,$c0," Manual              "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
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
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00763	            if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00223

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00764	                 x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00765	                 goto LedAutomaticIzbor
	GOTO?L	_LedAutomaticIzbor

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00766	            endif
	LABEL?L	L00223	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00767	        case 2          
	GOTO?L	L00221
	LABEL?L	L00222	
	CMPNE?BCL	_x, 002h, L00225

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00768	            Lcdout $fe, 2," Automatic           "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00769	            lcdout $fe,$c0,Strelica ,"Manual             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00770	            if ok = 1 then        
	CMPNE?TCL	_ok, 001h, L00226

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00771	                x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00772	                 goto LedManual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00773	            endif
	LABEL?L	L00226	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00774	     end select
	LABEL?L	L00225	
	LABEL?L	L00221	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00775	goto LedPodMeni
	GOTO?L	_LedPodMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00777	LedAutomaticIzbor:

	LABEL?L	_LedAutomaticIzbor	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00778	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00779	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00780	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00228

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00781	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00230

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00782	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00783	         else
	GOTO?L	L00231
	LABEL?L	L00230	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00784	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00785	         endif
	LABEL?L	L00231	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00786	     endif
	LABEL?L	L00228	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00787	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00232

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00788	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00234

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00789	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00790	         else
	GOTO?L	L00235
	LABEL?L	L00234	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00791	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00792	         endif
	LABEL?L	L00235	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00793	     endif
	LABEL?L	L00232	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00794	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00236

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00795	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00796	         goto LedPodMeni
	GOTO?L	_LedPodMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00797	     endif
	LABEL?L	L00236	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00799	    Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00800	        case 1                    
	CMPNE?BCL	_x, 001h, L00240

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00801	            Lcdout $fe, 2,Strelica ,"Aquarium light      "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	041h
	LCDOUT?C	071h
	LCDOUT?C	075h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00802	            lcdout $fe,$c0," Room light             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00803	            if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00241

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00804	                x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00805	                goto AquariumLight
	GOTO?L	_AquariumLight

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00806	            endif
	LABEL?L	L00241	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00807	        case 2             
	GOTO?L	L00239
	LABEL?L	L00240	
	CMPNE?BCL	_x, 002h, L00243

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00808	            Lcdout $fe, 2," Aquarium light     "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	071h
	LCDOUT?C	075h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00809	            lcdout $fe,$c0,Strelica ,"Room light          "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	052h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00810	            if ok = 1 then        
	CMPNE?TCL	_ok, 001h, L00244

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00811	                x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00812	                BrojKanala = 4
	MOVE?CB	004h, _BrojKanala

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00813	                goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00814	            endif    
	LABEL?L	L00244	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00815	    end select
	LABEL?L	L00243	
	LABEL?L	L00239	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00816	goto LedAutomaticIzbor
	GOTO?L	_LedAutomaticIzbor

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00818	AquariumLight:

	LABEL?L	_AquariumLight	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00819	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00820	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00821	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00246

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00822	         if x = 3 then 
	CMPNE?BCL	_x, 003h, L00248

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00823	            x = 3
	MOVE?CB	003h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00824	         else
	GOTO?L	L00249
	LABEL?L	L00248	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00825	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00826	         endif
	LABEL?L	L00249	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00827	     endif
	LABEL?L	L00246	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00828	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00250

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00829	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00252

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00830	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00831	         else
	GOTO?L	L00253
	LABEL?L	L00252	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00832	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00833	         endif
	LABEL?L	L00253	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00834	     endif
	LABEL?L	L00250	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00835	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00254

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00836	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00837	         goto LedAutomaticIzbor
	GOTO?L	_LedAutomaticIzbor

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00838	     endif
	LABEL?L	L00254	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00840	    Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00841	    case 1                  
	CMPNE?BCL	_x, 001h, L00258

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00842	        Lcdout $fe, 2,strelica,"Channel #1        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00843	        lcdout $fe,$c0," Channel #2        "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	043h
	LCDOUT?C	068h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Eh
	LCDOUT?C	065h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00844	        if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00259

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00845	            BrojKanala = 1
	MOVE?CB	001h, _BrojKanala

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00846	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00847	            goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00848	        endif
	LABEL?L	L00259	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00849	    case 2          
	GOTO?L	L00257
	LABEL?L	L00258	
	CMPNE?BCL	_x, 002h, L00261

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00850	        Lcdout $fe, 2," Channel #1       "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00851	        lcdout $fe,$c0,strelica,"Channel #2         "      
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	043h
	LCDOUT?C	068h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Eh
	LCDOUT?C	065h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00852	        if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00262

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00853	            BrojKanala = 2
	MOVE?CB	002h, _BrojKanala

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00854	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00855	            goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00856	        endif
	LABEL?L	L00262	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00857	    case 3                    
	GOTO?L	L00257
	LABEL?L	L00261	
	CMPNE?BCL	_x, 003h, L00264

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00858	        Lcdout $fe, 2,strelica,"Channel #3         "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	043h
	LCDOUT?C	068h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Eh
	LCDOUT?C	065h
	LCDOUT?C	06Ch
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00859	        lcdout $fe,$c0,"                 "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00860	        if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00265

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00861	            BrojKanala = 3 
	MOVE?CB	003h, _BrojKanala

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00862	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00863	            goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00864	        endif
	LABEL?L	L00265	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00865	   end select 
	LABEL?L	L00264	
	LABEL?L	L00257	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00866	goto AquariumLight
	GOTO?L	_AquariumLight

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00868	AquariumLightOdabir:

	LABEL?L	_AquariumLightOdabir	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00869	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00870	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00872	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00267

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00873	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00269

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00874	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00875	         else
	GOTO?L	L00270
	LABEL?L	L00269	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00876	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00877	         endif
	LABEL?L	L00270	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00878	     endif
	LABEL?L	L00267	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00880	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00271

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00881	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00273

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00882	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00883	         else
	GOTO?L	L00274
	LABEL?L	L00273	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00884	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00885	         endif
	LABEL?L	L00274	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00886	     endif
	LABEL?L	L00271	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00888	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00275

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00889	        if brojkanala = 4 then
	CMPNE?BCL	_BrojKanala, 004h, L00277

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00890	            x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00891	            goto LedAutomaticIzbor
	GOTO?L	_LedAutomaticIzbor

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00892	        else
	GOTO?L	L00278
	LABEL?L	L00277	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00893	            x = brojkanala
	MOVE?BB	_BrojKanala, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00894	            goto AquariumLight
	GOTO?L	_AquariumLight

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00895	        endif
	LABEL?L	L00278	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00896	     endif
	LABEL?L	L00275	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00897	Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00898	        case 1                                  
	CMPNE?BCL	_x, 001h, L00281

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00899	            Lcdout $fe, 2,strelica,"Sunrise          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00900	            lcdout $fe,$c0," Sunset           "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00901	        case 2       
	GOTO?L	L00280
	LABEL?L	L00281	
	CMPNE?BCL	_x, 002h, L00282

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00902	            Lcdout $fe, 2," Sunrise                  "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	073h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00903	            lcdout $fe,$c0,strelica,"Sunset             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Eh
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00904	end select                                             
	LABEL?L	L00282	
	LABEL?L	L00280	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00905	if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00283

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00906	if x = 1 then ModDanNoc = 0 
	CMPNE?BCL	_x, 001h, L00285
	MOVE?CT	000h, _ModDanNoc
	LABEL?L	L00285	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00907	if x = 2 then ModDanNoc = 1  
	CMPNE?BCL	_x, 002h, L00287
	MOVE?CT	001h, _ModDanNoc
	LABEL?L	L00287	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00908	   if brojkanala = 1 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 001h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00289

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00909	        read 8,decsat
	READADDRESS?C	008h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00910	        read 9,decmin
	READADDRESS?C	009h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00911	        read 10,JacinaOsvetljenja1
	READADDRESS?C	00Ah
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00913	        read 12,decsat1
	READADDRESS?C	00Ch
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00914	        read 13,decmin1
	READADDRESS?C	00Dh
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00915	        read 14,JacinaOsvetljenja2
	READADDRESS?C	00Eh
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00916	    endif
	LABEL?L	L00289	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00917	    if brojkanala = 1 and moddannoc  = 1 then
	CMPEQ?BCB	_BrojKanala, 001h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00291

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00918	        read 16,decsat
	READADDRESS?C	010h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00919	        read 17,decmin
	READADDRESS?C	011h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00920	        read 18,JacinaOsvetljenja1
	READADDRESS?C	012h
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00922	        read 20,decsat1
	READADDRESS?C	014h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00923	        read 21,decmin1
	READADDRESS?C	015h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00924	        read 22,JacinaOsvetljenja2
	READADDRESS?C	016h
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00925	    endif 
	LABEL?L	L00291	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00926	    if brojkanala = 2 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 002h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00293

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00927	        read 24,decsat
	READADDRESS?C	018h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00928	        read 25,decmin
	READADDRESS?C	019h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00929	        read 26,JacinaOsvetljenja1
	READADDRESS?C	01Ah
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00931	        read 28,decsat1
	READADDRESS?C	01Ch
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00932	        read 29,decmin1
	READADDRESS?C	01Dh
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00933	        read 30,JacinaOsvetljenja2
	READADDRESS?C	01Eh
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00934	    endif 
	LABEL?L	L00293	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00935	    if brojkanala = 2 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 002h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00295

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00936	        read 32,decsat
	READADDRESS?C	020h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00937	        read 33,decmin
	READADDRESS?C	021h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00938	        read 34,JacinaOsvetljenja1
	READADDRESS?C	022h
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00940	        read 36,decsat1
	READADDRESS?C	024h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00941	        read 37,decmin1
	READADDRESS?C	025h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00942	        read 38,JacinaOsvetljenja2
	READADDRESS?C	026h
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00943	    endif
	LABEL?L	L00295	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00944	    if brojkanala = 3 and moddannoc  = 0 then  
	CMPEQ?BCB	_BrojKanala, 003h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00297

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00945	        read 40,decsat
	READADDRESS?C	028h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00946	        read 41,decmin
	READADDRESS?C	029h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00947	        read 42,JacinaOsvetljenja1
	READADDRESS?C	02Ah
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00949	        read 44,decsat1
	READADDRESS?C	02Ch
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00950	        read 45,decmin1
	READADDRESS?C	02Dh
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00951	        read 46,JacinaOsvetljenja2
	READADDRESS?C	02Eh
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00952	    endif
	LABEL?L	L00297	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00953	    if brojkanala = 3 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 003h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00299

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00954	        read 48,decsat
	READADDRESS?C	030h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00955	        read 49,decmin
	READADDRESS?C	031h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00956	        read 50,JacinaOsvetljenja1
	READADDRESS?C	032h
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00958	        read 52,decsat1
	READADDRESS?C	034h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00959	        read 53,decmin1
	READADDRESS?C	035h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00960	        read 54,JacinaOsvetljenja2
	READADDRESS?C	036h
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00961	    endif 
	LABEL?L	L00299	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00962	    if brojkanala = 4 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 004h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00301

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00963	        read 56,decsat
	READADDRESS?C	038h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00964	        read 57,decmin
	READADDRESS?C	039h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00965	        read 58,JacinaOsvetljenja1
	READADDRESS?C	03Ah
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00967	        read 60,decsat1
	READADDRESS?C	03Ch
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00968	        read 61,decmin1
	READADDRESS?C	03Dh
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00969	        read 62,JacinaOsvetljenja2
	READADDRESS?C	03Eh
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00970	    endif 
	LABEL?L	L00301	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00971	    if brojkanala = 4 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 004h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00303

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00972	        read 64,decsat
	READADDRESS?C	040h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00973	        read 65,decmin
	READADDRESS?C	041h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00974	        read 66,JacinaOsvetljenja1
	READADDRESS?C	042h
	READ?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00976	        read 68,decsat1
	READADDRESS?C	044h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00977	        read 69,decmin1
	READADDRESS?C	045h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00978	        read 70,JacinaOsvetljenja2
	READADDRESS?C	046h
	READ?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00979	    endif 
	LABEL?L	L00303	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00981	    x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00982	    goto AquariumLightAutomatic 
	GOTO?L	_AquariumLightAutomatic

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00983	endif
	LABEL?L	L00283	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00984	goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00986	AquariumLightAutomatic:

	LABEL?L	_AquariumLightAutomatic	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00987	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00988	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00989	    if desno = 1 then 
	CMPNE?TCL	_desno, 001h, L00305

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00990	         if x = 6  then 
	CMPNE?BCL	_x, 006h, L00307

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00991	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00992	         else
	GOTO?L	L00308
	LABEL?L	L00307	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00993	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00994	         endif
	LABEL?L	L00308	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00995	    endif
	LABEL?L	L00305	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00996	    IF x = 1 THEN  
	CMPNE?BCL	_x, 001h, L00309

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00997	        displej[1] = strelica
	MOVE?CB	_Strelica, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00998	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	00999	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01000	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01001	        displej[5] = " "
	MOVE?CB	020h, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01002	        displej[6] = " "
	MOVE?CB	020h, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01003	     ENDIF
	LABEL?L	L00309	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01004	     IF x = 2 THEN
	CMPNE?BCL	_x, 002h, L00311

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01005	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01006	        displej[2] = strelica
	MOVE?CB	_Strelica, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01007	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01008	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01009	        displej[5] = " "
	MOVE?CB	020h, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01010	        displej[6] = " "
	MOVE?CB	020h, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01011	     endif 
	LABEL?L	L00311	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01012	     if x = 3 then
	CMPNE?BCL	_x, 003h, L00313

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01013	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01014	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01015	        displej[3] = strelica
	MOVE?CB	_Strelica, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01016	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01017	        displej[5] = " "
	MOVE?CB	020h, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01018	        displej[6] = " "
	MOVE?CB	020h, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01019	     endif
	LABEL?L	L00313	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01020	     if x = 4 then
	CMPNE?BCL	_x, 004h, L00315

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01021	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01022	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01023	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01024	        displej[4] = strelica
	MOVE?CB	_Strelica, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01025	        displej[5] = " "
	MOVE?CB	020h, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01026	        displej[6] = " "
	MOVE?CB	020h, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01027	     endif
	LABEL?L	L00315	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01028	     if x = 5 then
	CMPNE?BCL	_x, 005h, L00317

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01029	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01030	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01031	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01032	        displej[4] = " " 
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01033	        displej[5] = strelica
	MOVE?CB	_Strelica, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01034	        displej[6] = " "
	MOVE?CB	020h, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01036	     endif
	LABEL?L	L00317	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01037	     if x = 6 then
	CMPNE?BCL	_x, 006h, L00319

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01038	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01039	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01040	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01041	        displej[4] = " " 
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01042	        displej[5] = " "
	MOVE?CB	020h, _displej + 00005h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01043	        displej[6] = strelica
	MOVE?CB	_Strelica, _displej + 00006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01044	     endif
	LABEL?L	L00319	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01046	     if levo = 1 then
	CMPNE?TCL	_levo, 001h, L00321

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01047	        if ModDanNoc = 0 then 
	CMPNE?TCL	_ModDanNoc, 000h, L00323

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01048	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01049	        else
	GOTO?L	L00324
	LABEL?L	L00323	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01050	            x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01051	        endif 
	LABEL?L	L00324	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01052	        goto AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01053	     endif
	LABEL?L	L00321	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01056	      if tastgore = 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00325

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01057	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00327

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01058	            decsaT = decsat + 1
	ADD?BCB	_DecSat, 001h, _DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01059	            if decsat < 1 or decsat > 23 then decsat = 23
	CMPLT?BCB	_DecSat, 001h, T1
	CMPGT?BCB	_DecSat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00329
	MOVE?CB	017h, _DecSat
	LABEL?L	L00329	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01060	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01061	         endif
	LABEL?L	L00327	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01063	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00331

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01064	            decmin = decmin + 1
	ADD?BCB	_DecMin, 001h, _DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01065	            if decmin < 1 or decmin > 59 then decmin = 59   
	CMPLT?BCB	_DecMin, 001h, T1
	CMPGT?BCB	_DecMin, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00333
	MOVE?CB	03Bh, _DecMin
	LABEL?L	L00333	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01066	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01067	         endif
	LABEL?L	L00331	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01069	         if x = 3 then
	CMPNE?BCL	_x, 003h, L00335

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01070	            JacinaOsvetljenja1 = JacinaOsvetljenja1 + 1
	ADD?BCB	_JacinaOsvetljenja1, 001h, _JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01071	            if JacinaOsvetljenja1 < 1 or JacinaOsvetljenja1 > 100 then JacinaOsvetljenja1 = 100   
	CMPLT?BCB	_JacinaOsvetljenja1, 001h, T1
	CMPGT?BCB	_JacinaOsvetljenja1, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00337
	MOVE?CB	064h, _JacinaOsvetljenja1
	LABEL?L	L00337	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01072	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01073	         endif
	LABEL?L	L00335	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01075	         if x = 4 then
	CMPNE?BCL	_x, 004h, L00339

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01076	            decsaT1 = decsat1 + 1
	ADD?BCB	_DecSat1, 001h, _DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01077	            if decsat1 < 1 or decsat1 > 23 then decsat1 = 23
	CMPLT?BCB	_DecSat1, 001h, T1
	CMPGT?BCB	_DecSat1, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00341
	MOVE?CB	017h, _DecSat1
	LABEL?L	L00341	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01078	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01079	         endif
	LABEL?L	L00339	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01081	         if x = 5 then
	CMPNE?BCL	_x, 005h, L00343

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01082	            decmin1 = decmin1 + 1
	ADD?BCB	_DecMin1, 001h, _DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01083	            if decmin1 < 1 or decmin1 > 59 then decmin1 = 59   
	CMPLT?BCB	_DecMin1, 001h, T1
	CMPGT?BCB	_DecMin1, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00345
	MOVE?CB	03Bh, _DecMin1
	LABEL?L	L00345	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01084	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01085	         endif
	LABEL?L	L00343	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01087	         if x = 6 then
	CMPNE?BCL	_x, 006h, L00347

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01088	            JacinaOsvetljenja2 = JacinaOsvetljenja2 + 1
	ADD?BCB	_JacinaOsvetljenja2, 001h, _JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01089	            if JacinaOsvetljenja2 < 1 or JacinaOsvetljenja2 > 100 then JacinaOsvetljenja2 = 100  
	CMPLT?BCB	_JacinaOsvetljenja2, 001h, T1
	CMPGT?BCB	_JacinaOsvetljenja2, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00349
	MOVE?CB	064h, _JacinaOsvetljenja2
	LABEL?L	L00349	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01090	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01091	         endif
	LABEL?L	L00347	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01092	     endif
	LABEL?L	L00325	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01094	     if tastdole = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00351

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01095	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00353

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01096	            decsaT = decsat - 1
	SUB?BCB	_DecSat, 001h, _DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01097	            if decsat < 1 or decsat > 23 then decsat = 0
	CMPLT?BCB	_DecSat, 001h, T1
	CMPGT?BCB	_DecSat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00355
	MOVE?CB	000h, _DecSat
	LABEL?L	L00355	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01098	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01099	         endif
	LABEL?L	L00353	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01101	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00357

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01102	            decmin = decmin - 1
	SUB?BCB	_DecMin, 001h, _DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01103	            if decmin < 1 or decmin > 59 then decmin = 0   
	CMPLT?BCB	_DecMin, 001h, T1
	CMPGT?BCB	_DecMin, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00359
	MOVE?CB	000h, _DecMin
	LABEL?L	L00359	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01104	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01105	         endif
	LABEL?L	L00357	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01107	         if x = 3 then
	CMPNE?BCL	_x, 003h, L00361

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01108	            JacinaOsvetljenja1 = JacinaOsvetljenja1 - 1
	SUB?BCB	_JacinaOsvetljenja1, 001h, _JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01109	            if JacinaOsvetljenja1 < 1 or JacinaOsvetljenja1 > 100 then JacinaOsvetljenja1 = 0   
	CMPLT?BCB	_JacinaOsvetljenja1, 001h, T1
	CMPGT?BCB	_JacinaOsvetljenja1, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00363
	MOVE?CB	000h, _JacinaOsvetljenja1
	LABEL?L	L00363	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01110	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01111	         endif
	LABEL?L	L00361	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01113	         if x = 4 then
	CMPNE?BCL	_x, 004h, L00365

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01114	            decsaT1 = decsat1 - 1
	SUB?BCB	_DecSat1, 001h, _DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01115	            if decsat1 < 1 or decsat1 > 23 then decsat1 = 0
	CMPLT?BCB	_DecSat1, 001h, T1
	CMPGT?BCB	_DecSat1, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00367
	MOVE?CB	000h, _DecSat1
	LABEL?L	L00367	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01116	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01117	         endif
	LABEL?L	L00365	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01119	         if x = 5 then
	CMPNE?BCL	_x, 005h, L00369

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01120	            decmin1 = decmin1 - 1
	SUB?BCB	_DecMin1, 001h, _DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01121	            if decmin1 < 1 or decmin1 > 59 then decmin1 = 0   
	CMPLT?BCB	_DecMin1, 001h, T1
	CMPGT?BCB	_DecMin1, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00371
	MOVE?CB	000h, _DecMin1
	LABEL?L	L00371	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01122	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01123	         endif
	LABEL?L	L00369	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01125	         if x = 6 then
	CMPNE?BCL	_x, 006h, L00373

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01126	            JacinaOsvetljenja2 = JacinaOsvetljenja2 - 1
	SUB?BCB	_JacinaOsvetljenja2, 001h, _JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01127	            if JacinaOsvetljenja2 < 1 or JacinaOsvetljenja2 > 100 then JacinaOsvetljenja2 = 0  
	CMPLT?BCB	_JacinaOsvetljenja2, 001h, T1
	CMPGT?BCB	_JacinaOsvetljenja2, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00375
	MOVE?CB	000h, _JacinaOsvetljenja2
	LABEL?L	L00375	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01128	            pause PauzaZaTaster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01129	         endif
	LABEL?L	L00373	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01130	     endif
	LABEL?L	L00351	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01132	if ok = 1 then  
	CMPNE?TCL	_ok, 001h, L00377

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01133	    if brojkanala = 1 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 001h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00379

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01134	        write 8,decsat
	WRITEADDRESS?C	008h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01135	        write 9,decmin
	WRITEADDRESS?C	009h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01136	        write 10,JacinaOsvetljenja1
	WRITEADDRESS?C	00Ah
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01138	        write 12,decsat1
	WRITEADDRESS?C	00Ch
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01139	        write 13,decmin1
	WRITEADDRESS?C	00Dh
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01140	        write 14,JacinaOsvetljenja2
	WRITEADDRESS?C	00Eh
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01141	    endif
	LABEL?L	L00379	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01142	    if brojkanala = 1 and moddannoc  = 1 then
	CMPEQ?BCB	_BrojKanala, 001h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00381

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01143	        write 16,decsat
	WRITEADDRESS?C	010h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01144	        write 17,decmin
	WRITEADDRESS?C	011h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01145	        write 18,JacinaOsvetljenja1
	WRITEADDRESS?C	012h
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01147	        write 20,decsat1
	WRITEADDRESS?C	014h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01148	        write 21,decmin1
	WRITEADDRESS?C	015h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01149	        write 22,JacinaOsvetljenja2
	WRITEADDRESS?C	016h
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01150	    endif 
	LABEL?L	L00381	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01152	    if brojkanala = 2 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 002h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00383

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01153	        write 24,decsat
	WRITEADDRESS?C	018h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01154	        write 25,decmin
	WRITEADDRESS?C	019h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01155	        write 26,JacinaOsvetljenja1
	WRITEADDRESS?C	01Ah
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01157	        write 28,decsat1
	WRITEADDRESS?C	01Ch
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01158	        write 29,decmin1
	WRITEADDRESS?C	01Dh
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01159	        write 30,JacinaOsvetljenja2
	WRITEADDRESS?C	01Eh
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01160	    endif 
	LABEL?L	L00383	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01161	    if brojkanala = 2 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 002h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00385

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01162	        write 32,decsat
	WRITEADDRESS?C	020h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01163	        write 33,decmin
	WRITEADDRESS?C	021h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01164	        write 34,JacinaOsvetljenja1
	WRITEADDRESS?C	022h
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01166	        write 36,decsat1
	WRITEADDRESS?C	024h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01167	        write 37,decmin1
	WRITEADDRESS?C	025h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01168	        write 38,JacinaOsvetljenja2
	WRITEADDRESS?C	026h
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01169	    endif
	LABEL?L	L00385	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01171	    if brojkanala = 3 and moddannoc  = 0 then  
	CMPEQ?BCB	_BrojKanala, 003h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00387

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01172	        write 40,decsat
	WRITEADDRESS?C	028h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01173	        write 41,decmin
	WRITEADDRESS?C	029h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01174	        write 42,JacinaOsvetljenja1
	WRITEADDRESS?C	02Ah
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01176	        write 44,decsat1
	WRITEADDRESS?C	02Ch
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01177	        write 45,decmin1
	WRITEADDRESS?C	02Dh
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01178	        write 46,JacinaOsvetljenja2
	WRITEADDRESS?C	02Eh
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01179	    endif
	LABEL?L	L00387	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01180	    if brojkanala = 3 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 003h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00389

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01181	        write 48,decsat
	WRITEADDRESS?C	030h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01182	        write 49,decmin
	WRITEADDRESS?C	031h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01183	        write 50,JacinaOsvetljenja1
	WRITEADDRESS?C	032h
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01185	        write 52,decsat1
	WRITEADDRESS?C	034h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01186	        write 53,decmin1
	WRITEADDRESS?C	035h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01187	        write 54,JacinaOsvetljenja2
	WRITEADDRESS?C	036h
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01188	    endif 
	LABEL?L	L00389	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01190	    if brojkanala = 4 and moddannoc  = 0 then 
	CMPEQ?BCB	_BrojKanala, 004h, T1
	CMPEQ?TCB	_ModDanNoc, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00391

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01191	        write 56,decsat
	WRITEADDRESS?C	038h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01192	        write 57,decmin
	WRITEADDRESS?C	039h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01193	        write 58,JacinaOsvetljenja1
	WRITEADDRESS?C	03Ah
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01195	        write 60,decsat1
	WRITEADDRESS?C	03Ch
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01196	        write 61,decmin1
	WRITEADDRESS?C	03Dh
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01197	        write 62,JacinaOsvetljenja2
	WRITEADDRESS?C	03Eh
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01198	    endif 
	LABEL?L	L00391	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01199	    if brojkanala = 4 and moddannoc  = 1 then 
	CMPEQ?BCB	_BrojKanala, 004h, T1
	CMPEQ?TCB	_ModDanNoc, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00393

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01200	        write 64,decsat
	WRITEADDRESS?C	040h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01201	        write 65,decmin
	WRITEADDRESS?C	041h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01202	        write 66,JacinaOsvetljenja1
	WRITEADDRESS?C	042h
	WRITE?B	_JacinaOsvetljenja1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01204	        write 68,decsat1
	WRITEADDRESS?C	044h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01205	        write 69,decmin1
	WRITEADDRESS?C	045h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01206	        write 70,JacinaOsvetljenja2
	WRITEADDRESS?C	046h
	WRITE?B	_JacinaOsvetljenja2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01207	    endif 
	LABEL?L	L00393	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01208	     gosub EEpromMemorija
	GOSUB?L	_EEpromMemorija

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01209	     gosub sacuvano
	GOSUB?L	_sacuvano

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01211	     if ModDanNoc = 0 then 
	CMPNE?TCL	_ModDanNoc, 000h, L00395

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01212	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01213	     else
	GOTO?L	L00396
	LABEL?L	L00395	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01214	            x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01215	     endif 
	LABEL?L	L00396	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01216	goto  AquariumLightOdabir
	GOTO?L	_AquariumLightOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01218	endif    
	LABEL?L	L00377	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01220	    Lcdout $fe, 2, "S:",displej[1],dec2 decsat,":",displej[2],dec2 decmin,"-",displej[3],dec3 JacinaOsvetljenja1,"%    "  
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSat
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00002h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMin
	LCDOUTDEC?	
	LCDOUT?C	02Dh
	LCDOUT?B	_displej + 00003h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_JacinaOsvetljenja1
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01221	    lcdout $fe,$c0,"E:",displej[4],dec2 DecSat1,":",displej[5],dec2 DecMin1,"-",displej[6],dec3 JacinaOsvetljenja2,"%  "  
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	045h
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00004h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSat1
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00005h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMin1
	LCDOUTDEC?	
	LCDOUT?C	02Dh
	LCDOUT?B	_displej + 00006h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_JacinaOsvetljenja2
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01222	 goto AquariumLightAutomatic
	GOTO?L	_AquariumLightAutomatic

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01224	UnutrasnjiPrekidaci:

	LABEL?L	_UnutrasnjiPrekidaci	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01225	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01226	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01227	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00397

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01228	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00399

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01229	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01230	         else
	GOTO?L	L00400
	LABEL?L	L00399	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01231	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01232	         endif
	LABEL?L	L00400	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01233	     endif
	LABEL?L	L00397	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01234	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00401

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01235	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00403

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01236	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01237	         else
	GOTO?L	L00404
	LABEL?L	L00403	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01238	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01239	         endif
	LABEL?L	L00404	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01240	     endif
	LABEL?L	L00401	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01241	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00405

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01242	        x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01243	         goto GlavniMeni
	GOTO?L	_GlavniMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01244	     endif
	LABEL?L	L00405	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01245	Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01246	        case 1 
	CMPNE?BCL	_x, 001h, L00409

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01247	            Lcdout $fe, 2,Strelica ,"Switch #1          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	053h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01248	            lcdout $fe,$c0," Switch #2                 "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01249	            if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00410

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01250	                Prekidac = 0
	MOVE?CT	000h, _Prekidac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01251	                Pozicija = 1
	MOVE?CB	001h, _Pozicija

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01252	                x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01253	                goto UnutrasnjiPrekidacOdabir
	GOTO?L	_UnutrasnjiPrekidacOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01254	            endif
	LABEL?L	L00410	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01255	        case 2 
	GOTO?L	L00408
	LABEL?L	L00409	
	CMPNE?BCL	_x, 002h, L00412

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01256	            Lcdout $fe, 2," Switch #1         "            
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01257	            lcdout $fe,$c0,Strelica ,"Switch #2         "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	053h
	LCDOUT?C	077h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01258	            if ok  = 1 then
	CMPNE?TCL	_ok, 001h, L00413

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01259	                Prekidac = 1 
	MOVE?CT	001h, _Prekidac

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01260	                Pozicija = 2
	MOVE?CB	002h, _Pozicija

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01261	                x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01262	                goto UnutrasnjiPrekidacOdabir
	GOTO?L	_UnutrasnjiPrekidacOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01263	            endif
	LABEL?L	L00413	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01264	end select
	LABEL?L	L00412	
	LABEL?L	L00408	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01265	goto UnutrasnjiPrekidaci
	GOTO?L	_UnutrasnjiPrekidaci

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01267	UnutrasnjiPrekidacOdabir:

	LABEL?L	_UnutrasnjiPrekidacOdabir	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01268	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01269	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01270	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00415

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01271	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00417

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01272	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01273	         else
	GOTO?L	L00418
	LABEL?L	L00417	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01274	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01275	         endif
	LABEL?L	L00418	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01276	     endif
	LABEL?L	L00415	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01277	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00419

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01278	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00421

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01279	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01280	         else
	GOTO?L	L00422
	LABEL?L	L00421	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01281	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01282	         endif
	LABEL?L	L00422	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01283	     endif
	LABEL?L	L00419	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01284	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00423

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01285	         x = pozicija
	MOVE?BB	_Pozicija, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01286	         goto UnutrasnjiPrekidaci
	GOTO?L	_UnutrasnjiPrekidaci

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01287	     endif
	LABEL?L	L00423	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01289	    Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01290	    case 1 
	CMPNE?BCL	_x, 001h, L00427

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01291	            Lcdout $fe, 2,Strelica ,"Time 1             "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	054h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	031h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01292	            lcdout $fe,$c0," Time 2                    "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	054h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	032h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01293	    case 2 
	GOTO?L	L00426
	LABEL?L	L00427	
	CMPNE?BCL	_x, 002h, L00428

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01294	            Lcdout $fe, 2," Time 1                  "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	054h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	031h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01295	            lcdout $fe,$c0,Strelica ,"Time 2              "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	054h
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	032h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01296	    end select
	LABEL?L	L00428	
	LABEL?L	L00426	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01298	if ok = 1 then  
	CMPNE?TCL	_ok, 001h, L00429

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01299	    if x = 1 then VremePrekidaca = 0
	CMPNE?BCL	_x, 001h, L00431
	MOVE?CT	000h, _VremePrekidaca
	LABEL?L	L00431	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01300	    if x = 2 then VremePrekidaca = 1
	CMPNE?BCL	_x, 002h, L00433
	MOVE?CT	001h, _VremePrekidaca
	LABEL?L	L00433	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01301	    if Prekidac = 0 and VremePrekidaca  = 0 then 
	CMPEQ?TCB	_Prekidac, 000h, T1
	CMPEQ?TCB	_VremePrekidaca, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00435

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01302	        read 74,decsat
	READADDRESS?C	04Ah
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01303	        read 75,decmin
	READADDRESS?C	04Bh
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01305	        read 76,decsat1
	READADDRESS?C	04Ch
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01306	        read 77,decmin1
	READADDRESS?C	04Dh
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01307	     endif
	LABEL?L	L00435	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01309	     if Prekidac = 0 and VremePrekidaca  = 1 then 
	CMPEQ?TCB	_Prekidac, 000h, T1
	CMPEQ?TCB	_VremePrekidaca, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00437

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01310	        read 78,decsat
	READADDRESS?C	04Eh
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01311	        read 79,decmin
	READADDRESS?C	04Fh
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01313	        read 80,decsat1
	READADDRESS?C	050h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01314	        read 81,decmin1
	READADDRESS?C	051h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01315	     endif
	LABEL?L	L00437	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01317	     if Prekidac = 1 and VremePrekidaca  = 0 then 
	CMPEQ?TCB	_Prekidac, 001h, T1
	CMPEQ?TCB	_VremePrekidaca, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00439

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01318	        read 82,decsat
	READADDRESS?C	052h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01319	        read 83,decmin
	READADDRESS?C	053h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01321	        read 84,decsat1
	READADDRESS?C	054h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01322	        read 85,decmin1
	READADDRESS?C	055h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01323	     endif
	LABEL?L	L00439	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01325	     if Prekidac = 1 and VremePrekidaca  = 1 then 
	CMPEQ?TCB	_Prekidac, 001h, T1
	CMPEQ?TCB	_VremePrekidaca, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00441

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01326	        read 86,decsat
	READADDRESS?C	056h
	READ?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01327	        read 87,decmin
	READADDRESS?C	057h
	READ?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01329	        read 88,decsat1
	READADDRESS?C	058h
	READ?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01330	        read 89,decmin1
	READADDRESS?C	059h
	READ?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01331	     endif
	LABEL?L	L00441	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01333	    if VremePrekidaca = 0 then 
	CMPNE?TCL	_VremePrekidaca, 000h, L00443

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01334	         x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01335	    else
	GOTO?L	L00444
	LABEL?L	L00443	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01336	         x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01337	    endif
	LABEL?L	L00444	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01338	    goto UnutrasnjiPrekidacPodesavanje
	GOTO?L	_UnutrasnjiPrekidacPodesavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01339	endif
	LABEL?L	L00429	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01340	goto UnutrasnjiPrekidacOdabir
	GOTO?L	_UnutrasnjiPrekidacOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01342	UnutrasnjiPrekidacPodesavanje:

	LABEL?L	_UnutrasnjiPrekidacPodesavanje	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01343	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01344	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01345	    if desno = 1 then 
	CMPNE?TCL	_desno, 001h, L00445

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01346	         if x = 4  then 
	CMPNE?BCL	_x, 004h, L00447

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01347	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01348	         else
	GOTO?L	L00448
	LABEL?L	L00447	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01349	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01350	         endif
	LABEL?L	L00448	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01351	    endif
	LABEL?L	L00445	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01352	    IF x = 1 THEN  
	CMPNE?BCL	_x, 001h, L00449

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01353	        displej[1] = strelica
	MOVE?CB	_Strelica, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01354	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01355	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01356	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01357	     ENDIF
	LABEL?L	L00449	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01358	     IF x = 2 THEN
	CMPNE?BCL	_x, 002h, L00451

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01359	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01360	        displej[2] = strelica
	MOVE?CB	_Strelica, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01361	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01362	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01363	     endif 
	LABEL?L	L00451	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01364	     if x = 3 then
	CMPNE?BCL	_x, 003h, L00453

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01365	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01366	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01367	        displej[3] = strelica
	MOVE?CB	_Strelica, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01368	        displej[4] = " "
	MOVE?CB	020h, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01369	     endif
	LABEL?L	L00453	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01370	     if x = 4 then
	CMPNE?BCL	_x, 004h, L00455

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01371	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01372	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01373	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01374	        displej[4] = strelica
	MOVE?CB	_Strelica, _displej + 00004h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01375	     endif
	LABEL?L	L00455	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01376	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00457

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01377	         goto UnutrasnjiPrekidacOdabir
	GOTO?L	_UnutrasnjiPrekidacOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01378	     endif
	LABEL?L	L00457	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01379	    if tastgore = 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00459

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01380	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00461

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01381	            decsaT = decsat + 1
	ADD?BCB	_DecSat, 001h, _DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01382	            if decsat > 23 then decsat = 23
	CMPLE?BCL	_DecSat, 017h, L00463
	MOVE?CB	017h, _DecSat
	LABEL?L	L00463	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01383	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01384	         endif
	LABEL?L	L00461	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01386	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00465

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01387	            decmin = decmin + 1
	ADD?BCB	_DecMin, 001h, _DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01388	            if decmin > 59 then decmin = 59
	CMPLE?BCL	_DecMin, 03Bh, L00467
	MOVE?CB	03Bh, _DecMin
	LABEL?L	L00467	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01389	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01390	         endif
	LABEL?L	L00465	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01392	         if x = 3 then
	CMPNE?BCL	_x, 003h, L00469

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01393	            decsaT1 = decsat1 + 1
	ADD?BCB	_DecSat1, 001h, _DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01394	            if decsat1 > 23 then decsat1 = 23
	CMPLE?BCL	_DecSat1, 017h, L00471
	MOVE?CB	017h, _DecSat1
	LABEL?L	L00471	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01395	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01396	         endif
	LABEL?L	L00469	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01398	         if x = 4 then
	CMPNE?BCL	_x, 004h, L00473

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01399	            decmin1 = decmin1 + 1
	ADD?BCB	_DecMin1, 001h, _DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01400	            if decmin1 > 59 then decmin1 = 59
	CMPLE?BCL	_DecMin1, 03Bh, L00475
	MOVE?CB	03Bh, _DecMin1
	LABEL?L	L00475	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01401	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01402	         endif
	LABEL?L	L00473	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01403	     endif
	LABEL?L	L00459	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01404	     if tastdole = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00477

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01405	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00479

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01406	            decsaT = decsat - 1
	SUB?BCB	_DecSat, 001h, _DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01407	            if decsat < 1 or decsat > 23 then decsat = 0
	CMPLT?BCB	_DecSat, 001h, T1
	CMPGT?BCB	_DecSat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00481
	MOVE?CB	000h, _DecSat
	LABEL?L	L00481	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01408	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01409	         endif
	LABEL?L	L00479	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01411	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00483

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01412	            decmin = decmin - 1
	SUB?BCB	_DecMin, 001h, _DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01413	            if decmin < 1 or decmin > 59 then decmin = 0   
	CMPLT?BCB	_DecMin, 001h, T1
	CMPGT?BCB	_DecMin, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00485
	MOVE?CB	000h, _DecMin
	LABEL?L	L00485	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01414	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01415	         endif
	LABEL?L	L00483	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01416	         if x = 3 then
	CMPNE?BCL	_x, 003h, L00487

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01417	            decsaT1 = decsat1 - 1
	SUB?BCB	_DecSat1, 001h, _DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01418	            if decsat1 < 1 or decsat1 > 23 then decsat1 = 0
	CMPLT?BCB	_DecSat1, 001h, T1
	CMPGT?BCB	_DecSat1, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00489
	MOVE?CB	000h, _DecSat1
	LABEL?L	L00489	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01419	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01420	         endif
	LABEL?L	L00487	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01422	         if x = 4 then
	CMPNE?BCL	_x, 004h, L00491

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01423	            decmin1 = decmin1 - 1
	SUB?BCB	_DecMin1, 001h, _DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01424	            if decmin1 < 1 or decmin1 > 59 then decmin1 = 0   
	CMPLT?BCB	_DecMin1, 001h, T1
	CMPGT?BCB	_DecMin1, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00493
	MOVE?CB	000h, _DecMin1
	LABEL?L	L00493	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01425	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01426	         endif
	LABEL?L	L00491	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01427	     endif
	LABEL?L	L00477	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01428	if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00495

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01429	     if Prekidac = 0 and VremePrekidaca  = 0 then 
	CMPEQ?TCB	_Prekidac, 000h, T1
	CMPEQ?TCB	_VremePrekidaca, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00497

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01430	        write 74,decsat
	WRITEADDRESS?C	04Ah
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01431	        write 75,decmin
	WRITEADDRESS?C	04Bh
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01433	        write 76,decsat1
	WRITEADDRESS?C	04Ch
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01434	        write 77,decmin1
	WRITEADDRESS?C	04Dh
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01435	     endif
	LABEL?L	L00497	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01437	     if Prekidac = 0 and VremePrekidaca  = 1 then 
	CMPEQ?TCB	_Prekidac, 000h, T1
	CMPEQ?TCB	_VremePrekidaca, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00499

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01438	        write 78,decsat
	WRITEADDRESS?C	04Eh
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01439	        write 79,decmin
	WRITEADDRESS?C	04Fh
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01441	        write 80,decsat1
	WRITEADDRESS?C	050h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01442	        write 81,decmin1
	WRITEADDRESS?C	051h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01443	     endif
	LABEL?L	L00499	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01445	     if Prekidac = 1 and VremePrekidaca  = 0 then 
	CMPEQ?TCB	_Prekidac, 001h, T1
	CMPEQ?TCB	_VremePrekidaca, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00501

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01446	        write 82,decsat
	WRITEADDRESS?C	052h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01447	        write 83,decmin
	WRITEADDRESS?C	053h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01449	        write 84,decsat1
	WRITEADDRESS?C	054h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01450	        write 85,decmin1
	WRITEADDRESS?C	055h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01451	     endif
	LABEL?L	L00501	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01453	     if Prekidac = 1 and VremePrekidaca  = 1 then 
	CMPEQ?TCB	_Prekidac, 001h, T1
	CMPEQ?TCB	_VremePrekidaca, 001h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00503

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01454	        write 86,decsat
	WRITEADDRESS?C	056h
	WRITE?B	_DecSat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01455	        write 87,decmin
	WRITEADDRESS?C	057h
	WRITE?B	_DecMin

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01457	        write 88,decsat1
	WRITEADDRESS?C	058h
	WRITE?B	_DecSat1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01458	        write 89,decmin1
	WRITEADDRESS?C	059h
	WRITE?B	_DecMin1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01459	     endif
	LABEL?L	L00503	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01460	        if VremePrekidaca = 0 then 
	CMPNE?TCL	_VremePrekidaca, 000h, L00505

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01461	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01462	        else
	GOTO?L	L00506
	LABEL?L	L00505	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01463	            x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01464	        endif
	LABEL?L	L00506	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01466	        gosub EEpromMemorija
	GOSUB?L	_EEpromMemorija

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01467	        gosub sacuvano
	GOSUB?L	_sacuvano

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01468	        goto UnutrasnjiPrekidacOdabir
	GOTO?L	_UnutrasnjiPrekidacOdabir

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01469	endif
	LABEL?L	L00495	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01471	   Lcdout $fe, 2, "ON: ",displej[1],dec2 decsat,":",displej[2],dec2 decmin,"   "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	03Ah
	LCDOUT?C	020h
	LCDOUT?B	_displej + 00001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSat
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00002h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMin
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01472	   lcdout $fe,$c0,"OFF:",displej[3],dec2 DecSat1,":",displej[4],dec2 DecMin1,"   "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00003h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSat1
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00004h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMin1
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01473	goto UnutrasnjiPrekidacPodesavanje
	GOTO?L	_UnutrasnjiPrekidacPodesavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01475	LedManual:

	LABEL?L	_LedManual	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01476	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01477	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01478	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00507

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01479	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00509

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01480	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01481	         else
	GOTO?L	L00510
	LABEL?L	L00509	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01482	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01483	         endif
	LABEL?L	L00510	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01484	     endif
	LABEL?L	L00507	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01485	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00511

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01486	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00513

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01487	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01488	         else
	GOTO?L	L00514
	LABEL?L	L00513	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01489	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01490	         endif
	LABEL?L	L00514	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01491	     endif
	LABEL?L	L00511	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01492	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00515

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01493	        x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01494	         goto LedPodMeni
	GOTO?L	_LedPodMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01495	     endif
	LABEL?L	L00515	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01497	    Select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01498	    case 1 
	CMPNE?BCL	_x, 001h, L00519

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01499	        Lcdout $fe, 2,Strelica ,"Aquarium light      "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
	LCDOUT?C	041h
	LCDOUT?C	071h
	LCDOUT?C	075h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01500	        lcdout $fe,$c0," Room light            "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01501	        if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00520

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01502	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01503	            automatskoakvarijum = 0
	MOVE?CT	000h, _AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01504	            read 100,rkanal1
	READADDRESS?C	064h
	READ?B	_Rkanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01505	            read 101,rkanal2
	READADDRESS?C	065h
	READ?B	_Rkanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01506	            read 102,rkanal3
	READADDRESS?C	066h
	READ?B	_Rkanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01507	            goto RucnoSvetlo
	GOTO?L	_RucnoSvetlo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01508	        endif
	LABEL?L	L00520	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01509	    case 2 
	GOTO?L	L00518
	LABEL?L	L00519	
	CMPNE?BCL	_x, 002h, L00522

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01510	        Lcdout $fe, 2," Aquarium light      "           
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	071h
	LCDOUT?C	075h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01511	        lcdout $fe,$c0,Strelica ,"Room light      "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	052h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01512	        if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00523

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01513	            automatskosoba = 0
	MOVE?CT	000h, _AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01514	            read 103,x
	READADDRESS?C	067h
	READ?B	_x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01515	            goto RoomLight
	GOTO?L	_RoomLight

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01516	        endif
	LABEL?L	L00523	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01517	    end select
	LABEL?L	L00522	
	LABEL?L	L00518	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01518	goto ledmanual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01520	RucnoSvetlo:

	LABEL?L	_RucnoSvetlo	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01521	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01522	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01524	    if desno = 1 then 
	CMPNE?TCL	_desno, 001h, L00525

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01525	         if x = 3 then 
	CMPNE?BCL	_x, 003h, L00527

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01526	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01527	         else
	GOTO?L	L00528
	LABEL?L	L00527	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01528	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01529	         endif
	LABEL?L	L00528	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01530	    endif
	LABEL?L	L00525	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01532	    if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00529

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01533	         read 5,automatskoakvarijum 
	READADDRESS?C	005h
	READ?T	_AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01534	         x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01535	         goto LedManual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01536	    endif
	LABEL?L	L00529	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01538	     IF x = 1 THEN  
	CMPNE?BCL	_x, 001h, L00531

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01539	        displej[1] = strelica
	MOVE?CB	_Strelica, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01540	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01541	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01542	     ENDIF
	LABEL?L	L00531	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01543	     IF x = 2 THEN
	CMPNE?BCL	_x, 002h, L00533

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01544	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01545	        displej[2] = strelica
	MOVE?CB	_Strelica, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01546	        displej[3] = " "
	MOVE?CB	020h, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01547	     endif 
	LABEL?L	L00533	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01548	     if x = 3 then
	CMPNE?BCL	_x, 003h, L00535

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01549	        displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01550	        displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01551	        displej[3] = strelica
	MOVE?CB	_Strelica, _displej + 00003h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01552	     endif
	LABEL?L	L00535	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01554	     if tastgore = 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00537

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01555	            if x = 1 then
	CMPNE?BCL	_x, 001h, L00539

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01556	                Rkanal1 = Rkanal1 + 1 
	ADD?BCB	_Rkanal1, 001h, _Rkanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01557	                if Rkanal1 > 100 then rkanal1 = 100 
	CMPLE?BCL	_Rkanal1, 064h, L00541
	MOVE?CB	064h, _Rkanal1
	LABEL?L	L00541	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01559	            endif
	LABEL?L	L00539	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01561	            if x = 2 then
	CMPNE?BCL	_x, 002h, L00543

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01562	                Rkanal2 = Rkanal2 + 1
	ADD?BCB	_Rkanal2, 001h, _Rkanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01563	                if Rkanal2 > 100 then rkanal2 = 100 
	CMPLE?BCL	_Rkanal2, 064h, L00545
	MOVE?CB	064h, _Rkanal2
	LABEL?L	L00545	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01565	            endif
	LABEL?L	L00543	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01566	            if x = 3 then
	CMPNE?BCL	_x, 003h, L00547

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01567	                Rkanal3 = Rkanal3 + 1 
	ADD?BCB	_Rkanal3, 001h, _Rkanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01568	                if Rkanal3 > 100 then rkanal3 = 100 
	CMPLE?BCL	_Rkanal3, 064h, L00549
	MOVE?CB	064h, _Rkanal3
	LABEL?L	L00549	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01569	            endif
	LABEL?L	L00547	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01570	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01571	     endif 
	LABEL?L	L00537	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01573	     if tastdole = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00551

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01574	            if x = 1 then
	CMPNE?BCL	_x, 001h, L00553

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01575	                Rkanal1 = Rkanal1 - 1
	SUB?BCB	_Rkanal1, 001h, _Rkanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01576	                if  Rkanal1 < 1 or  Rkanal1 > 100 then  Rkanal1 = 0 
	CMPLT?BCB	_Rkanal1, 001h, T1
	CMPGT?BCB	_Rkanal1, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00555
	MOVE?CB	000h, _Rkanal1
	LABEL?L	L00555	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01577	            endif
	LABEL?L	L00553	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01579	             if x = 2 then
	CMPNE?BCL	_x, 002h, L00557

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01580	                Rkanal2 = Rkanal2 - 1
	SUB?BCB	_Rkanal2, 001h, _Rkanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01581	                if  Rkanal2 < 1 or  Rkanal2 > 100 then  Rkanal2 = 0 
	CMPLT?BCB	_Rkanal2, 001h, T1
	CMPGT?BCB	_Rkanal2, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00559
	MOVE?CB	000h, _Rkanal2
	LABEL?L	L00559	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01582	             endif
	LABEL?L	L00557	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01584	             if x = 3 then
	CMPNE?BCL	_x, 003h, L00561

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01585	                Rkanal3 = Rkanal3 - 1 
	SUB?BCB	_Rkanal3, 001h, _Rkanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01586	                if  Rkanal3 < 1 or  Rkanal3 > 100 then  Rkanal3 = 0
	CMPLT?BCB	_Rkanal3, 001h, T1
	CMPGT?BCB	_Rkanal3, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00563
	MOVE?CB	000h, _Rkanal3
	LABEL?L	L00563	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01587	             endif
	LABEL?L	L00561	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01588	             pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01589	     endif 
	LABEL?L	L00551	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01593	     Lcdout $fe, 2,  displej[1],"#1 ",dec3 rkanal1,"%", displej[2],"2# ",dec3 rkanal2,"%        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?B	_displej + 00001h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_Rkanal1
	LCDOUTDEC?	
	LCDOUT?C	025h
	LCDOUT?B	_displej + 00002h
	LCDOUT?C	032h
	LCDOUT?C	023h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_Rkanal2
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01594	     Lcdout $fe, $c0,displej[3],"#3 ",dec3 rkanal3,"%            "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?B	_displej + 00003h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_Rkanal3
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01595	     if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00565

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01596	            write 100,rkanal1
	WRITEADDRESS?C	064h
	WRITE?B	_Rkanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01597	            write 101,rkanal2
	WRITEADDRESS?C	065h
	WRITE?B	_Rkanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01598	            write 102,rkanal3
	WRITEADDRESS?C	066h
	WRITE?B	_Rkanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01599	            write 5, 0
	WRITEADDRESS?C	005h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01600	            AutomatskoAkvarijum  = 0 
	MOVE?CT	000h, _AutomatskoAkvarijum

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01601	            gosub Sacuvano
	GOSUB?L	_sacuvano

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01602	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01603	            goto LedManual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01604	     endif 
	LABEL?L	L00565	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01605	     DutyCycleL1 =(rkanal1 * 1024)/100
	MUL?BCN	_Rkanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01606	     DutyCycleL2 =(rkanal2 * 1024)/100
	MUL?BCN	_Rkanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01607	     DutyCycleL3 =(rkanal3 * 1024)/100
	MUL?BCN	_Rkanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01609	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01610	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01611	    @ HPWM10 1, _DutyCycleL3, _Frequency                        

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency                        

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01612	Goto  RucnoSvetlo
	GOTO?L	_RucnoSvetlo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01614	RoomLight:

	LABEL?L	_RoomLight	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01615	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01616	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01617	     room = 2
	MOVE?CT	002h, _Room

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01618	     if tastgore  = 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00567

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01619	          x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01620	          if x > 100 then x = 100
	CMPLE?BCL	_x, 064h, L00569
	MOVE?CB	064h, _x
	LABEL?L	L00569	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01621	          PAUSE PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01622	     endif 
	LABEL?L	L00567	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01624	     if tastdole  = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00571

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01625	          x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01626	          if x < 1 or x > 100 then x = 0
	CMPLT?BCB	_x, 001h, T1
	CMPGT?BCB	_x, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00573
	MOVE?CB	000h, _x
	LABEL?L	L00573	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01627	          PAUSE PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01628	     endif
	LABEL?L	L00571	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01630	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00575

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01631	         read 6,automatskosoba 
	READADDRESS?C	006h
	READ?T	_AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01632	         x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01633	         goto LedManual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01634	     endif
	LABEL?L	L00575	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01636	     IF ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00577

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01637	         write 103,x
	WRITEADDRESS?C	067h
	WRITE?B	_x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01638	         write 6,0
	WRITEADDRESS?C	006h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01639	         AutomatskoSoba = 0 
	MOVE?CT	000h, _AutomatskoSoba

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01640	         gosub Sacuvano
	GOSUB?L	_sacuvano

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01641	         x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01642	         goto LedManual
	GOTO?L	_LedManual

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01643	     endif
	LABEL?L	L00577	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01645	    Lcdout $fe, 2,"Room light #4       "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	052h
	LCDOUT?C	06Fh
	LCDOUT?C	06Fh
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01646	    lcdout $fe,$c0,strelica,dec3 x," %              "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_x
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01648	    DutyCycleL4 =(x * 1024)/100
	MUL?BCN	_x, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01649	    @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01650	 goto RoomLight 
	GOTO?L	_RoomLight

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01652	Alat:

	LABEL?L	_Alat	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01653	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01654	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01656	     if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00579

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01657	         if x = 2 then 
	CMPNE?BCL	_x, 002h, L00581

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01658	            x = 2
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01659	         else
	GOTO?L	L00582
	LABEL?L	L00581	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01660	            x = x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01661	         endif
	LABEL?L	L00582	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01662	     endif
	LABEL?L	L00579	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01663	     if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00583

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01664	         if x = 1 then 
	CMPNE?BCL	_x, 001h, L00585

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01665	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01666	         else
	GOTO?L	L00586
	LABEL?L	L00585	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01667	            x = x - 1 
	SUB?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01668	         endif
	LABEL?L	L00586	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01669	     endif
	LABEL?L	L00583	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01670	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00587

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01671	        x = 3
	MOVE?CB	003h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01672	         goto GlavniMeni
	GOTO?L	_GlavniMeni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01673	     endif
	LABEL?L	L00587	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01674	    Select case x                 

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01675	        case 1       
	CMPNE?BCL	_x, 001h, L00591

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01676	            Lcdout $fe, 2,strelica,"Time                    "          
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	_Strelica
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01677	            lcdout $fe,$c0," Default settings     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	044h
	LCDOUT?C	065h
	LCDOUT?C	066h
	LCDOUT?C	061h
	LCDOUT?C	075h
	LCDOUT?C	06Ch
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	074h
	LCDOUT?C	069h
	LCDOUT?C	06Eh
	LCDOUT?C	067h
	LCDOUT?C	073h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01678	            if ok  = 1 then 
	CMPNE?TCL	_ok, 001h, L00592

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01679	                x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01680	                goto RTCvreme
	GOTO?L	_RTCvreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01681	            endif
	LABEL?L	L00592	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01682	        case 2
	GOTO?L	L00590
	LABEL?L	L00591	
	CMPNE?BCL	_x, 002h, L00594

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01683	            Lcdout $fe, 2," Time                    "  
	LCDOUT?C	0FEh
	LCDOUT?C	002h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01684	            lcdout $fe,$c0,strelica,"Default settings     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	044h
	LCDOUT?C	065h
	LCDOUT?C	066h
	LCDOUT?C	061h
	LCDOUT?C	075h
	LCDOUT?C	06Ch
	LCDOUT?C	074h
	LCDOUT?C	020h
	LCDOUT?C	073h
	LCDOUT?C	065h
	LCDOUT?C	074h
	LCDOUT?C	074h
	LCDOUT?C	069h
	LCDOUT?C	06Eh
	LCDOUT?C	067h
	LCDOUT?C	073h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01685	            if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00595

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01686	                x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01687	                goto DefultSet 
	GOTO?L	_DefultSet

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01688	            endif
	LABEL?L	L00595	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01689	    end select 
	LABEL?L	L00594	
	LABEL?L	L00590	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01690	goto Alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01692	ModOdrzavanje:

	LABEL?L	_mododrzavanje	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01693	if automatskoakvarijum = 1 then 
	CMPNE?TCL	_AutomatskoAkvarijum, 001h, L00597

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01694	    MaxKanal1 = kanal1
	MOVE?BB	_Kanal1, _MaxKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01695	    MaxKanal2 = kanal2 
	MOVE?BB	_Kanal2, _MaxKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01696	    MaxKanal3 = Kanal3
	MOVE?BB	_Kanal3, _MaxKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01697	    MaxKanal4 = Kanal4
	MOVE?BB	_Kanal4, _MaxKanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01698	else
	GOTO?L	L00598
	LABEL?L	L00597	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01699	    MaxKanal1 = rkanal1
	MOVE?BB	_Rkanal1, _MaxKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01700	    MaxKanal2 = rkanal2 
	MOVE?BB	_Rkanal2, _MaxKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01701	    MaxKanal3 = rKanal3
	MOVE?BB	_Rkanal3, _MaxKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01702	endif 
	LABEL?L	L00598	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01704	for b = 100 to 1 step -1
	MOVE?CB	064h, _b
	LABEL?L	L00599	
	CMPLT?BCL	_b, 001h, L00600

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01705	    gosub uzmivreme
	GOSUB?L	_uzmivreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01706	    gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01708	    AbsKanal1 = (Maxkanal1 * b) / 100
	MUL?BBN	_MaxKanal1, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01709	    if AbsKanal1 < OdrzavanjeJacina then AbsKanal1 = OdrzavanjeJacina
	CMPGE?WBL	_AbsKanal1, _OdrzavanjeJacina, L00601
	MOVE?BW	_OdrzavanjeJacina, _AbsKanal1
	LABEL?L	L00601	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01710	    AbsKanal2 = (Maxkanal2 * b) / 100   
	MUL?BBN	_MaxKanal2, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01711	    AbsKanal3 = (Maxkanal3 * b) / 100
	MUL?BBN	_MaxKanal3, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01712	    if automatskoSoba = 0 then  AbsKanal4 = (Maxkanal4 * b) / 100
	CMPNE?TCL	_AutomatskoSoba, 000h, L00603
	MUL?BBN	_MaxKanal4, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal4
	LABEL?L	L00603	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01714	    DutyCycleL1 =(AbsKanal1 * 1024)/100
	MUL?WCN	_AbsKanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01715	    DutyCycleL2 =(AbsKanal2 * 1024)/100
	MUL?WCN	_AbsKanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01716	    DutyCycleL3 =(AbsKanal3 * 1024)/100
	MUL?WCN	_AbsKanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01717	    if automatskoSoba = 0 then  DutyCycleL4 =(AbsKanal4 * 1024)/100
	CMPNE?TCL	_AutomatskoSoba, 000h, L00605
	MUL?WCN	_AbsKanal4, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4
	LABEL?L	L00605	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01719	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01720	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01721	    @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01723	    if automatskoakvarijum = 0 then 
	CMPNE?TCL	_AutomatskoAkvarijum, 000h, L00607

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01724	        @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01725	    endif
	LABEL?L	L00607	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01727	    pause 15
	PAUSE?C	00Fh

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01728	    Lcdout $fe, 2,"Work light ON         "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	057h
	LCDOUT?C	06Fh
	LCDOUT?C	072h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01729	    lcdout $fe,$c0,"Preparing light!    "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	050h
	LCDOUT?C	072h
	LCDOUT?C	065h
	LCDOUT?C	070h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	06Eh
	LCDOUT?C	067h
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	021h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01731	next b
	NEXTM?BCL	_b, 001h, L00599
	LABEL?L	L00600	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01733	goto glavnimododrzavanje
	GOTO?L	_glavnimododrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01734	GlavniModOdrzavanje:

	LABEL?L	_glavnimododrzavanje	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01735	gosub uzmivreme
	GOSUB?L	_uzmivreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01736	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01737	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01738	     if tastgore  = 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00609

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01739	          OdrzavanjeJacina = OdrzavanjeJacina + 1 
	ADD?BCB	_OdrzavanjeJacina, 001h, _OdrzavanjeJacina

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01740	          if OdrzavanjeJacina > 100 then OdrzavanjeJacina = 100
	CMPLE?BCL	_OdrzavanjeJacina, 064h, L00611
	MOVE?CB	064h, _OdrzavanjeJacina
	LABEL?L	L00611	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01741	          PAUSE PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01742	     endif  
	LABEL?L	L00609	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01743	     if tastdole  = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00613

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01744	          OdrzavanjeJacina = OdrzavanjeJacina - 1 
	SUB?BCB	_OdrzavanjeJacina, 001h, _OdrzavanjeJacina

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01745	          if OdrzavanjeJacina < 1 or OdrzavanjeJacina > 100 then OdrzavanjeJacina = 0
	CMPLT?BCB	_OdrzavanjeJacina, 001h, T1
	CMPGT?BCB	_OdrzavanjeJacina, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00615
	MOVE?CB	000h, _OdrzavanjeJacina
	LABEL?L	L00615	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01746	          PAUSE PauzaZaTaster  
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01747	     endif
	LABEL?L	L00613	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01749	     if odrzavanje = 1 then 
	CMPNE?TCL	_odrzavanje, 001h, L00617

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01751	        write 2,OdrzavanjeJacina 
	WRITEADDRESS?C	002h
	WRITE?B	_OdrzavanjeJacina

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01753	for b = 1 to 100 step 1
	MOVE?CB	001h, _b
	LABEL?L	L00619	
	CMPGT?BCL	_b, 064h, L00620

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01754	    gosub uzmivreme
	GOSUB?L	_uzmivreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01755	    gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01757	    AbsKanal1 = (Maxkanal1 * b) / 100
	MUL?BBN	_MaxKanal1, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01758	    AbsKanal2 = (Maxkanal2 * b) / 100   
	MUL?BBN	_MaxKanal2, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01759	    AbsKanal3 = (Maxkanal3 * b) / 100
	MUL?BBN	_MaxKanal3, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01760	    if automatskoSoba = 0 then  AbsKanal4 = (Maxkanal4 * b) / 100
	CMPNE?TCL	_AutomatskoSoba, 000h, L00621
	MUL?BBN	_MaxKanal4, _b, T1
	DIV?NCW	T1, 064h, _AbsKanal4
	LABEL?L	L00621	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01762	    DutyCycleL1 =(AbsKanal1 * 1024)/100
	MUL?WCN	_AbsKanal1, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01763	    DutyCycleL2 =(AbsKanal2 * 1024)/100
	MUL?WCN	_AbsKanal2, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01764	    DutyCycleL3 =(AbsKanal3 * 1024)/100
	MUL?WCN	_AbsKanal3, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01765	    if automatskoSoba = 0 then  DutyCycleL4 =(AbsKanal4 * 1024)/100
	CMPNE?TCL	_AutomatskoSoba, 000h, L00623
	MUL?WCN	_AbsKanal4, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL4
	LABEL?L	L00623	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01767	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01768	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01769	    @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01771	    if automatskosoba= 0 then 
	CMPNE?TCL	_AutomatskoSoba, 000h, L00625

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01772	        @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01773	    endif
	LABEL?L	L00625	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01775	    pause 15
	PAUSE?C	00Fh

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01776	    Lcdout $fe, 2,"Work light OFF         "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	057h
	LCDOUT?C	06Fh
	LCDOUT?C	072h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01777	    lcdout $fe,$c0,"Preparing light!    "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	050h
	LCDOUT?C	072h
	LCDOUT?C	065h
	LCDOUT?C	070h
	LCDOUT?C	061h
	LCDOUT?C	072h
	LCDOUT?C	069h
	LCDOUT?C	06Eh
	LCDOUT?C	067h
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
	LCDOUT?C	021h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01779	next b
	NEXT?BCL	_b, 001h, L00619
	LABEL?L	L00620	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01780	OdrzavanjeMod = 0
	MOVE?CT	000h, _OdrzavanjeMod

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01781	        x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01782	             if automatskoakvarijum = 1 then  
	CMPNE?TCL	_AutomatskoAkvarijum, 001h, L00627

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01783	                kanal1 = stkanal1 / 100 
	DIV?NCB	_STKanal1, 064h, _Kanal1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01784	                kanal2 = stkanal2 / 100 
	DIV?NCB	_STKanal2, 064h, _Kanal2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01785	                kanal3 = stkanal3 / 100 
	DIV?NCB	_STKanal3, 064h, _Kanal3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01786	             endif
	LABEL?L	L00627	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01787	             if automatskosoba = 1 then 
	CMPNE?TCL	_AutomatskoSoba, 001h, L00629

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01788	                kanal4 = stkanal4 / 100 
	DIV?NCB	_STKanal4, 064h, _Kanal4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01789	             endif 
	LABEL?L	L00629	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01790	        goto Main
	GOTO?L	_main

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01791	     endif
	LABEL?L	L00617	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01794	    Lcdout $fe, 2,"Work light          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	057h
	LCDOUT?C	06Fh
	LCDOUT?C	072h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	067h
	LCDOUT?C	068h
	LCDOUT?C	074h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01795	    lcdout $fe,$c0,"Channel #1-",dec3 OdrzavanjeJacina,"%           "
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
	LCDOUT?C	02Dh
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_OdrzavanjeJacina
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01797	    DutyCycleL1 =(OdrzavanjeJacina * 1024)/100
	MUL?BCN	_OdrzavanjeJacina, 000000400h, T1
	DIV?NCN	T1, 064h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01798	    DutyCycleL2 =(0 * 1024)/100
	MOVE?CN	000h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01799	    DutyCycleL3 =(0 * 1024)/100
	MOVE?CN	000h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01801	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01802	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01803	    @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01805	    if automatskosoba = 1 then  
	CMPNE?TCL	_AutomatskoSoba, 001h, L00631

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01806	        DutyCycleL4 =(0 * 1024)/100
	MOVE?CN	000h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01807	        @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01808	    endif
	LABEL?L	L00631	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01812	goto GlavniModOdrzavanje
	GOTO?L	_glavnimododrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01814	DefultSet:

	LABEL?L	_DefultSet	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01815	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01816	gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01818	if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00633

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01819	    if x = 0 then 
	CMPNE?BCL	_x, 000h, L00635

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01820	         x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01821	         goto alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01822	    endif
	LABEL?L	L00635	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01824	    if x =  1 then 
	CMPNE?BCL	_x, 001h, L00637

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01825	        gosub prviput
	GOSUB?L	_PrviPut

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01826	    endif
	LABEL?L	L00637	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01827	endif
	LABEL?L	L00633	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01829	if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00639

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01830	    x = 2 
	MOVE?CB	002h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01831	    goto alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01832	endif
	LABEL?L	L00639	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01834	if gore = 1 then 
	CMPNE?TCL	_gore, 001h, L00641

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01835	   if x = 1 then 
	CMPNE?BCL	_x, 001h, L00643

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01836	        x = 0 
	MOVE?CB	000h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01837	   else
	GOTO?L	L00644
	LABEL?L	L00643	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01838	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01839	   endif
	LABEL?L	L00644	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01840	endif
	LABEL?L	L00641	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01842	if dole = 1 then 
	CMPNE?TCL	_dole, 001h, L00645

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01843	   if x = 1 then 
	CMPNE?BCL	_x, 001h, L00647

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01844	        x = 0            
	MOVE?CB	000h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01845	   else
	GOTO?L	L00648
	LABEL?L	L00647	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01846	        x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01847	   endif
	LABEL?L	L00648	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01848	endif
	LABEL?L	L00645	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01849	   Lcdout $fe, 2,"Confirm changes             " 
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	043h
	LCDOUT?C	06Fh
	LCDOUT?C	06Eh
	LCDOUT?C	066h
	LCDOUT?C	069h
	LCDOUT?C	072h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	063h
	LCDOUT?C	068h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	067h
	LCDOUT?C	065h
	LCDOUT?C	073h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01850	   if x = 0 then lcdout $fe,$c0,strelica,"NO                 "
	CMPNE?BCL	_x, 000h, L00649
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	04Eh
	LCDOUT?C	04Fh
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00649	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01851	   if x = 1 then lcdout $fe,$c0,strelica,"YES                 "
	CMPNE?BCL	_x, 001h, L00651
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	_Strelica
	LCDOUT?C	059h
	LCDOUT?C	045h
	LCDOUT?C	053h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00651	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01853	goto DefultSet
	GOTO?L	_DefultSet

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01855	PodesavanjeTemperature:

	LABEL?L	_podesavanjetemperature	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01857	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01859	if ok = 1 then 
	CMPNE?TCL	_ok, 001h, L00653

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01860	    write 7,TemperaturaIzEproma
	WRITEADDRESS?C	007h
	WRITE?B	_TemperaturaIzEproma

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01861	    gosub splash
	GOSUB?L	_Splash

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01862	endif
	LABEL?L	L00653	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01863	if tastgore = 0 then 
	CMPNE?TCL	_TASTGORE, 000h, L00655

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01864	    TemperaturaIzEproma = TemperaturaIzEproma + 1 
	ADD?BCB	_TemperaturaIzEproma, 001h, _TemperaturaIzEproma

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01865	    pause pauzazataster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01866	endif
	LABEL?L	L00655	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01868	if tastdole = 0 then 
	CMPNE?TCL	_TASTDOLE, 000h, L00657

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01869	    TemperaturaIzEproma = TemperaturaIzEproma - 1 
	SUB?BCB	_TemperaturaIzEproma, 001h, _TemperaturaIzEproma

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01870	    pause pauzazataster
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01871	endif
	LABEL?L	L00657	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01872	if TemperaturaIzEproma > 100  then TemperaturaIzEproma = 100
	CMPLE?BCL	_TemperaturaIzEproma, 064h, L00659
	MOVE?CB	064h, _TemperaturaIzEproma
	LABEL?L	L00659	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01873	if TemperaturaIzEproma < 10 then TemperaturaIzEproma = 10
	CMPGE?BCL	_TemperaturaIzEproma, 00Ah, L00661
	MOVE?CB	00Ah, _TemperaturaIzEproma
	LABEL?L	L00661	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01875	Lcdout $fe, 2,"Temp  relay            "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	054h
	LCDOUT?C	065h
	LCDOUT?C	06Dh
	LCDOUT?C	070h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	072h
	LCDOUT?C	065h
	LCDOUT?C	06Ch
	LCDOUT?C	061h
	LCDOUT?C	079h
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01876	lcdout $fe,$c0,">",dec3 TemperaturaIzEproma," " ,223,"C","                 "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUTCOUNT?C	003h
	LCDOUTNUM?B	_TemperaturaIzEproma
	LCDOUTDEC?	
	LCDOUT?C	020h
	LCDOUT?C	0DFh
	LCDOUT?C	043h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01877	goto PodesavanjeTemperature
	GOTO?L	_podesavanjetemperature

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01880	Sacuvano:

	LABEL?L	_sacuvano	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01881	        Lcdout $fe, 2," CHANGES  SAVED        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	043h
	LCDOUT?C	048h
	LCDOUT?C	041h
	LCDOUT?C	04Eh
	LCDOUT?C	047h
	LCDOUT?C	045h
	LCDOUT?C	053h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	041h
	LCDOUT?C	056h
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01882	        lcdout $fe,$c0, "                     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01883	        pause 1500
	PAUSE?C	005DCh

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01884	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01886	PrviPut:

	LABEL?L	_PrviPut	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01887	      write 1,0
	WRITEADDRESS?C	001h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01888	      write 2,10
	WRITEADDRESS?C	002h
	WRITE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01889	      write 3,2
	WRITEADDRESS?C	003h
	WRITE?C	002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01890	      write 4,1
	WRITEADDRESS?C	004h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01892	      write 5,1
	WRITEADDRESS?C	005h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01893	      write 6,1
	WRITEADDRESS?C	006h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01894	      write 7,75
	WRITEADDRESS?C	007h
	WRITE?C	04Bh

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01896	      write 8,6
	WRITEADDRESS?C	008h
	WRITE?C	006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01897	      write 9,0
	WRITEADDRESS?C	009h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01898	      write 10,0
	WRITEADDRESS?C	00Ah
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01901	      write 12,8
	WRITEADDRESS?C	00Ch
	WRITE?C	008h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01902	      write 13,0
	WRITEADDRESS?C	00Dh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01903	      write 14,100
	WRITEADDRESS?C	00Eh
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01905	      write 16,18    
	WRITEADDRESS?C	010h
	WRITE?C	012h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01906	      write 17,0
	WRITEADDRESS?C	011h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01907	      write 18,100
	WRITEADDRESS?C	012h
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01909	      write 20,20
	WRITEADDRESS?C	014h
	WRITE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01910	      write 21,0
	WRITEADDRESS?C	015h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01911	      write 22,0
	WRITEADDRESS?C	016h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01913	      write 24,6
	WRITEADDRESS?C	018h
	WRITE?C	006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01914	      write 25,0
	WRITEADDRESS?C	019h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01915	      write 26,0
	WRITEADDRESS?C	01Ah
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01917	      write 28,8
	WRITEADDRESS?C	01Ch
	WRITE?C	008h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01918	      write 29,0
	WRITEADDRESS?C	01Dh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01919	      write 30,100
	WRITEADDRESS?C	01Eh
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01921	      write 32,18    
	WRITEADDRESS?C	020h
	WRITE?C	012h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01922	      write 33,0
	WRITEADDRESS?C	021h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01923	      write 34,100
	WRITEADDRESS?C	022h
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01925	      write 36,20
	WRITEADDRESS?C	024h
	WRITE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01926	      write 37,0
	WRITEADDRESS?C	025h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01927	      write 38,0
	WRITEADDRESS?C	026h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01929	      write 40,6
	WRITEADDRESS?C	028h
	WRITE?C	006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01930	      write 41,0
	WRITEADDRESS?C	029h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01931	      write 42,0
	WRITEADDRESS?C	02Ah
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01933	      write 44,8
	WRITEADDRESS?C	02Ch
	WRITE?C	008h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01934	      write 45,0
	WRITEADDRESS?C	02Dh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01935	      write 46,100
	WRITEADDRESS?C	02Eh
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01937	      write 48,18    
	WRITEADDRESS?C	030h
	WRITE?C	012h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01938	      write 49,0
	WRITEADDRESS?C	031h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01939	      write 50,100
	WRITEADDRESS?C	032h
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01941	      write 52,20
	WRITEADDRESS?C	034h
	WRITE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01942	      write 53,0
	WRITEADDRESS?C	035h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01943	      write 54,0
	WRITEADDRESS?C	036h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01945	      write 56,6
	WRITEADDRESS?C	038h
	WRITE?C	006h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01946	      write 57,0
	WRITEADDRESS?C	039h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01947	      write 58,0
	WRITEADDRESS?C	03Ah
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01949	      write 60,8
	WRITEADDRESS?C	03Ch
	WRITE?C	008h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01950	      write 61,0
	WRITEADDRESS?C	03Dh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01951	      write 62,100
	WRITEADDRESS?C	03Eh
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01953	      write 64,18    
	WRITEADDRESS?C	040h
	WRITE?C	012h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01954	      write 65,0
	WRITEADDRESS?C	041h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01955	      write 66,100
	WRITEADDRESS?C	042h
	WRITE?C	064h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01957	      write 68,20
	WRITEADDRESS?C	044h
	WRITE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01958	      write 69,0
	WRITEADDRESS?C	045h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01959	      write 70,0
	WRITEADDRESS?C	046h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01965	      write 74,0
	WRITEADDRESS?C	04Ah
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01966	      write 75,0
	WRITEADDRESS?C	04Bh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01969	      write 76,0
	WRITEADDRESS?C	04Ch
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01970	      write 77,0
	WRITEADDRESS?C	04Dh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01972	      write 78,0
	WRITEADDRESS?C	04Eh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01973	      write 79,0
	WRITEADDRESS?C	04Fh
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01975	      write 80,0
	WRITEADDRESS?C	050h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01976	      write 81,0
	WRITEADDRESS?C	051h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01978	      write 82,0
	WRITEADDRESS?C	052h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01979	      write 83,0
	WRITEADDRESS?C	053h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01981	      write 84,0
	WRITEADDRESS?C	054h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01982	      write 85,0
	WRITEADDRESS?C	055h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01984	      write 86,0
	WRITEADDRESS?C	056h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01985	      write 87,0
	WRITEADDRESS?C	057h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01987	      write 88,0
	WRITEADDRESS?C	058h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01988	      write 89,0
	WRITEADDRESS?C	059h
	WRITE?C	000h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01990	      write 100,10
	WRITEADDRESS?C	064h
	WRITE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01991	      write 101,10
	WRITEADDRESS?C	065h
	WRITE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01992	      write 102,10
	WRITEADDRESS?C	066h
	WRITE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01993	      write 103,10
	WRITEADDRESS?C	067h
	WRITE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01995	      relej1 = 0 
	MOVE?CT	000h, _RELEJ1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01996	      relej2 = 0 
	MOVE?CT	000h, _RELEJ2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01997	      DutyCycleL1 = 0
	MOVE?CN	000h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01998	      DutyCycleL2 = 0
	MOVE?CN	000h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	01999	      DutyCycleL3 = 0
	MOVE?CN	000h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02000	      DutyCycleL4 = 0
	MOVE?CN	000h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02001	      @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02002	      @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02003	      @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02004	      @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02005	      x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02006	      goto RTCvreme
	GOTO?L	_RTCvreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02007	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02009	UzmiVreme:

	LABEL?L	_uzmivreme	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02013	    i2cread sda,scl,rtc,$02,[seconds,minutes,hours]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	002h
	I2CREAD?B	_Seconds
	I2CREAD?B	_Minutes
	I2CREADS?B	_Hours

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02014	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Minutes??7

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02014	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Hours??7

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02014	    minutes.7=0:hours.7=0:hours.6=0
	MOVE?CT	000h, _Hours??6

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02015	    DecMinutGlavni = ((minutes  & %11110000)>>4)  * 10 + (minutes & %00001111)
	AND?BCN	_Minutes, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Minutes, 00Fh, T2
	ADD?NNB	T1, T2, _DecMinutGlavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02016	    decsatglavni = ((Hours & %11110000)>>4)  * 10 + (hours & %00001111)
	AND?BCN	_Hours, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Hours, 00Fh, T2
	ADD?NNB	T1, T2, _DecSatglavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02017	    decsec = ((Seconds  & %11110000)>>4)  * 10 + (seconds  & %00001111)
	AND?BCN	_Seconds, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_Seconds, 00Fh, T2
	ADD?NNB	T1, T2, _DecSec

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02018	    pause 10
	PAUSE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02020	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02022	RTCvreme:

	LABEL?L	_RTCvreme	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02023	gosub OcitajTastere
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02024	 read 1,temp
	READADDRESS?C	001h
	READ?W	_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02025	 if temp = 1 then gosub kreni
	CMPNE?WCL	_Temp, 001h, L00663
	GOSUB?L	_kreni
	LABEL?L	L00663	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02027	     if desno = 1 then
	CMPNE?TCL	_desno, 001h, L00665

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02028	        x =  x + 1 
	ADD?BCB	_x, 001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02029	        if x > 2 then x = 1
	CMPLE?BCL	_x, 002h, L00667
	MOVE?CB	001h, _x
	LABEL?L	L00667	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02030	     endif
	LABEL?L	L00665	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02031	     if levo = 1 then 
	CMPNE?TCL	_levo, 001h, L00669

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02032	        read 1,temp
	READADDRESS?C	001h
	READ?W	_Temp

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02033	        if temp = 1 then 
	CMPNE?WCL	_Temp, 001h, L00671

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02034	            x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02035	            goto Alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02036	        endif
	LABEL?L	L00671	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02037	     endif
	LABEL?L	L00669	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02038	     select case x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02039	        case 1 
	CMPNE?BCL	_x, 001h, L00675

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02040	             displej[1] = strelica
	MOVE?CB	_Strelica, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02041	             displej[2] = " "
	MOVE?CB	020h, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02042	        case 2 
	GOTO?L	L00674
	LABEL?L	L00675	
	CMPNE?BCL	_x, 002h, L00676

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02043	             displej[1] = " "
	MOVE?CB	020h, _displej + 00001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02044	             displej[2] = strelica
	MOVE?CB	_Strelica, _displej + 00002h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02045	     end select
	LABEL?L	L00676	
	LABEL?L	L00674	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02046	     if tastgore= 0 then
	CMPNE?TCL	_TASTGORE, 000h, L00677

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02047	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00679

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02048	            decsaTglavni = decsaTglavni + 1
	ADD?BCB	_DecSatglavni, 001h, _DecSatglavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02049	            if decsaTglavni > 23 then decsaTglavni = 23
	CMPLE?BCL	_DecSatglavni, 017h, L00681
	MOVE?CB	017h, _DecSatglavni
	LABEL?L	L00681	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02050	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02051	         endif
	LABEL?L	L00679	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02053	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00683

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02054	            decminutglavni = decminutglavni + 1
	ADD?BCB	_DecMinutGlavni, 001h, _DecMinutGlavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02055	            if decminutglavni > 59 then decminutglavni = 59
	CMPLE?BCL	_DecMinutGlavni, 03Bh, L00685
	MOVE?CB	03Bh, _DecMinutGlavni
	LABEL?L	L00685	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02056	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02057	         endif
	LABEL?L	L00683	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02058	     endif
	LABEL?L	L00677	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02059	     if tastdole = 0 then
	CMPNE?TCL	_TASTDOLE, 000h, L00687

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02060	         if x = 1 then
	CMPNE?BCL	_x, 001h, L00689

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02061	           decsaTglavni = decsaTglavni - 1
	SUB?BCB	_DecSatglavni, 001h, _DecSatglavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02062	            if decsaTglavni < 1 or decsaTglavni > 23 then decsaTglavni = 0
	CMPLT?BCB	_DecSatglavni, 001h, T1
	CMPGT?BCB	_DecSatglavni, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00691
	MOVE?CB	000h, _DecSatglavni
	LABEL?L	L00691	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02063	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02064	         endif
	LABEL?L	L00689	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02066	         if x = 2 then
	CMPNE?BCL	_x, 002h, L00693

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02067	            decminutglavni = decminutglavni - 1
	SUB?BCB	_DecMinutGlavni, 001h, _DecMinutGlavni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02068	            if decminutglavni < 1 or decminutglavni > 59 then decminutglavni = 0   
	CMPLT?BCB	_DecMinutGlavni, 001h, T1
	CMPGT?BCB	_DecMinutGlavni, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00695
	MOVE?CB	000h, _DecMinutGlavni
	LABEL?L	L00695	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02069	            pause PauzaZaTaster 
	PAUSE?C	_PauzaZaTaster

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02070	         endif
	LABEL?L	L00693	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02071	     endif
	LABEL?L	L00687	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02072	     if ok = 1 then
	CMPNE?TCL	_ok, 001h, L00697

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02073	         Minutes  = (decminutglavni dig 1) * 16 + decminutglavni dig 0
	DIG?BCN	_DecMinutGlavni, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DecMinutGlavni, 000h, T2
	ADD?NNB	T1, T2, _Minutes

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02074	         Hours = (decsaTglavni dig 1) * 16 + decsaTglavni dig 0
	DIG?BCN	_DecSatglavni, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DecSatglavni, 000h, T2
	ADD?NNB	T1, T2, _Hours

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02075	         Seconds = 0
	MOVE?CB	000h, _Seconds

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02076	         I2cwrite sda,scl,rtc,$02,[seconds,minutes,hours,$01,$02,$01,$01]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	002h
	I2CWRITE?B	_Seconds
	I2CWRITE?B	_Minutes
	I2CWRITE?B	_Hours
	I2CWRITE?C	001h
	I2CWRITE?C	002h
	I2CWRITE?C	001h
	I2CWRITES?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02077	         pause 10
	PAUSE?C	00Ah

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02078	         x = 1
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02079	         gosub Sacuvano
	GOSUB?L	_sacuvano

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02080	         read 1,x
	READADDRESS?C	001h
	READ?B	_x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02081	         if x <> 1 then 
	CMPEQ?BCL	_x, 001h, L00699

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02082	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02083	            write 1,1
	WRITEADDRESS?C	001h
	WRITE?C	001h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02084	            goto splash
	GOTO?L	_Splash

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02085	         else
	GOTO?L	L00700
	LABEL?L	L00699	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02086	            x = 1 
	MOVE?CB	001h, _x

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02087	            goto Alat
	GOTO?L	_Alat

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02088	         endif
	LABEL?L	L00700	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02089	     ENDIF 
	LABEL?L	L00697	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02091	   Lcdout $fe, 2,"System time            "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	079h
	LCDOUT?C	073h
	LCDOUT?C	074h
	LCDOUT?C	065h
	LCDOUT?C	06Dh
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
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02092	   lcdout $fe,$c0,displej[1],dec2 decsaTglavni,":",displej[2],dec2 decminutglavni,"              "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?B	_displej + 00001h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecSatglavni
	LCDOUTDEC?	
	LCDOUT?C	03Ah
	LCDOUT?B	_displej + 00002h
	LCDOUTCOUNT?C	002h
	LCDOUTNUM?B	_DecMinutGlavni
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

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02093	goto RTCVreme
	GOTO?L	_RTCvreme

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02095	IzmeriTemperaturu:

	LABEL?L	_IzmeriTemperaturu	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02096	i2cread sda, scl, lm75,0,[temperatura]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	000h
	I2CREADS?B	_Temperatura

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02097	pause 20
	PAUSE?C	014h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02098	i2cread sda, scl, lm75,0,[smece]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_LM75
	I2CWRITE?C	000h
	I2CREADS?W	_smece

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02100	read 7,TemperaturaIzEproma
	READADDRESS?C	007h
	READ?B	_TemperaturaIzEproma

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02101	if temperatura > TemperaturaIzEproma then 
	CMPLE?BBL	_Temperatura, _TemperaturaIzEproma, L00701

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02103	    DutyCycleL1 = 0
	MOVE?CN	000h, _DutyCycleL1

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02104	    DutyCycleL2 = 0
	MOVE?CN	000h, _DutyCycleL2

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02105	    DutyCycleL3 = 0
	MOVE?CN	000h, _DutyCycleL3

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02106	    DutyCycleL4 = 0
	MOVE?CN	000h, _DutyCycleL4

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02108	    @ HPWM10 2, _DutyCycleL4, _Frequency

	ASM?
 HPWM10 2, _DutyCycleL4, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02109	    @ HPWM10 4, _DutyCycleL1, _Frequency

	ASM?
 HPWM10 4, _DutyCycleL1, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02110	    @ HPWM10 3, _DutyCycleL2, _Frequency

	ASM?
 HPWM10 3, _DutyCycleL2, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02111	    @ HPWM10 1, _DutyCycleL3, _Frequency

	ASM?
 HPWM10 1, _DutyCycleL3, _Frequency

	ENDASM?


; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02112	    Pregrejan = 1
	MOVE?CB	001h, _pregrejan

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02113	    gosub PregrejanEkran
	GOSUB?L	_PregrejanEkran

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02114	else
	GOTO?L	L00702
	LABEL?L	L00701	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02115	    pregrejan = 0
	MOVE?CB	000h, _pregrejan

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02116	endif
	LABEL?L	L00702	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02117	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02119	PregrejanEkran:

	LABEL?L	_PregrejanEkran	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02120	bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02121	    gosub kreni
	GOSUB?L	_kreni

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02122	    gosub ocitajtastere  
	GOSUB?L	_ocitajtastere

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02123	    Lcdout $fe, 2,"  !OVERHEATED!  "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	021h
	LCDOUT?C	04Fh
	LCDOUT?C	056h
	LCDOUT?C	045h
	LCDOUT?C	052h
	LCDOUT?C	048h
	LCDOUT?C	045h
	LCDOUT?C	041h
	LCDOUT?C	054h
	LCDOUT?C	045h
	LCDOUT?C	044h
	LCDOUT?C	021h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02124	    lcdout $fe,$c0, ">PRESS OK        "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	050h
	LCDOUT?C	052h
	LCDOUT?C	045h
	LCDOUT?C	053h
	LCDOUT?C	053h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Bh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02125	    if ok = 1 then goto main 
	CMPNE?TCL	_ok, 001h, L00703
	GOTO?L	_main
	LABEL?L	L00703	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02126	goto PregrejanEkran
	GOTO?L	_PregrejanEkran

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02128	EEpromMemorija:

	LABEL?L	_EEpromMemorija	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02129	    for i = 8 to 70 step 1
	MOVE?CB	008h, _i
	LABEL?L	L00705	
	CMPGT?BCL	_i, 046h, L00706

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02130	        memorija[i] = 0
	AIN?CBB	000h, _Memorija, _i

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02131	        read i,memorija[i]   
	READADDRESS?B	_i
	READ?N	T1
	AIN?BBB	T1, _Memorija, _i

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02132	    next i
	NEXT?BCL	_i, 001h, L00705
	LABEL?L	L00706	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02134	    for i = 1 to 16 step 1 
	MOVE?CB	001h, _i
	LABEL?L	L00707	
	CMPGT?BCL	_i, 010h, L00708

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02135	        RelejiMemorija[i] = 0
	AIN?CBB	000h, _RelejiMemorija, _i

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02136	        read 73 + i,RelejiMemorija[i]
	ADD?CBN	049h, _i, T1
	READADDRESS?N	T1
	READ?N	T1
	AIN?BBB	T1, _RelejiMemorija, _i

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02137	    next i         
	NEXT?BCL	_i, 001h, L00707
	LABEL?L	L00708	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02138	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02140	OcitajTastere:

	LABEL?L	_ocitajtastere	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02141	    NovoStanjeDesno         =  tastdesno
	MOVE?TT	_TASTDESNO, _NovoStanjeDesno

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02142	    NovoStanjeLevo          =  tastlevo
	MOVE?TT	_TASTLEVO, _NovoStanjeLevo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02143	    NovoStanjeGore          =  tastgore
	MOVE?TT	_TASTGORE, _NovoStanjeGore

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02144	    NovoStanjeDole          =  tastdole
	MOVE?TT	_TASTDOLE, _NovoStanjeDole

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02145	    NovoStanjeOk            =  tastok
	MOVE?TT	_TASTOK, _NovoStanjeOk

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02146	    NovoStanjeOdrzavanje    =  tastodrzavanje
	MOVE?TT	_TASTODRZAVANJE, _NovoStanjeOdrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02148	    if novostanjegore < starostanjegore then 
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00709

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02149	        gore = 1 
	MOVE?CT	001h, _gore

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02150	    else
	GOTO?L	L00710
	LABEL?L	L00709	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02151	        gore = 0 
	MOVE?CT	000h, _gore

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02152	    ENDIF
	LABEL?L	L00710	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02154	    if novostanjedole < starostanjedole then 
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00711

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02155	        dole = 1
	MOVE?CT	001h, _dole

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02156	    else 
	GOTO?L	L00712
	LABEL?L	L00711	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02157	        dole = 0
	MOVE?CT	000h, _dole

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02158	    ENDIF
	LABEL?L	L00712	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02160	    if novostanjelevo < starostanjelevo then 
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00713

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02161	        levo = 1
	MOVE?CT	001h, _levo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02162	    else
	GOTO?L	L00714
	LABEL?L	L00713	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02163	        levo = 0
	MOVE?CT	000h, _levo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02164	    ENDIF
	LABEL?L	L00714	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02166	    if novostanjedesno < starostanjedesno then 
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00715

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02167	        desno = 1
	MOVE?CT	001h, _desno

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02168	    else
	GOTO?L	L00716
	LABEL?L	L00715	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02169	        desno = 0
	MOVE?CT	000h, _desno

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02170	    ENDIF
	LABEL?L	L00716	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02172	    if novostanjeOK < starostanjeok then 
	CMPGE?TTL	_NovoStanjeOk, _StaroStanjeOk, L00717

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02173	        ok = 1
	MOVE?CT	001h, _ok

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02174	    else
	GOTO?L	L00718
	LABEL?L	L00717	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02175	        ok = 0
	MOVE?CT	000h, _ok

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02176	    ENDIF
	LABEL?L	L00718	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02178	    if novostanjeodrzavanje < starostanjeodrzavanje then 
	CMPGE?TTL	_NovoStanjeOdrzavanje, _StaroStanjeOdrzavanje, L00719

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02179	        odrzavanje = 1
	MOVE?CT	001h, _odrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02180	    else
	GOTO?L	L00720
	LABEL?L	L00719	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02181	        odrzavanje = 0
	MOVE?CT	000h, _odrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02182	    ENDIF
	LABEL?L	L00720	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02184	    StaroStanjeDesno        = NovoStanjeDesno        
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02185	    StaroStanjeLevo         = NovoStanjeLevo      
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02186	    StaroStanjeGore         = NovoStanjeGore          
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02187	    StaroStanjeDole         = NovoStanjeDole         
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02188	    StaroStanjeOk           = NovoStanjeOk           
	MOVE?TT	_NovoStanjeOk, _StaroStanjeOk

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02189	    StaroStanjeOdrzavanje   = NovoStanjeOdrzavanje    
	MOVE?TT	_NovoStanjeOdrzavanje, _StaroStanjeOdrzavanje

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02190	return
	RETURN?	

; D:\DAMIR\DANER\DANER_V3_SOURCE\DANER_V3_FULL.PBP	02191	end 
	END?	

	END
