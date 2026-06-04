
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
        LIST p = 18F4550, r = dec, w = -311, w = -230, f = inhx32
        INCLUDE "P18F4550.INC"	; MPASM  Header
        NOLIST
    endif
        LIST
EEPROM_START	EQU	0F00000h
BLOCK_SIZE	EQU	32


PBP_HARDWAREDEF  macro
  endm


        __CONFIG    _CONFIG1L, _PLLDIV_5_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L
        __CONFIG    _CONFIG1H, _FOSC_HSPLL_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H
        __CONFIG    _CONFIG2L, _PWRT_OFF_2L & _BOR_ON_2L & _BORV_3_2L & _VREGEN_ON_2L
        __CONFIG    _CONFIG2H, _WDT_ON_2H & _WDTPS_512_2H
        __CONFIG    _CONFIG3H, _CCP2MX_ON_3H & _PBADEN_OFF_3H & _LPT1OSC_OFF_3H & _MCLRE_ON_3H
        __CONFIG    _CONFIG4L, _STVREN_ON_4L & _LVP_OFF_4L & _ICPRT_OFF_4L & _XINST_OFF_4L



; Define statements.
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00012	DEFINE OSC 20    ' oscilator od 20MHz
#define		OSC		 20    
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00003	DEFINE  INTHAND       INT_ENTRY_H  ' Context saving for High Priority Ints
#define		INTHAND		       INT_ENTRY_H  
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00004	DEFINE  INTLHAND      INT_ENTRY_L  ' Context saving for Low Priority Ints
#define		INTLHAND		      INT_ENTRY_L  
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00019	DEFINE  LCD_DREG PORTD
#define		LCD_DREG		 PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00020	DEFINE  LCD_DBIT 4
#define		LCD_DBIT		 4
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00021	DEFINE  LCD_BITS 4
#define		LCD_BITS		 4
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00022	DEFINE  LCD_RSREG PORTD
#define		LCD_RSREG		 PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00023	DEFINE  LCD_RSBIT 2
#define		LCD_RSBIT		 2
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00024	DEFINE  LCD_EREG PORTD
#define		LCD_EREG		 PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00025	DEFINE  LCD_EBIT  3
#define		LCD_EBIT		  3
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00026	DEFINE  LCD_LINES 2
#define		LCD_LINES		 2
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00027	DEFINE  LCD_COMMANDUS 2000
#define		LCD_COMMANDUS		 2000
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00028	DEFINE  LCD_DATAUS 40
#define		LCD_DATAUS		 40
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00030	DEFINE  SPWM_FREQ  170          
#define		SPWM_FREQ		  170          
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00031	DEFINE  SPWM_RES   100
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
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00021	A0000C	INT_Flags   VAR BYTE  BANKA  SYSTEM
INT_Flags       		EQU	RAM_START + 00Ch
; C:\PBP3\PBPPI18L.RAM     	00023	A0000D	RM1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 00Dh
; C:\PBP3\PBPPI18L.RAM     	00026	A0000E	RM2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 00Eh
; C:\PBP3\PBPPI18L.RAM     	00021	A0000F	RR1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 00Fh
; C:\PBP3\PBPPI18L.RAM     	00024	A00010	RR2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 010h
; C:\PBP3\PBPPI18L.RAM     	00022	A00011	RS1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Bank
RS1             		EQU	RAM_START + 011h
; C:\PBP3\PBPPI18L.RAM     	00025	A00012	RS2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Bank
RS2             		EQU	RAM_START + 012h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00006	A00013	wsave       var byte  BANKA  SYSTEM   ' location for WREG
wsave           		EQU	RAM_START + 013h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00019	A00014	RetAddrH    VAR BYTE[3]  BANKA  SYSTEM  ' 21-bit return address Hi Pri.
RetAddrH        		EQU	RAM_START + 014h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00020	A00017	RetAddrL    VAR BYTE[3]  BANKA  SYSTEM  '                       Lo Pri.
RetAddrL        		EQU	RAM_START + 017h
; C:\PBP3\PBPPI18L.RAM     	00012	A0001A	R0      VAR     LONG BANKA SYSTEM       ' System Register
R0              		EQU	RAM_START + 01Ah
; C:\PBP3\PBPPI18L.RAM     	00013	A0001E	R1      VAR     LONG BANKA SYSTEM       ' System Register
R1              		EQU	RAM_START + 01Eh
; C:\PBP3\PBPPI18L.RAM     	00014	A00022	R2      VAR     LONG BANKA SYSTEM       ' System Register
R2              		EQU	RAM_START + 022h
; C:\PBP3\PBPPI18L.RAM     	00015	A00026	R3      VAR     LONG BANKA SYSTEM       ' System Register
R3              		EQU	RAM_START + 026h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00001	A0002A	asm
T1              		EQU	RAM_START + 02Ah
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00001	A0002E	asm
T2              		EQU	RAM_START + 02Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00001	A00032	asm
PB01            		EQU	RAM_START + 032h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00087	A00033	BezTastera            var word      
_BezTastera      		EQU	RAM_START + 033h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00089	A00035	KMinuta               var word
_KMinuta         		EQU	RAM_START + 035h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00088	A00037	PMinuta               var word
_PMinuta         		EQU	RAM_START + 037h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00090	A00039	TMinuta               var word
_TMinuta         		EQU	RAM_START + 039h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00102	A0003B	DECmin                var byte
_DECmin          		EQU	RAM_START + 03Bh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00103	A0003C	DECsat                var byte
_DECsat          		EQU	RAM_START + 03Ch
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00104	A0003D	DECSec                var byte
_DECSec          		EQU	RAM_START + 03Dh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00001	A0003E	DutyCount   VAR byte
_DutyCount       		EQU	RAM_START + 03Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00099	A0003F	DveTacke              var byte
_DveTacke        		EQU	RAM_START + 03Fh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00093	A00040	EPROM                 var byte
_EPROM           		EQU	RAM_START + 040h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00091	A00041	i                     var byte
_i               		EQU	RAM_START + 041h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00095	A00042	Kanal                 var byte
_Kanal           		EQU	RAM_START + 042h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00098	A00043	Kursor                var byte
_Kursor          		EQU	RAM_START + 043h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00094	A00044	Meni                  var byte           
_Meni            		EQU	RAM_START + 044h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00101	A00045	minut                 var byte
_minut           		EQU	RAM_START + 045h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00113	A00046	MinutKraj             var byte
_MinutKraj       		EQU	RAM_START + 046h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00112	A00047	MinutPocetak          var byte
_MinutPocetak    		EQU	RAM_START + 047h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00122	A00048	NoviMinut             var byte
_NoviMinut       		EQU	RAM_START + 048h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00118	A00049	NovostanjeRTC         var byte
_NovostanjeRTC   		EQU	RAM_START + 049h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00120	A0004A	osvetljenje           var byte
_osvetljenje     		EQU	RAM_START + 04Ah
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00121	A0004B	osvetljenjeOdrzavanje var byte
_osvetljenjeOdrzavanje		EQU	RAM_START + 04Bh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00117	A0004C	OsvKraj               var byte
_OsvKraj         		EQU	RAM_START + 04Ch
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00116	A0004D	OsvPocetak            var byte
_OsvPocetak      		EQU	RAM_START + 04Dh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00097	A0004E	Pali                  var byte
_Pali            		EQU	RAM_START + 04Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00107	A0004F	RTCDate	              Var Byte
_RTCDate         		EQU	RAM_START + 04Fh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00108	A00050	RTCDay	              Var Byte
_RTCDay          		EQU	RAM_START + 050h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00109	A00051	RTCHour	              Var Byte
_RTCHour         		EQU	RAM_START + 051h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00110	A00052	RTCMin	              Var Byte
_RTCMin          		EQU	RAM_START + 052h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00106	A00053	RTCMonth              Var Byte
_RTCMonth        		EQU	RAM_START + 053h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00111	A00054	RTCSec	              Var Byte
_RTCSec          		EQU	RAM_START + 054h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00105	A00055	RTCYear	              Var Byte
_RTCYear         		EQU	RAM_START + 055h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00100	A00056	sat                   var byte
_sat             		EQU	RAM_START + 056h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00115	A00057	SatKraj               var byte
_SatKraj         		EQU	RAM_START + 057h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00114	A00058	SatPocetak            var byte
_SatPocetak      		EQU	RAM_START + 058h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00080	A00059	StaraV1               var byte
_StaraV1         		EQU	RAM_START + 059h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00081	A0005A	StaraV2               var byte
_StaraV2         		EQU	RAM_START + 05Ah
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00082	A0005B	StaraV3               var byte
_StaraV3         		EQU	RAM_START + 05Bh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00083	A0005C	StaraV4               var byte
_StaraV4         		EQU	RAM_START + 05Ch
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00119	A0005D	StarostanjeRTC        var byte
_StarostanjeRTC  		EQU	RAM_START + 05Dh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00096	A0005E	Svitanje              var byte
_Svitanje        		EQU	RAM_START + 05Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00092	A0005F	x                     var byte
_x               		EQU	RAM_START + 05Fh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00013	A00060	fsave0H     var WORD  BANK0  SYSTEM   ' locations for FSR registers
fsave0H         		EQU	RAM_START + 060h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00016	A00062	fsave0L     var WORD  BANK0  SYSTEM   ' low priority FSR locations
fsave0L         		EQU	RAM_START + 062h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00014	A00064	fsave1H     var WORD  BANK0  SYSTEM
fsave1H         		EQU	RAM_START + 064h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00017	A00066	fsave1L     var WORD  BANK0  SYSTEM
fsave1L         		EQU	RAM_START + 066h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00015	A00068	fsave2H     var WORD  BANK0  SYSTEM
fsave2H         		EQU	RAM_START + 068h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00018	A0006A	fsave2L     var WORD  BANK0  SYSTEM
fsave2L         		EQU	RAM_START + 06Ah
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00008	A0006C	bsave       var byte  BANK0  SYSTEM   ' location for BSR register
bsave           		EQU	RAM_START + 06Ch
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00011	A0006D	psaveH      VAR BYTE  BANK0  SYSTEM   ' PCLATH Hi Pri.
psaveH          		EQU	RAM_START + 06Dh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00012	A0006E	psaveL      VAR BYTE  BANK0  SYSTEM   '        Lo Pri.
psaveL          		EQU	RAM_START + 06Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00009	A0006F	psaveUH     VAR BYTE  BANK0  SYSTEM   ' PCLATU Hi Pri.
psaveUH         		EQU	RAM_START + 06Fh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00010	A00070	psaveUL     VAR BYTE  BANK0  SYSTEM   '        Lo Pri.
psaveUL         		EQU	RAM_START + 070h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00007	A00071	ssave       var byte  BANK0  SYSTEM   ' location for STATUS register
ssave           		EQU	RAM_START + 071h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00079	A00072	DutyVars              VAR BYTE[4]
_DutyVars        		EQU	RAM_START + 072h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00065	A00076	STKanal1              var long
_STKanal1        		EQU	RAM_START + 076h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00066	A0007A	STKanal2              var long
_STKanal2        		EQU	RAM_START + 07Ah
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00067	A0007E	STKanal3              var long
_STKanal3        		EQU	RAM_START + 07Eh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00068	A00082	STKanal4              var long
_STKanal4        		EQU	RAM_START + 082h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00085	A00086	Displej               var byte[5]
_Displej         		EQU	RAM_START + 086h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00086	A0008B	Memorija              var byte[75]
_Memorija        		EQU	RAM_START + 08Bh
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00069	Kanal1                VAR DutyVars[0]       
_Kanal1          		EQU	_DutyVars
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00070	Kanal2                VAR DutyVars[1]          
_Kanal2          		EQU	_DutyVars + 001h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00071	Kanal3                VAR DutyVars[2]
_Kanal3          		EQU	_DutyVars + 002h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00072	Kanal4                VAR DutyVars[3]
_Kanal4          		EQU	_DutyVars + 003h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00074	RKanal1               VAR DutyVars[0]       
_RKanal1         		EQU	_DutyVars
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00075	RKanal2               VAR DutyVars[1]          
_RKanal2         		EQU	_DutyVars + 001h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00076	RKanal3               VAR DutyVars[2]
_RKanal3         		EQU	_DutyVars + 002h
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00077	RKanal4               VAR DutyVars[3]
_RKanal4         		EQU	_DutyVars + 003h
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00271	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00272	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00273	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00274	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _Serviced_H      	_INT_Flags??0
#define _Serviced_L      	_INT_Flags??1
#define _InHPint         	_INT_Flags??2
#define _NoPriority      	_INT_Flags??3
#define _TMR1ON          	_T1CON??0
#define _BCKLIGHT        	_PORTB??5
#define _TLEFT           	_PORTB??3
#define _TRIGHT          	_PORTB??1
#define _TUP             	_PORTB??0
#define _TDOWN           	_PORTB??2
#define _ODRZAVANJE      	_PORTB??4
#define _SDA             	_PORTD??0
#define _SCL             	_PORTD??1
#define _NovoStanjeDesno 	 PB01, 000h
#define _StaroStanjeDesno	 PB01, 004h
#define _NovoStanjeLevo  	 PB01, 003h
#define _StaroStanjeLevo 	 PB01, 007h
#define _NovoStanjeGore  	 PB01, 002h
#define _StaroStanjeGore 	 PB01, 006h
#define _NovoStanjeDole  	 PB01, 001h
#define _StaroStanjeDole 	 PB01, 005h
#define _CMCON??7        	 CMCON, 007h
#define _INT_Flags??0    	 INT_Flags, 000h
#define _INT_Flags??1    	 INT_Flags, 001h
#define _INT_Flags??2    	 INT_Flags, 002h
#define _INT_Flags??3    	 INT_Flags, 003h
#define _T1CON??0        	 T1CON, 000h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??4        	 PORTB, 004h
#define _PORTD??0        	 PORTD, 000h
#define _PORTD??1        	 PORTD, 001h

; Constants.
_USBMEMORYADDRESS		EQU	00400h
_RTC             		EQU	000D0h
_SecReg          		EQU	00000h

; EEPROM data.


	INCLUDE	"DANER V1.MAC"
	INCLUDE	"C:\PBP3\PBPPI18L.LIB"


; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00036	#HEADER
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00062	#CONFIG
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00252	BANKA   $0000, $005F
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00253	BANK0   $0060, $00FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00254	BANK1   $0100, $01FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00255	BANK2   $0200, $02FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00256	BANK3   $0300, $03FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00257	BANK4   $0400, $04FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00258	BANK5   $0500, $05FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00259	BANK6   $0600, $06FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00260	BANK7   $0700, $07FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00262	'EEPROM  $F00000, $F000FF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00264	    #MSG "LONG Variables enabled (PBPL used)"
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00265	    LIBRARY  "PBPPI18L"

; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00266	    INCLUDE "PBPPI18L.RAM"
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00269	    INCLUDE "PBPPIC18.RAM"
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00270	#ENDIF
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00275	USBMEMORYADDRESS Con	$400	' USB RAM starts here
; C:\PBP3\DEVICES\PIC18F4550.PBPINC	00279	#HEADER

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00001	asm

	ASM?

        __CONFIG    _CONFIG1L, _PLLDIV_1_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L
        __CONFIG    _CONFIG1H, _FOSC_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H
        __CONFIG    _CONFIG2L, _PWRT_ON_2L & _BOR_ON_2L & _BORV_3_2L & _VREGEN_ON_2L
        __CONFIG    _CONFIG2H, _WDT_OFF_2H & _WDTPS_512_2H
        __CONFIG    _CONFIG3H, _CCP2MX_ON_3H & _PBADEN_OFF_3H & _LPT1OSC_OFF_3H & _MCLRE_OFF_3H
        __CONFIG    _CONFIG4L, _STVREN_ON_4L & _LVP_OFF_4L & _XINST_OFF_4L
        __CONFIG    _CONFIG5L, _CP1_ON_5L & _CP0_ON_5L
        __CONFIG    _CONFIG5H, _CPB_ON_5H & _CPD_ON_5H


	ENDASM?

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00012	DEFINE OSC 20    ' oscilator od 20MHz

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00013	CMCON.7 = 0      ' gasi komparatore
	MOVE?CT	000h, _CMCON??7

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00015	INCLUDE "DT_INTS-18.bas"            

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00001	DISABLE DEBUG
	DDISABLE?	
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00003	DEFINE  INTHAND       INT_ENTRY_H  ' Context saving for High Priority Ints
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00004	DEFINE  INTLHAND      INT_ENTRY_L  ' Context saving for Low Priority Ints

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00027	INT_Flags = 0 
	MOVE?CB	000h, INT_Flags

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00029	goto  OVER_DT_INTS_18
	GOTO?L	_OVER_DT_INTS_18

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00031	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00168	asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00186	asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00296	asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00352	asm  ; -- USB sources --

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00398	asm  ; -- Ethernet sources --

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00422	asm  ; -- CAN Module --

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00461	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00474	Asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00513	Asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00532	Asm

	ASM?

INT_FINISH_H   macro
  endm


	ENDASM?


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00538	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00592	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00648	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00697	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00766	asm

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00843	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00935	OVER_DT_INTS_18:

	LABEL?L	_OVER_DT_INTS_18	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DT_INTS-18.BAS	00937	ENABLE DEBUG
	DENABLE?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00016	INCLUDE "SPWM_INT.bas" 

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00004	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00053	@Timer1 = TMR1L                   ; map timer registers to a word variable

	ASM?
Timer1 = TMR1L                   ; map timer registers to a word variable

	ENDASM?

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00055	TimerReload  CON EXT              ; Get the External Constant

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00058	ASM

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


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\SPWM_INT.BAS	00102	ASm

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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00019	DEFINE  LCD_DREG PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00020	DEFINE  LCD_DBIT 4
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00021	DEFINE  LCD_BITS 4
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00022	DEFINE  LCD_RSREG PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00023	DEFINE  LCD_RSBIT 2
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00024	DEFINE  LCD_EREG PORTD
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00025	DEFINE  LCD_EBIT  3
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00026	DEFINE  LCD_LINES 2
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00027	DEFINE  LCD_COMMANDUS 2000
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00028	DEFINE  LCD_DATAUS 40
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00030	DEFINE  SPWM_FREQ  170          
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00031	DEFINE  SPWM_RES   100
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00034	symbol BCKLIGHT = PORTB.5
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00035	SYMBOL TLEFT = PORTB.3
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00036	SYMBOL TRIGHT = PORTB.1 
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00037	SYMBOL TUP = PORTB.0
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00038	SYMBOL TDOWN = PORTB.2
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00039	SYMBOL ODRZAVANJE = PORTB.4
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00040	symbol SDA = PORTD.0
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00041	symbol SCL = PORTD.1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00044	output bcklight
	OUTPUT?T	_BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00045	input TLEFT
	INPUT?T	_TLEFT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00046	input TRIGHT
	INPUT?T	_TRIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00047	input TUP
	INPUT?T	_TUP

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00048	input TDOWN
	INPUT?T	_TDOWN

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00049	input odrzavanje
	INPUT?T	_ODRZAVANJE

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00052	ADCON0  =   %00000001       
	MOVE?CB	001h, ADCON0

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00053	ADCON1  =   %00001101      
	MOVE?CB	00Dh, ADCON1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00054	ADCON2  =   %10010110         
	MOVE?CB	096h, ADCON2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00055	PORTB   =   0
	MOVE?CB	000h, PORTB

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00056	PORTC   =   0
	MOVE?CB	000h, PORTC

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00057	PORTD   =   0
	MOVE?CB	000h, PORTD

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00058	PORTE   =   0
	MOVE?CB	000h, PORTE
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00061	RTC                 CON %11010000 
; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00062	SecReg              CON $00

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00134	ASM

	ASM?

SPWM_LIST  macro                   
     SPWM_PIN  PORTC, 1, _Kanal1  
     SPWM_PIN  PORTC, 2, _Kanal2 
     SPWM_PIN  PORTC, 0, _Kanal3 
     SPWM_PIN  PORTE, 2, _Kanal4 
  endm
  SPWM_INIT  SPWM_LIST              


	ENDASM?


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00143	ASM

	ASM?

INT_LIST  macro   
        INT_Handler   TMR1_INT,  SPWMhandler,  ASM,  yes
    endm
    INT_CREATE                    


	ENDASM?


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00149	@ INT_ENABLE  TMR1_INT              

	ASM?
 INT_ENABLE  TMR1_INT              

	ENDASM?


; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00151	clear   ' sve ocisti
	CLEAR?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00153	starostanjeDesno    = 1
	MOVE?CT	001h, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00154	starostanjelevo     = 1 
	MOVE?CT	001h, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00155	starostanjegore     = 1 
	MOVE?CT	001h, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00156	starostanjedole     = 1
	MOVE?CT	001h, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00157	meni                = 0
	MOVE?CB	000h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00159	Init:

	LABEL?L	_Init	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00160	    gosub PrviPut 
	GOSUB?L	_PrviPut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00161	    Lcdout $fe,1,"D A N E R  L E D"
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00162	    lcdout $fe,$c0,"CONTROL FW:1.0" 
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
	LCDOUT?C	030h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00163	    BCKLIGHT = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00164	    kanal1 = 0  
	MOVE?CB	000h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00165	    kanal2 = 0
	MOVE?CB	000h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00166	    kanal3 = 0
	MOVE?CB	000h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00167	    kanal4 = 0
	MOVE?CB	000h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00168	    kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00169	    gosub EEpromMemorija
	GOSUB?L	_EEpromMemorija

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00170	    pause 1000
	PAUSE?C	003E8h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00171	    read 3,x
	READADDRESS?C	003h
	READ?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00172	    if x = 1 then 
	CMPNE?BCL	_x, 001h, L00001

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00173	        write 84,rkanal1
	WRITEADDRESS?C	054h
	WRITE?B	_RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00174	        write 85,rkanal2
	WRITEADDRESS?C	055h
	WRITE?B	_RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00175	        write 86,rkanal3
	WRITEADDRESS?C	056h
	WRITE?B	_RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00176	        write 87,rkanal4
	WRITEADDRESS?C	057h
	WRITE?B	_RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00177	        stkanal1 = rkanal1 * 100
	MUL?BCN	_RKanal1, 064h, _STKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00178	        stkanal2 = rkanal2 * 100
	MUL?BCN	_RKanal2, 064h, _STKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00179	        stkanal3 = rkanal3 * 100
	MUL?BCN	_RKanal3, 064h, _STKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00180	        stkanal4 = rkanal4 * 100
	MUL?BCN	_RKanal4, 064h, _STKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00181	        goto main 
	GOTO?L	_main

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00182	    endif
	LABEL?L	L00001	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00183	    if x = 2 then
	CMPNE?BCL	_x, 002h, L00003

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00184	       KURSOR = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00185	       read 80,rkanal1
	READADDRESS?C	050h
	READ?B	_RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00186	       read 81,rkanal2
	READADDRESS?C	051h
	READ?B	_RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00187	       read 82,rkanal3
	READADDRESS?C	052h
	READ?B	_RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00188	       read 83,rkanal4
	READADDRESS?C	053h
	READ?B	_RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00190	       goto RucnoPodesavanje
	GOTO?L	_RucnoPodesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00191	    endif
	LABEL?L	L00003	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00193	Main:

	LABEL?L	_main	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00194	     novostanjedesno     = tright
	MOVE?TT	_TRIGHT, _NovoStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00195	     novostanjelevo      = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00196	     novostanjeGore      = tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00197	     novostanjedole      = tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00199	     x = x + 1    
	ADD?BCB	_x, 001h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00200	     if BezTastera< 3000 then 
	CMPGE?WCL	_BezTastera, 000000BB8h, L00005

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00201	       BezTastera =  BezTastera + 1 
	ADD?WCW	_BezTastera, 001h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00202	       bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00203	     else
	GOTO?L	L00006
	LABEL?L	L00005	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00204	        bcklight = 0 
	MOVE?CT	000h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00205	     endif
	LABEL?L	L00006	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00206	     gosub uzmi_vreme                                                                                  
	GOSUB?L	_uzmi_vreme

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00207	     if novostanjegore < starostanjegore then 
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00007

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00208	       BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00209	       if bcklight = 1 then 
	CMPNE?TCL	_BCKLIGHT, 001h, L00009

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00210	          i = i + 1 
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00211	          if i >= 1 then 
	CMPLT?BCL	_i, 001h, L00011

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00212	             i = 0 
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00213	             meni = 0
	MOVE?CB	000h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00214	             goto menu 
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00215	          endif
	LABEL?L	L00011	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00216	       endif
	LABEL?L	L00009	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00217	     ENDIF
	LABEL?L	L00007	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00219	     if novostanjedole < starostanjedole then 
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00013

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00220	        BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00221	        if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00015

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00222	           i = i + 1 
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00223	           if i >= 1 then 
	CMPLT?BCL	_i, 001h, L00017

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00224	              i = 0 
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00225	              meni = 68
	MOVE?CB	044h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00226	              goto menu 
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00227	           endif
	LABEL?L	L00017	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00228	        endif
	LABEL?L	L00015	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00229	     ENDIF
	LABEL?L	L00013	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00230	     if novostanjelevo  < starostanjelevo  then  beztastera = 0
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00019
	MOVE?CW	000h, _BezTastera
	LABEL?L	L00019	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00231	     if novostanjedesno < starostanjedesno then  beztastera = 0
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00021
	MOVE?CW	000h, _BezTastera
	LABEL?L	L00021	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00232	     if odrzavanje = 0 then 
	CMPNE?TCL	_ODRZAVANJE, 000h, L00023

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00233	           StaraV1 = kanal1
	MOVE?BB	_Kanal1, _StaraV1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00234	           StaraV2 = kanal2
	MOVE?BB	_Kanal2, _StaraV2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00235	           StaraV3 = kanal3
	MOVE?BB	_Kanal3, _StaraV3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00236	           StaraV4 = kanal4
	MOVE?BB	_Kanal4, _StaraV4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00237	          read 2,osvetljenjeOdrzavanje
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00238	          goto OdrzavanjePrekidac
	GOTO?L	_OdrzavanjePrekidac

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00239	     endif
	LABEL?L	L00023	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00240	     if x < 90 then  dvetacke =  " " 
	CMPGE?BCL	_x, 05Ah, L00025
	MOVE?CB	020h, _DveTacke
	LABEL?L	L00025	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00241	     if x > 90 and x < 180 then DveTacke = ":"
	CMPGT?BCB	_x, 05Ah, T1
	CMPLT?BCB	_x, 0B4h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00027
	MOVE?CB	03Ah, _DveTacke
	LABEL?L	L00027	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00242	     if x > 180 then x = 0 
	CMPLE?BCL	_x, 0B4h, L00029
	MOVE?CB	000h, _x
	LABEL?L	L00029	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00244	     Lcdout $fe, 2,"D A N E R  L E D" 
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00245	     Lcdout $fe, $c0,">", dec2 decsat ,DveTacke, dec2  decmin,dvetacke, dec2 decsec,"             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00248	     gosub Kreni
	GOSUB?L	_Kreni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00249	     STAROSTANJEgore = NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00250	     STAROSTANJEdesno = NOVOSTANJEdesno
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00251	     STAROSTANJEdole = NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00252	     STAROSTANJElevo = NOVOSTANJElevo
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00253	goto main
	GOTO?L	_main

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00255	RucnoPodesavanje:

	LABEL?L	_RucnoPodesavanje	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00256	     novostanjelevo = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00257	     novostanjedesno = tright
	MOVE?TT	_TRIGHT, _NovoStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00258	     novostanjeGore= tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00259	     novostanjedole= tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00261	     if BezTastera< 3000 then 
	CMPGE?WCL	_BezTastera, 000000BB8h, L00031

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00262	        BezTastera =  BezTastera + 1 
	ADD?WCW	_BezTastera, 001h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00263	        bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00264	     else
	GOTO?L	L00032
	LABEL?L	L00031	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00265	        bcklight = 0 
	MOVE?CT	000h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00266	     endif
	LABEL?L	L00032	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00267	     if odrzavanje = 0 then 
	CMPNE?TCL	_ODRZAVANJE, 000h, L00033

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00268	         StaraV1 = kanal1
	MOVE?BB	_Kanal1, _StaraV1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00269	         StaraV2 = kanal2
	MOVE?BB	_Kanal2, _StaraV2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00270	         StaraV3 = kanal3
	MOVE?BB	_Kanal3, _StaraV3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00271	         StaraV4 = kanal4
	MOVE?BB	_Kanal4, _StaraV4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00272	        read 2,osvetljenjeOdrzavanje
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00273	        goto OdrzavanjePrekidac
	GOTO?L	_OdrzavanjePrekidac

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00274	     endif
	LABEL?L	L00033	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00275	     IF KURSOR = 1 THEN  
	CMPNE?BCL	_Kursor, 001h, L00035

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00276	        displej[1] = ">"
	MOVE?CB	03Eh, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00277	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00278	        displej[3] = " "
	MOVE?CB	020h, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00279	        displej[4] = " " 
	MOVE?CB	020h, _Displej + 00004h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00280	     ENDIF
	LABEL?L	L00035	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00281	     IF KURSOR = 2 THEN
	CMPNE?BCL	_Kursor, 002h, L00037

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00282	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00283	        displej[2] = ">"
	MOVE?CB	03Eh, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00284	        displej[3] = " "
	MOVE?CB	020h, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00285	        displej[4] = " "
	MOVE?CB	020h, _Displej + 00004h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00286	     endif 
	LABEL?L	L00037	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00287	     if kursor = 3 then
	CMPNE?BCL	_Kursor, 003h, L00039

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00288	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00289	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00290	        displej[3] = ">"
	MOVE?CB	03Eh, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00291	        displej[4] = " "
	MOVE?CB	020h, _Displej + 00004h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00292	     endif
	LABEL?L	L00039	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00293	     if kursor = 4 then 
	CMPNE?BCL	_Kursor, 004h, L00041

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00294	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00295	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00296	        displej[3] = " "
	MOVE?CB	020h, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00297	        displej[4] = ">"
	MOVE?CB	03Eh, _Displej + 00004h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00298	     endif
	LABEL?L	L00041	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00300	     if novostanjedesno < starostanjedesno then
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00043

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00301	       BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00302	       if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00045

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00303	           Kursor =  Kursor + 1 
	ADD?BCB	_Kursor, 001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00304	           if kursor > 4 then kursor = 1
	CMPLE?BCL	_Kursor, 004h, L00047
	MOVE?CB	001h, _Kursor
	LABEL?L	L00047	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00305	       endif
	LABEL?L	L00045	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00306	     endif
	LABEL?L	L00043	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00308	     if novostanjelevo < starostanjelevo then
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00049

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00309	       BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00310	       if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00051

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00311	           i = i + 1 
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00312	           if i >= 2 then 
	CMPLT?BCL	_i, 002h, L00053

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00313	              i = 0 
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00314	              meni = 0
	MOVE?CB	000h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00315	              goto menu  
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00316	           endif
	LABEL?L	L00053	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00317	       endif
	LABEL?L	L00051	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00318	     endif
	LABEL?L	L00049	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00319	     if tup = 0 then
	CMPNE?TCL	_TUP, 000h, L00055

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00320	        BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00321	         if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00057

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00322	            if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00059

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00323	                Rkanal1 = Rkanal1 + 1 
	ADD?BCB	_RKanal1, 001h, _RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00324	                if Rkanal1 > 100 then rkanal1 = 100 
	CMPLE?BCL	_RKanal1, 064h, L00061
	MOVE?CB	064h, _RKanal1
	LABEL?L	L00061	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00325	                write 80,rkanal1
	WRITEADDRESS?C	050h
	WRITE?B	_RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00326	            endif
	LABEL?L	L00059	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00327	            if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00063

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00328	                Rkanal2 = Rkanal2 + 1
	ADD?BCB	_RKanal2, 001h, _RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00329	                if Rkanal2 > 100 then rkanal2 = 100 
	CMPLE?BCL	_RKanal2, 064h, L00065
	MOVE?CB	064h, _RKanal2
	LABEL?L	L00065	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00330	                write 81,rkanal2
	WRITEADDRESS?C	051h
	WRITE?B	_RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00331	            endif
	LABEL?L	L00063	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00332	            if kursor = 3 then
	CMPNE?BCL	_Kursor, 003h, L00067

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00333	                Rkanal3 = Rkanal3 + 1 
	ADD?BCB	_RKanal3, 001h, _RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00334	                if Rkanal3 > 100 then rkanal3 = 100 
	CMPLE?BCL	_RKanal3, 064h, L00069
	MOVE?CB	064h, _RKanal3
	LABEL?L	L00069	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00335	                write 82,rkanal3
	WRITEADDRESS?C	052h
	WRITE?B	_RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00336	            endif
	LABEL?L	L00067	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00337	            if kursor = 4 then
	CMPNE?BCL	_Kursor, 004h, L00071

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00338	                Rkanal4 = Rkanal4 + 1 
	ADD?BCB	_RKanal4, 001h, _RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00339	                if Rkanal4 > 100 then rkanal4 = 100 
	CMPLE?BCL	_RKanal4, 064h, L00073
	MOVE?CB	064h, _RKanal4
	LABEL?L	L00073	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00340	                write 83,rkanal4
	WRITEADDRESS?C	053h
	WRITE?B	_RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00341	            endif
	LABEL?L	L00071	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00342	            pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00343	         endif
	LABEL?L	L00057	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00344	     endif 
	LABEL?L	L00055	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00346	     if tdown = 0 then
	CMPNE?TCL	_TDOWN, 000h, L00075

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00347	        BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00348	        if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00077

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00349	             if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00079

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00350	                Rkanal1 = Rkanal1 - 1
	SUB?BCB	_RKanal1, 001h, _RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00351	                if  Rkanal1 < 1 or  Rkanal1 > 100 then  Rkanal1 = 0 
	CMPLT?BCB	_RKanal1, 001h, T1
	CMPGT?BCB	_RKanal1, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00081
	MOVE?CB	000h, _RKanal1
	LABEL?L	L00081	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00352	                write 80,rkanal1
	WRITEADDRESS?C	050h
	WRITE?B	_RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00353	             endif
	LABEL?L	L00079	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00355	             if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00083

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00356	                Rkanal2 = Rkanal2 - 1
	SUB?BCB	_RKanal2, 001h, _RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00357	                if  Rkanal2 < 1 or  Rkanal2 > 100 then  Rkanal2 = 0 
	CMPLT?BCB	_RKanal2, 001h, T1
	CMPGT?BCB	_RKanal2, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00085
	MOVE?CB	000h, _RKanal2
	LABEL?L	L00085	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00358	                write 81,rkanal2
	WRITEADDRESS?C	051h
	WRITE?B	_RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00359	             endif
	LABEL?L	L00083	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00361	             if kursor = 3 then
	CMPNE?BCL	_Kursor, 003h, L00087

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00362	                Rkanal3 = Rkanal3 - 1 
	SUB?BCB	_RKanal3, 001h, _RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00363	                if  Rkanal3 < 1 or  Rkanal3 > 100 then  Rkanal3 = 0
	CMPLT?BCB	_RKanal3, 001h, T1
	CMPGT?BCB	_RKanal3, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00089
	MOVE?CB	000h, _RKanal3
	LABEL?L	L00089	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00364	                write 82,rkanal3
	WRITEADDRESS?C	052h
	WRITE?B	_RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00365	             endif
	LABEL?L	L00087	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00367	             if kursor = 4 then
	CMPNE?BCL	_Kursor, 004h, L00091

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00368	                Rkanal4 = Rkanal4 - 1 
	SUB?BCB	_RKanal4, 001h, _RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00369	                if  Rkanal4 < 1 or  Rkanal4 > 100 then  Rkanal4 = 0
	CMPLT?BCB	_RKanal4, 001h, T1
	CMPGT?BCB	_RKanal4, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00093
	MOVE?CB	000h, _RKanal4
	LABEL?L	L00093	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00370	                write 83,rkanal4
	WRITEADDRESS?C	053h
	WRITE?B	_RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00371	             endif
	LABEL?L	L00091	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00372	             pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00373	        endif
	LABEL?L	L00077	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00374	     endif 
	LABEL?L	L00075	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00376	     Lcdout $fe, 2,  displej[1],"#1 ",dec3 rkanal1,"%", displej[2],"2# ",dec3 rkanal2,"% "
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00377	     Lcdout $fe, $c0,displej[3],"#3 ",dec3 rkanal3,"%", displej[4],"4# ",dec3 rkanal4,"% "
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00379	     STAROSTANJElevo = NOVOSTANJElevo 
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00380	     STAROSTANJEgore = NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00381	     STAROSTANJEdesno = NOVOSTANJEdesno
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00382	     STAROSTANJEdole = NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00383	 goto RucnoPodesavanje
	GOTO?L	_RucnoPodesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00385	Kreni:

	LABEL?L	_Kreni	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00386	   novostanjertc = decmin
	MOVE?BB	_DECmin, _NovostanjeRTC

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00387	   TMinuta = (decsat * 60) + decmin
	MUL?BCN	_DECsat, 03Ch, T1
	ADD?NBW	T1, _DECmin, _TMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00388	   if novostanjeRTC <> starostanjeRTC then
	CMPEQ?BBL	_NovostanjeRTC, _StarostanjeRTC, L00095

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00389	      NoviMinut = 1
	MOVE?CB	001h, _NoviMinut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00390	   else
	GOTO?L	L00096
	LABEL?L	L00095	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00391	      NoviMinut = 0
	MOVE?CB	000h, _NoviMinut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00392	   endif
	LABEL?L	L00096	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00394	    satPocetak   = memorija[8] 
	MOVE?BB	_Memorija + 00008h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00395	    MinutPocetak = memorija[9]  
	MOVE?BB	_Memorija + 00009h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00396	    osvPocetak   = memorija[10]
	MOVE?BB	_Memorija + 0000Ah, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00397	    SatKraj      = memorija[12]  
	MOVE?BB	_Memorija + 0000Ch, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00398	    MinutKraj    = memorija[13]
	MOVE?BB	_Memorija + 0000Dh, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00399	    OsvKraj      = memorija[14]
	MOVE?BB	_Memorija + 0000Eh, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00401	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00402	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00403	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00097

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00404	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00099

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00405	          kanal1 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00406	          stkanal1 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00407	       else
	GOTO?L	L00100
	LABEL?L	L00099	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00408	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00101

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00409	              kanal1 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00410	          else
	GOTO?L	L00102
	LABEL?L	L00101	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00411	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00103

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00412	                 stkanal1 = stkanal1 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal1, T2, _STKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00413	                 kanal1 = stkanal1 / 100 
	DIV?NCB	_STKanal1, 064h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00414	              endif
	LABEL?L	L00103	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00415	          endif
	LABEL?L	L00102	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00416	       endif
	LABEL?L	L00100	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00417	    endif
	LABEL?L	L00097	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00419	    satPocetak   = memorija[16] 
	MOVE?BB	_Memorija + 00010h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00420	    MinutPocetak = memorija[17]  
	MOVE?BB	_Memorija + 00011h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00421	    osvPocetak   = memorija[18] 
	MOVE?BB	_Memorija + 00012h, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00422	    SatKraj      = memorija[20]  
	MOVE?BB	_Memorija + 00014h, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00423	    MinutKraj    = memorija[21]  
	MOVE?BB	_Memorija + 00015h, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00424	    OsvKraj      = memorija[22]  
	MOVE?BB	_Memorija + 00016h, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00426	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00427	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00429	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00105

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00430	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00107

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00431	          kanal1 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00432	          stkanal1 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00433	       else
	GOTO?L	L00108
	LABEL?L	L00107	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00434	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00109

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00435	              kanal1 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00436	          else
	GOTO?L	L00110
	LABEL?L	L00109	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00437	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00111

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00438	                 stkanal1 = stkanal1 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal1, T2, _STKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00439	                 kanal1 = stkanal1 / 100 
	DIV?NCB	_STKanal1, 064h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00440	              endif
	LABEL?L	L00111	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00441	          endif
	LABEL?L	L00110	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00442	       endif
	LABEL?L	L00108	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00443	    endif 
	LABEL?L	L00105	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00445	    satPocetak   = memorija[24] 
	MOVE?BB	_Memorija + 00018h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00446	    MinutPocetak = memorija[25]  
	MOVE?BB	_Memorija + 00019h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00447	    osvPocetak   = memorija[26]
	MOVE?BB	_Memorija + 0001Ah, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00448	    SatKraj      = memorija[28]  
	MOVE?BB	_Memorija + 0001Ch, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00449	    MinutKraj    = memorija[29]
	MOVE?BB	_Memorija + 0001Dh, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00450	    OsvKraj      = memorija[30]
	MOVE?BB	_Memorija + 0001Eh, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00452	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00453	    KMinuta = (satkraj * 60) + minutkraj   
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00454	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00113

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00455	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00115

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00456	          kanal2 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00457	          stkanal2 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00458	       else
	GOTO?L	L00116
	LABEL?L	L00115	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00459	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00117

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00460	              kanal2 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00461	          else
	GOTO?L	L00118
	LABEL?L	L00117	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00462	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00119

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00463	                 stkanal2 = stkanal2 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal2, T2, _STKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00464	                 kanal2 = stkanal2 / 100 
	DIV?NCB	_STKanal2, 064h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00465	              endif
	LABEL?L	L00119	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00466	          endif
	LABEL?L	L00118	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00467	       endif
	LABEL?L	L00116	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00468	    endif  
	LABEL?L	L00113	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00470	    satPocetak   = memorija[32] 
	MOVE?BB	_Memorija + 00020h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00471	    MinutPocetak = memorija[33]  
	MOVE?BB	_Memorija + 00021h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00472	    osvPocetak   = memorija[34] 
	MOVE?BB	_Memorija + 00022h, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00473	    SatKraj      = memorija[36]  
	MOVE?BB	_Memorija + 00024h, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00474	    MinutKraj    = memorija[37]  
	MOVE?BB	_Memorija + 00025h, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00475	    OsvKraj      = memorija[38]  
	MOVE?BB	_Memorija + 00026h, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00477	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00478	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00480	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00121

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00481	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00123

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00482	          kanal2 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00483	          stkanal2 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00484	       else
	GOTO?L	L00124
	LABEL?L	L00123	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00485	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00125

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00486	              kanal2 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00487	          else
	GOTO?L	L00126
	LABEL?L	L00125	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00488	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00127

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00489	                 stkanal2 = stkanal2 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal2, T2, _STKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00490	                 kanal2 = stkanal2 / 100 
	DIV?NCB	_STKanal2, 064h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00491	              endif
	LABEL?L	L00127	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00492	          endif
	LABEL?L	L00126	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00493	       endif
	LABEL?L	L00124	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00494	    endif 
	LABEL?L	L00121	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00497	    satPocetak   = memorija[40] 
	MOVE?BB	_Memorija + 00028h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00498	    MinutPocetak = memorija[41]  
	MOVE?BB	_Memorija + 00029h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00499	    osvPocetak   = memorija[42]
	MOVE?BB	_Memorija + 0002Ah, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00500	    SatKraj      = memorija[44]  
	MOVE?BB	_Memorija + 0002Ch, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00501	    MinutKraj    = memorija[45]
	MOVE?BB	_Memorija + 0002Dh, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00502	    OsvKraj      = memorija[46]
	MOVE?BB	_Memorija + 0002Eh, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00504	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00505	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00507	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00129

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00508	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00131

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00509	          kanal3 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00510	          stkanal3 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00511	       else
	GOTO?L	L00132
	LABEL?L	L00131	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00512	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00133

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00513	              kanal3 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00514	          else
	GOTO?L	L00134
	LABEL?L	L00133	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00515	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00135

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00516	                 stkanal3 = stkanal3 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal3, T2, _STKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00517	                 kanal3 = stkanal3 / 100 
	DIV?NCB	_STKanal3, 064h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00518	              endif
	LABEL?L	L00135	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00519	          endif
	LABEL?L	L00134	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00520	       endif
	LABEL?L	L00132	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00521	    endif 
	LABEL?L	L00129	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00523	    satPocetak   = memorija[48] 
	MOVE?BB	_Memorija + 00030h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00524	    MinutPocetak = memorija[49]  
	MOVE?BB	_Memorija + 00031h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00525	    osvPocetak   = memorija[50] 
	MOVE?BB	_Memorija + 00032h, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00526	    SatKraj      = memorija[52]  
	MOVE?BB	_Memorija + 00034h, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00527	    MinutKraj    = memorija[53]  
	MOVE?BB	_Memorija + 00035h, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00528	    OsvKraj      = memorija[54]  
	MOVE?BB	_Memorija + 00036h, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00530	    PMinuta = (satpocetak * 60)+ minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00531	    KMinuta = (satkraj * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00533	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00137

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00534	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00139

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00535	          kanal3 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00536	          stkanal3 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00537	       else
	GOTO?L	L00140
	LABEL?L	L00139	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00538	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00141

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00539	              kanal3 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00540	          else
	GOTO?L	L00142
	LABEL?L	L00141	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00541	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00143

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00542	                 stkanal3 = stkanal3 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal3, T2, _STKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00543	                 kanal3 = stkanal3 / 100 
	DIV?NCB	_STKanal3, 064h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00544	              endif
	LABEL?L	L00143	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00545	          endif
	LABEL?L	L00142	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00546	       endif
	LABEL?L	L00140	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00547	    endif 
	LABEL?L	L00137	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00549	    satPocetak   = memorija[56] 
	MOVE?BB	_Memorija + 00038h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00550	    MinutPocetak = memorija[57]  
	MOVE?BB	_Memorija + 00039h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00551	    osvPocetak   = memorija[58]
	MOVE?BB	_Memorija + 0003Ah, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00552	    SatKraj      = memorija[60]  
	MOVE?BB	_Memorija + 0003Ch, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00553	    MinutKraj    = memorija[61]
	MOVE?BB	_Memorija + 0003Dh, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00554	    OsvKraj      = memorija[62]
	MOVE?BB	_Memorija + 0003Eh, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00556	    PMinuta = (satpocetak * 60) + minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00557	    KMinuta = (satkraj    * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00559	    if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00145

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00560	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00147

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00561	          kanal4 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00562	          stkanal4 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00563	       else
	GOTO?L	L00148
	LABEL?L	L00147	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00564	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00149

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00565	              kanal4 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00566	          else
	GOTO?L	L00150
	LABEL?L	L00149	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00567	              if noviminut = 1 then 
	CMPNE?BCL	_NoviMinut, 001h, L00151

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00568	                 stkanal4 = stkanal4 + (((osvkraj - osvpocetak)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvKraj, _OsvPocetak, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	ADD?NNN	_STKanal4, T2, _STKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00569	                 kanal4 = stkanal4 / 100 
	DIV?NCB	_STKanal4, 064h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00570	              endif
	LABEL?L	L00151	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00571	          endif
	LABEL?L	L00150	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00572	       endif
	LABEL?L	L00148	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00573	    endif 
	LABEL?L	L00145	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00575	    satPocetak   = memorija[64] 
	MOVE?BB	_Memorija + 00040h, _SatPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00576	    MinutPocetak = memorija[65]  
	MOVE?BB	_Memorija + 00041h, _MinutPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00577	    osvPocetak   = memorija[66] 
	MOVE?BB	_Memorija + 00042h, _OsvPocetak

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00578	    SatKraj      = memorija[68]  
	MOVE?BB	_Memorija + 00044h, _SatKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00579	    MinutKraj    = memorija[69]  
	MOVE?BB	_Memorija + 00045h, _MinutKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00580	    OsvKraj      = memorija[70]  
	MOVE?BB	_Memorija + 00046h, _OsvKraj

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00581	    PMinuta = (satpocetak * 60) + minutpocetak
	MUL?BCN	_SatPocetak, 03Ch, T1
	ADD?NBW	T1, _MinutPocetak, _PMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00582	    KMinuta = (satkraj    * 60) + minutkraj
	MUL?BCN	_SatKraj, 03Ch, T1
	ADD?NBW	T1, _MinutKraj, _KMinuta

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00584	if Pminuta =< tminuta and KMinuta >= tminuta then 
	CMPLE?WWB	_PMinuta, _TMinuta, T1
	CMPGE?WWB	_KMinuta, _TMinuta, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00153

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00585	       if Pminuta = tminuta and decsec = 0 then   'pocetna vrednost
	CMPEQ?WWB	_PMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00155

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00586	          kanal4 = osvpocetak
	MOVE?BB	_OsvPocetak, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00587	          stkanal4 = osvpocetak * 100
	MUL?BCN	_OsvPocetak, 064h, _STKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00588	       else
	GOTO?L	L00156
	LABEL?L	L00155	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00589	          if kminuta = tminuta and decsec = 0 then   'krajnja vrednost 
	CMPEQ?WWB	_KMinuta, _TMinuta, T1
	CMPEQ?BCB	_DECSec, 000h, T2
	LAND?BBN	T1, T2, T2
	CMPF?NL	T2, L00157

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00590	              kanal4 = osvkraj
	MOVE?BB	_OsvKraj, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00591	          else
	GOTO?L	L00158
	LABEL?L	L00157	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00592	              if noviminut = 1 then
	CMPNE?BCL	_NoviMinut, 001h, L00159

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00593	                 stkanal4 = stkanal4 - (((osvpocetak - osvkraj)*100/(kminuta - pminuta)))  
	SUB?BBN	_OsvPocetak, _OsvKraj, T1
	MUL?NCN	T1, 064h, T1
	SUB?WWN	_KMinuta, _PMinuta, T2
	DIV?NNN	T1, T2, T2
	SUB?NNN	_STKanal4, T2, _STKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00594	                 kanal4 = stkanal4 / 100 
	DIV?NCB	_STKanal4, 064h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00595	              endif
	LABEL?L	L00159	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00596	          endif
	LABEL?L	L00158	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00597	       endif
	LABEL?L	L00156	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00598	    endif 
	LABEL?L	L00153	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00599	    write 84,kanal1
	WRITEADDRESS?C	054h
	WRITE?B	_Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00600	 write 85,kanal2
	WRITEADDRESS?C	055h
	WRITE?B	_Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00601	 write 86,kanal3
	WRITEADDRESS?C	056h
	WRITE?B	_Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00602	 write 87,kanal4
	WRITEADDRESS?C	057h
	WRITE?B	_Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00604	    starostanjeRTC = novostanjeRTC 
	MOVE?BB	_NovostanjeRTC, _StarostanjeRTC

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00605	return
	RETURN?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00607	Menu:

	LABEL?L	_menu	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00608	    novostanjedesno     = tright
	MOVE?TT	_TRIGHT, _NovoStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00609	    novostanjelevo      = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00610	    novostanjeGore      = tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00611	    novostanjedole      = tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00612	    if BezTastera< 3000 then 
	CMPGE?WCL	_BezTastera, 000000BB8h, L00161

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00613	       BezTastera =  BezTastera + 1 
	ADD?WCW	_BezTastera, 001h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00614	       bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00615	    else
	GOTO?L	L00162
	LABEL?L	L00161	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00616	        bcklight = 0 
	MOVE?CT	000h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00617	    endif
	LABEL?L	L00162	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00618	    if odrzavanje = 0 then 
	CMPNE?TCL	_ODRZAVANJE, 000h, L00163

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00619	       StaraV1 = kanal1
	MOVE?BB	_Kanal1, _StaraV1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00620	       StaraV2 = kanal2
	MOVE?BB	_Kanal2, _StaraV2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00621	       StaraV3 = kanal3
	MOVE?BB	_Kanal3, _StaraV3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00622	       StaraV4 = kanal4
	MOVE?BB	_Kanal4, _StaraV4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00623	       read 2,osvetljenjeOdrzavanje
	READADDRESS?C	002h
	READ?B	_osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00624	       goto OdrzavanjePrekidac
	GOTO?L	_OdrzavanjePrekidac

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00625	    endif
	LABEL?L	L00163	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00626	    if novostanjegore < starostanjegore then 
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00165

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00627	       BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00628	       if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00167

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00629	          i = i + 1 
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00630	          if i > 1 then  
	CMPLE?BCL	_i, 001h, L00169

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00631	             meni = meni + 4
	ADD?BCB	_Meni, 004h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00632	             if meni > 72 then meni = 0
	CMPLE?BCL	_Meni, 048h, L00171
	MOVE?CB	000h, _Meni
	LABEL?L	L00171	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00633	          endif
	LABEL?L	L00169	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00634	       endif
	LABEL?L	L00167	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00635	    ENDIF
	LABEL?L	L00165	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00637	    if novostanjedole < starostanjedole then 
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00173

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00638	       BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00639	       if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00175

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00640	          i = i + 1 
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00641	          if i > 1 then
	CMPLE?BCL	_i, 001h, L00177

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00642	               if meni = 0 then 
	CMPNE?BCL	_Meni, 000h, L00179

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00643	                  meni = 72
	MOVE?CB	048h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00644	               else
	GOTO?L	L00180
	LABEL?L	L00179	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00645	                   meni = meni - 4
	SUB?BCB	_Meni, 004h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00646	               endif
	LABEL?L	L00180	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00647	          endif
	LABEL?L	L00177	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00648	       endif
	LABEL?L	L00175	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00649	    ENDIF
	LABEL?L	L00173	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00651	    if novostanjelevo < starostanjelevo then
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00181

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00652	       beztastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00653	       if bcklight = 1 then
	CMPNE?TCL	_BCKLIGHT, 001h, L00183

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00654	          i = i + 1
	ADD?BCB	_i, 001h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00655	          if i > 1 then
	CMPLE?BCL	_i, 001h, L00185

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00656	             meni = 72
	MOVE?CB	048h, _Meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00657	             i = 0
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00658	          endif
	LABEL?L	L00185	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00659	       endif
	LABEL?L	L00183	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00660	    ENDIF
	LABEL?L	L00181	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00662	Select case meni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00663	    case 0
	CMPNE?BCL	_Meni, 000h, L00189

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00664	    Lcdout $fe, 2,">RTC vreme        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	076h
	LCDOUT?C	072h
	LCDOUT?C	065h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00665	    Lcdout $fe,$c0," Rezim             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	065h
	LCDOUT?C	07Ah
	LCDOUT?C	069h
	LCDOUT?C	06Dh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00667	    case 4
	GOTO?L	L00188
	LABEL?L	L00189	
	CMPNE?BCL	_Meni, 004h, L00190

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00668	    Lcdout $fe, 2," RTC vreme        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	076h
	LCDOUT?C	072h
	LCDOUT?C	065h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00669	    Lcdout $fe,$c0,">Rezim             "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	052h
	LCDOUT?C	065h
	LCDOUT?C	07Ah
	LCDOUT?C	069h
	LCDOUT?C	06Dh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00671	    case 8 
	GOTO?L	L00188
	LABEL?L	L00190	
	CMPNE?BCL	_Meni, 008h, L00191

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00672	    Lcdout $fe, 2,">#1 Svitanje ON      "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00673	    lcdout $fe,$c0," #1 Svitanje OFF      "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00675	    case 12 
	GOTO?L	L00188
	LABEL?L	L00191	
	CMPNE?BCL	_Meni, 00Ch, L00192

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00676	    Lcdout $fe, 2," #1 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00677	    lcdout $fe,$c0,">#1 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00679	    case 16
	GOTO?L	L00188
	LABEL?L	L00192	
	CMPNE?BCL	_Meni, 010h, L00193

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00680	    Lcdout $fe, 2,">#1 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00681	    lcdout $fe,$c0," #1 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00683	    case 20
	GOTO?L	L00188
	LABEL?L	L00193	
	CMPNE?BCL	_Meni, 014h, L00194

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00684	    Lcdout $fe, 2," #1 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00685	    lcdout $fe,$c0,">#1 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	031h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00687	    case 24 
	GOTO?L	L00188
	LABEL?L	L00194	
	CMPNE?BCL	_Meni, 018h, L00195

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00688	    Lcdout $fe, 2,">#2 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00689	    lcdout $fe,$c0," #2 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00691	    case 28 
	GOTO?L	L00188
	LABEL?L	L00195	
	CMPNE?BCL	_Meni, 01Ch, L00196

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00692	    Lcdout $fe, 2," #2 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00693	    lcdout $fe,$c0,">#2 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00695	    case 32
	GOTO?L	L00188
	LABEL?L	L00196	
	CMPNE?BCL	_Meni, 020h, L00197

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00696	    Lcdout $fe, 2,">#2 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00697	    lcdout $fe,$c0," #2 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00699	    case 36
	GOTO?L	L00188
	LABEL?L	L00197	
	CMPNE?BCL	_Meni, 024h, L00198

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00700	    Lcdout $fe, 2," #2 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00701	    lcdout $fe,$c0,">#2 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	032h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00703	    case 40 
	GOTO?L	L00188
	LABEL?L	L00198	
	CMPNE?BCL	_Meni, 028h, L00199

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00704	    Lcdout $fe, 2,">#3 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00705	    lcdout $fe,$c0," #3 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00707	    case 44 
	GOTO?L	L00188
	LABEL?L	L00199	
	CMPNE?BCL	_Meni, 02Ch, L00200

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00708	    Lcdout $fe, 2," #3 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00709	    lcdout $fe,$c0,">#3 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00711	    case 48
	GOTO?L	L00188
	LABEL?L	L00200	
	CMPNE?BCL	_Meni, 030h, L00201

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00712	    Lcdout $fe, 2,">#3 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00713	    lcdout $fe,$c0," #3 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00715	    case 52 
	GOTO?L	L00188
	LABEL?L	L00201	
	CMPNE?BCL	_Meni, 034h, L00202

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00716	    Lcdout $fe, 2," #3 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00717	    lcdout $fe,$c0,">#3 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	033h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00719	    case 56 
	GOTO?L	L00188
	LABEL?L	L00202	
	CMPNE?BCL	_Meni, 038h, L00203

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00720	    Lcdout $fe, 2,">#4 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00721	    lcdout $fe,$c0," #4 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00723	    case 60 
	GOTO?L	L00188
	LABEL?L	L00203	
	CMPNE?BCL	_Meni, 03Ch, L00204

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00724	    Lcdout $fe, 2," #4 Svitanje ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
	LCDOUT?C	065h
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00725	    lcdout $fe,$c0,">#4 Svitanje OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	06Ah
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00727	    case 64
	GOTO?L	L00188
	LABEL?L	L00204	
	CMPNE?BCL	_Meni, 040h, L00205

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00728	    Lcdout $fe, 2,">#4 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00729	    lcdout $fe,$c0," #4 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00731	    case 68 
	GOTO?L	L00188
	LABEL?L	L00205	
	CMPNE?BCL	_Meni, 044h, L00206

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00732	    Lcdout $fe, 2," #4 Sumrak ON     "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	020h
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	04Eh
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00733	    lcdout $fe,$c0,">#4 Sumrak OFF     "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	023h
	LCDOUT?C	034h
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	020h
	LCDOUT?C	04Fh
	LCDOUT?C	046h
	LCDOUT?C	046h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00735	    case 72
	GOTO?L	L00188
	LABEL?L	L00206	
	CMPNE?BCL	_Meni, 048h, L00207

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00736	        read 3,x
	READADDRESS?C	003h
	READ?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00737	        if x = 1 then goto main 
	CMPNE?BCL	_x, 001h, L00208
	GOTO?L	_main
	LABEL?L	L00208	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00738	        if x = 2 then
	CMPNE?BCL	_x, 002h, L00210

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00739	           i = 0
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00740	           KURSOR = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00741	           read 80,rkanal1
	READADDRESS?C	050h
	READ?B	_RKanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00742	           read 81,rkanal2
	READADDRESS?C	051h
	READ?B	_RKanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00743	           read 82,rkanal3
	READADDRESS?C	052h
	READ?B	_RKanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00744	           read 83,rkanal4
	READADDRESS?C	053h
	READ?B	_RKanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00745	           goto RucnoPodesavanje
	GOTO?L	_RucnoPodesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00746	        endif
	LABEL?L	L00210	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00747	end select
	LABEL?L	L00207	
	LABEL?L	L00188	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00748	if novostanjedesno < starostanjedesno then
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00212

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00749	x =  0 
	MOVE?CB	000h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00750	         BezTastera = 0
	MOVE?CW	000h, _BezTastera

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00751	          StaraV1 = kanal1
	MOVE?BB	_Kanal1, _StaraV1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00752	          StaraV2 = kanal2
	MOVE?BB	_Kanal2, _StaraV2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00753	          StaraV3 = kanal3
	MOVE?BB	_Kanal3, _StaraV3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00754	          StaraV4 = kanal4
	MOVE?BB	_Kanal4, _StaraV4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00755	         if bcklight = 1 then 
	CMPNE?TCL	_BCKLIGHT, 001h, L00214

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00756	            kursor = 0
	MOVE?CB	000h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00757	            if meni = 0 then goto RTCvreme
	CMPNE?BCL	_Meni, 000h, L00216
	GOTO?L	_RTCvreme
	LABEL?L	L00216	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00758	            if meni = 4 then
	CMPNE?BCL	_Meni, 004h, L00218

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00759	               read 3,x 
	READADDRESS?C	003h
	READ?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00760	               goto RezimRada
	GOTO?L	_RezimRada

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00761	            endif
	LABEL?L	L00218	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00762	            if meni = 8 then
	CMPNE?BCL	_Meni, 008h, L00220

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00763	               Kanal = 1
	MOVE?CB	001h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00764	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00765	               pali = 1
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00766	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00767	               kanal1 = 0
	MOVE?CB	000h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00768	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00769	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00770	               read meni + 2,osvetljenje       
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00771	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00772	            endif
	LABEL?L	L00220	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00773	            if meni = 12 then
	CMPNE?BCL	_Meni, 00Ch, L00222

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00774	               Kanal = 1
	MOVE?CB	001h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00775	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00776	               pali = 0  
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00777	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00778	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00779	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00780	               read meni + 2,osvetljenje         
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00781	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00782	            endif 
	LABEL?L	L00222	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00783	            if meni = 16 then
	CMPNE?BCL	_Meni, 010h, L00224

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00784	               Kanal = 1
	MOVE?CB	001h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00785	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00786	               pali = 1 
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00787	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00788	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00789	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00790	               read meni + 2,osvetljenje         
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00791	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00792	            endif 
	LABEL?L	L00224	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00793	            if meni = 20 then
	CMPNE?BCL	_Meni, 014h, L00226

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00794	               Kanal = 1 
	MOVE?CB	001h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00795	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00796	               pali = 0 
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00797	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00798	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00799	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00800	               read meni + 2,osvetljenje       
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00801	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00802	            endif
	LABEL?L	L00226	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00803	            if meni = 24 then
	CMPNE?BCL	_Meni, 018h, L00228

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00804	               Kanal = 2
	MOVE?CB	002h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00805	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00806	               pali = 1 
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00807	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00808	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00809	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00810	               read meni + 2,osvetljenje         
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00811	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00812	            endif
	LABEL?L	L00228	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00813	            if meni = 28 then
	CMPNE?BCL	_Meni, 01Ch, L00230

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00814	               Kanal = 2
	MOVE?CB	002h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00815	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00816	               pali = 0 
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00817	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00818	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00819	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00820	               read meni + 2,osvetljenje          
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00821	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00822	            endif 
	LABEL?L	L00230	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00823	            if meni = 32 then
	CMPNE?BCL	_Meni, 020h, L00232

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00824	               Kanal = 2
	MOVE?CB	002h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00825	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00826	               pali = 1  
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00827	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00828	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00829	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00830	               read meni + 2,osvetljenje       
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00831	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00832	            endif 
	LABEL?L	L00232	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00833	            if meni = 36 then
	CMPNE?BCL	_Meni, 024h, L00234

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00834	               Kanal = 2 
	MOVE?CB	002h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00835	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00836	               pali = 0 
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00837	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00838	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00839	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00840	               read meni + 2,osvetljenje     
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00841	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00842	            endif
	LABEL?L	L00234	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00843	            if meni = 40 then
	CMPNE?BCL	_Meni, 028h, L00236

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00844	               Kanal = 3
	MOVE?CB	003h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00845	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00846	               pali = 1 
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00847	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00848	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00849	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00850	               read meni + 2,osvetljenje        
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00851	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00852	            endif
	LABEL?L	L00236	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00853	            if meni = 44 then
	CMPNE?BCL	_Meni, 02Ch, L00238

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00854	               Kanal = 3
	MOVE?CB	003h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00855	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00856	               pali = 0  
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00857	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00858	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00859	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00860	               read meni + 2,osvetljenje        
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00861	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00862	            endif 
	LABEL?L	L00238	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00863	            if meni = 48 then
	CMPNE?BCL	_Meni, 030h, L00240

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00864	               Kanal = 3
	MOVE?CB	003h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00865	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00866	               pali = 1
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00867	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00868	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00869	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00870	               read meni + 2,osvetljenje          
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00871	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00872	            endif 
	LABEL?L	L00240	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00873	            if meni = 52 then
	CMPNE?BCL	_Meni, 034h, L00242

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00874	               Kanal = 3 
	MOVE?CB	003h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00875	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00876	               pali = 0  
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00877	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00878	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00879	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00880	               read meni + 2,osvetljenje       
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00881	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00882	            endif
	LABEL?L	L00242	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00883	            if meni = 56 then
	CMPNE?BCL	_Meni, 038h, L00244

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00884	               Kanal = 4
	MOVE?CB	004h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00885	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00886	               pali = 1
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00887	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00888	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00889	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00890	               read meni + 2,osvetljenje         
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00891	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00892	            endif
	LABEL?L	L00244	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00893	            if meni = 60 then
	CMPNE?BCL	_Meni, 03Ch, L00246

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00894	               Kanal = 4
	MOVE?CB	004h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00895	               svitanje = 1
	MOVE?CB	001h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00896	               pali = 0 
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00897	               kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00898	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00899	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00900	               read meni + 2,osvetljenje        
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00901	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00902	            endif 
	LABEL?L	L00246	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00903	            if meni = 64 then
	CMPNE?BCL	_Meni, 040h, L00248

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00904	               Kanal = 4
	MOVE?CB	004h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00905	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00906	               pali = 1
	MOVE?CB	001h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00907	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00908	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00909	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00910	               read meni + 2,osvetljenje           
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00911	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00912	            endif 
	LABEL?L	L00248	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00913	            if meni = 68 then
	CMPNE?BCL	_Meni, 044h, L00250

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00914	               Kanal = 4 
	MOVE?CB	004h, _Kanal

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00915	               svitanje = 0
	MOVE?CB	000h, _Svitanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00916	               pali = 0 
	MOVE?CB	000h, _Pali

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00917	               kursor = 1
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00918	               read meni,sat
	READADDRESS?B	_Meni
	READ?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00919	               read meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	READADDRESS?N	T1
	READ?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00920	               read meni + 2,osvetljenje       
	ADD?BCN	_Meni, 002h, T1
	READADDRESS?N	T1
	READ?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00921	               goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00922	            endif
	LABEL?L	L00250	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00923	         endif
	LABEL?L	L00214	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00924	ENDIF
	LABEL?L	L00212	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00925	    gosub Kreni
	GOSUB?L	_Kreni

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00926	    STAROSTANJEgore=NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00927	    STAROSTANJEdesno=NOVOSTANJEdesno
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00928	    STAROSTANJEdole=NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00929	    STAROSTANJElevo=NOVOSTANJElevo
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00930	goto menu
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00931	RezimRada:

	LABEL?L	_RezimRada	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00932	     bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00933	     novostanjelevo = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00934	     novostanjeGore = tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00935	     novostanjedole = tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00937	     if novostanjelevo < starostanjelevo then
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00252

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00938	        i = 0
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00939	        goto menu
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00940	     ENDIF 
	LABEL?L	L00252	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00941	     if novostanjegore < starostanjegore then
	CMPGE?TTL	_NovoStanjeGore, _StaroStanjeGore, L00254

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00942	       if x = 1 then 
	CMPNE?BCL	_x, 001h, L00256

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00943	          x = 2 
	MOVE?CB	002h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00944	       else
	GOTO?L	L00257
	LABEL?L	L00256	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00945	           x = 1
	MOVE?CB	001h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00946	       endif
	LABEL?L	L00257	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00947	       write 3,x
	WRITEADDRESS?C	003h
	WRITE?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00948	    endif
	LABEL?L	L00254	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00949	    if novostanjedole < starostanjedole then
	CMPGE?TTL	_NovoStanjeDole, _StaroStanjeDole, L00258

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00950	       if x = 1 then 
	CMPNE?BCL	_x, 001h, L00260

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00951	          x = 2 
	MOVE?CB	002h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00952	       else
	GOTO?L	L00261
	LABEL?L	L00260	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00953	           x = 1
	MOVE?CB	001h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00954	       endif
	LABEL?L	L00261	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00955	       write 3,x
	WRITEADDRESS?C	003h
	WRITE?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00956	    endif   
	LABEL?L	L00258	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00958	     Lcdout $fe, 2,"Rezim rada          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	052h
	LCDOUT?C	065h
	LCDOUT?C	07Ah
	LCDOUT?C	069h
	LCDOUT?C	06Dh
	LCDOUT?C	020h
	LCDOUT?C	072h
	LCDOUT?C	061h
	LCDOUT?C	064h
	LCDOUT?C	061h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00959	     if x = 1 then lcdout $fe,$c0,">Automatski        "
	CMPNE?BCL	_x, 001h, L00262
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
	LCDOUT?C	073h
	LCDOUT?C	06Bh
	LCDOUT?C	069h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LABEL?L	L00262	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00960	     if x = 2 then lcdout $fe,$c0,">Rucno             " 
	CMPNE?BCL	_x, 002h, L00264
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	03Eh
	LCDOUT?C	052h
	LCDOUT?C	075h
	LCDOUT?C	063h
	LCDOUT?C	06Eh
	LCDOUT?C	06Fh
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
	LABEL?L	L00264	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00962	     STAROSTANJElevo = NOVOSTANJElevo 
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00963	     STAROSTANJEgore = NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00964	     STAROSTANJEdole = NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00965	goto RezimRada
	GOTO?L	_RezimRada

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00967	Podesavanje:

	LABEL?L	_podesavanje	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00968	     bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00969	     novostanjelevo = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00970	     novostanjedesno = tright
	MOVE?TT	_TRIGHT, _NovoStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00971	     novostanjeGore= tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00972	     novostanjedole= tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00973	     if novostanjedesno < starostanjedesno then
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00266

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00974	        x = x + 1 
	ADD?BCB	_x, 001h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00975	        if x > 1 then 
	CMPLE?BCL	_x, 001h, L00268

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00976	           x = 0 
	MOVE?CB	000h, _x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00977	           Kursor =  Kursor + 1 
	ADD?BCB	_Kursor, 001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00978	           if kursor > 3 then kursor = 1
	CMPLE?BCL	_Kursor, 003h, L00270
	MOVE?CB	001h, _Kursor
	LABEL?L	L00270	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00979	        endif
	LABEL?L	L00268	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00980	     endif
	LABEL?L	L00266	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00982	     IF KURSOR = 1 THEN
	CMPNE?BCL	_Kursor, 001h, L00272

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00983	        displej[1] = ">"
	MOVE?CB	03Eh, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00984	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00985	        displej[3] = " "
	MOVE?CB	020h, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00986	     endif 
	LABEL?L	L00272	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00987	     if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00274

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00988	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00989	        displej[2] = ">"
	MOVE?CB	03Eh, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00990	        displej[3] = " "
	MOVE?CB	020h, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00991	     endif
	LABEL?L	L00274	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00992	     if kursor = 3 then 
	CMPNE?BCL	_Kursor, 003h, L00276

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00993	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00994	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00995	        displej[3] = ">"
	MOVE?CB	03Eh, _Displej + 00003h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00996	     endif
	LABEL?L	L00276	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00997	     if tup = 0 then
	CMPNE?TCL	_TUP, 000h, L00278

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00998	         if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00280

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	00999	            saT = sat + 1
	ADD?BCB	_sat, 001h, _sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01000	            if sat > 23 then sat = 23
	CMPLE?BCL	_sat, 017h, L00282
	MOVE?CB	017h, _sat
	LABEL?L	L00282	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01001	            write meni,sat
	WRITEADDRESS?B	_Meni
	WRITE?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01002	         endif
	LABEL?L	L00280	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01004	         if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00284

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01005	            minut = minut + 1
	ADD?BCB	_minut, 001h, _minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01006	            if minut > 59 then minut = 59
	CMPLE?BCL	_minut, 03Bh, L00286
	MOVE?CB	03Bh, _minut
	LABEL?L	L00286	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01007	            write meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01008	         endif
	LABEL?L	L00284	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01010	         if kursor = 3 then
	CMPNE?BCL	_Kursor, 003h, L00288

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01011	            osvetljenje = osvetljenje + 1 
	ADD?BCB	_osvetljenje, 001h, _osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01012	            if osvetljenje > 100 then osvetljenje = 100
	CMPLE?BCL	_osvetljenje, 064h, L00290
	MOVE?CB	064h, _osvetljenje
	LABEL?L	L00290	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01013	            write meni + 2,osvetljenje
	ADD?BCN	_Meni, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01014	         endif
	LABEL?L	L00288	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01015	        pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01016	     endif 
	LABEL?L	L00278	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01018	     if tdown = 0 then
	CMPNE?TCL	_TDOWN, 000h, L00292

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01019	         if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00294

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01020	            saT = sat - 1
	SUB?BCB	_sat, 001h, _sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01021	            if sat < 1 or sat > 23 then sat = 0
	CMPLT?BCB	_sat, 001h, T1
	CMPGT?BCB	_sat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00296
	MOVE?CB	000h, _sat
	LABEL?L	L00296	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01022	            write meni,sat
	WRITEADDRESS?B	_Meni
	WRITE?B	_sat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01023	         endif
	LABEL?L	L00294	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01025	         if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00298

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01026	            minut = minut - 1
	SUB?BCB	_minut, 001h, _minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01027	            if minut < 1 or minut > 59 then minut = 0
	CMPLT?BCB	_minut, 001h, T1
	CMPGT?BCB	_minut, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00300
	MOVE?CB	000h, _minut
	LABEL?L	L00300	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01028	            write meni + 1,minut
	ADD?BCN	_Meni, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_minut

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01029	         endif
	LABEL?L	L00298	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01031	         if kursor = 3 then
	CMPNE?BCL	_Kursor, 003h, L00302

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01032	            osvetljenje = osvetljenje - 1 
	SUB?BCB	_osvetljenje, 001h, _osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01033	            if osvetljenje < 1 or osvetljenje > 100 then osvetljenje = 0
	CMPLT?BCB	_osvetljenje, 001h, T1
	CMPGT?BCB	_osvetljenje, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00304
	MOVE?CB	000h, _osvetljenje
	LABEL?L	L00304	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01034	            write meni + 2,osvetljenje
	ADD?BCN	_Meni, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?B	_osvetljenje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01035	         endif
	LABEL?L	L00302	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01036	         pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01037	     endif
	LABEL?L	L00292	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01038	     if sat   > 23 then sat   = 0
	CMPLE?BCL	_sat, 017h, L00306
	MOVE?CB	000h, _sat
	LABEL?L	L00306	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01039	     if minut > 59 then minut = 0
	CMPLE?BCL	_minut, 03Bh, L00308
	MOVE?CB	000h, _minut
	LABEL?L	L00308	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01041	     if osvetljenje > 100 then osvetljenje = 0
	CMPLE?BCL	_osvetljenje, 064h, L00310
	MOVE?CB	000h, _osvetljenje
	LABEL?L	L00310	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01042	     if svitanje = 1 then 
	CMPNE?BCL	_Svitanje, 001h, L00312

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01043	        IF pali = 1 then
	CMPNE?BCL	_Pali, 001h, L00314

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01044	          Lcdout $fe, 2,"Svit. #",#kanal,"  ON          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	02Eh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01045	        else
	GOTO?L	L00315
	LABEL?L	L00314	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01046	           Lcdout $fe, 2,"Svit. #",#kanal,"  OFF        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	076h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	02Eh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01047	        endif
	LABEL?L	L00315	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01048	     else
	GOTO?L	L00313
	LABEL?L	L00312	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01049	        IF pali = 1 then
	CMPNE?BCL	_Pali, 001h, L00316

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01050	          Lcdout $fe, 2,"Sumr. #",#kanal,"  ON          " 
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	02Eh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01051	        else
	GOTO?L	L00317
	LABEL?L	L00316	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01052	           Lcdout $fe, 2,"Sumr. #",#kanal,"  OFF        "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	053h
	LCDOUT?C	075h
	LCDOUT?C	06Dh
	LCDOUT?C	072h
	LCDOUT?C	02Eh
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01053	        endif 
	LABEL?L	L00317	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01054	     endif
	LABEL?L	L00313	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01055	     if kursor = 3 then 
	CMPNE?BCL	_Kursor, 003h, L00318

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01056	        if kanal = 1 then
	CMPNE?BCL	_Kanal, 001h, L00320

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01057	           kanal1 = osvetljenje 
	MOVE?BB	_osvetljenje, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01058	           kanal2 = 0
	MOVE?CB	000h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01059	           kanal3 = 0 
	MOVE?CB	000h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01060	           kanal4 = 0
	MOVE?CB	000h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01061	        endif
	LABEL?L	L00320	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01062	        if kanal = 2 then
	CMPNE?BCL	_Kanal, 002h, L00322

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01063	           kanal1 = 0 
	MOVE?CB	000h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01064	           kanal2 = osvetljenje
	MOVE?BB	_osvetljenje, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01065	           kanal3 = 0 
	MOVE?CB	000h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01066	           kanal4 = 0
	MOVE?CB	000h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01067	        endif
	LABEL?L	L00322	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01068	        if kanal = 3 then
	CMPNE?BCL	_Kanal, 003h, L00324

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01069	           kanal1 = 0
	MOVE?CB	000h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01070	           kanal2 = 0
	MOVE?CB	000h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01071	           kanal3 = osvetljenje
	MOVE?BB	_osvetljenje, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01072	           kanal4 = 0
	MOVE?CB	000h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01073	        endif
	LABEL?L	L00324	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01074	        if kanal = 4 then
	CMPNE?BCL	_Kanal, 004h, L00326

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01075	           kanal1 = 0
	MOVE?CB	000h, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01076	           kanal2 = 0 
	MOVE?CB	000h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01077	           kanal3 = 0 
	MOVE?CB	000h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01078	           kanal4 = osvetljenje
	MOVE?BB	_osvetljenje, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01079	        endif
	LABEL?L	L00326	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01080	     endif
	LABEL?L	L00318	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01081	     lcdout $fe,$c0,displej[1],dec2 sat,":",displej[2],dec2 minut," * ",displej[3],dec3 osvetljenje,"%             "
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01082	     if novostanjelevo < starostanjelevo then
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00328

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01083	            gosub EEpromMemorija
	GOSUB?L	_EEpromMemorija

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01084	            kanal1 =  StaraV1 
	MOVE?BB	_StaraV1, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01085	            kanal2 =  StaraV2 
	MOVE?BB	_StaraV2, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01086	            kanal3 =  StaraV3 
	MOVE?BB	_StaraV3, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01087	            kanal4 =  StaraV4 
	MOVE?BB	_StaraV4, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01088	            i = 0
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01089	            goto menu
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01090	     ENDIF
	LABEL?L	L00328	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01091	     STAROSTANJElevo = NOVOSTANJElevo 
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01092	     STAROSTANJEgore = NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01093	     STAROSTANJEdesno = NOVOSTANJEdesno
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01094	     STAROSTANJEdole = NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01095	goto podesavanje
	GOTO?L	_podesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01097	Uzmi_vreme:

	LABEL?L	_uzmi_vreme	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01098	     I2CRead SDA, SCL, RTC, SecReg, [RTCSEC,RTCMIN,RTCHOUR,RTCday,RTCdate,RTCmonTH,RTCYEAR]
	I2CDATA?T	_SDA
	I2CCLOCK?T	_SCL
	I2CWRITE?C	_RTC
	I2CWRITE?C	_SecReg
	I2CREAD?B	_RTCSec
	I2CREAD?B	_RTCMin
	I2CREAD?B	_RTCHour
	I2CREAD?B	_RTCDay
	I2CREAD?B	_RTCDate
	I2CREAD?B	_RTCMonth
	I2CREADS?B	_RTCYear

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01099	     decmin = ((RTCMIN  & %11110000)>>4)  * 10 + (RTCMIN  & %00001111)
	AND?BCN	_RTCMin, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCMin, 00Fh, T2
	ADD?NNB	T1, T2, _DECmin

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01100	     decsat = ((RTCHOUR & %11110000)>>4)  * 10 + (RTCHOUR & %00001111)
	AND?BCN	_RTCHour, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCHour, 00Fh, T2
	ADD?NNB	T1, T2, _DECsat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01101	     decsec = ((RTCsec  & %11110000)>>4)  * 10 + (RTCsec  & %00001111)
	AND?BCN	_RTCSec, 0F0h, T1
	SHIFTR?NCN	T1, 004h, T1
	MUL?NCN	T1, 00Ah, T1
	AND?BCN	_RTCSec, 00Fh, T2
	ADD?NNB	T1, T2, _DECSec

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01102	Return
	RETURN?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01104	RTCvreme:

	LABEL?L	_RTCvreme	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01105	     bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01106	     novostanjelevo  = tleft
	MOVE?TT	_TLEFT, _NovoStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01107	     novostanjedesno = tright
	MOVE?TT	_TRIGHT, _NovoStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01108	     novostanjeGore  = tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01109	     novostanjedole  = tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01110	     if novostanjedesno < starostanjedesno then
	CMPGE?TTL	_NovoStanjeDesno, _StaroStanjeDesno, L00330

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01111	        Kursor =  Kursor + 1 
	ADD?BCB	_Kursor, 001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01112	        if kursor > 2 then kursor = 1
	CMPLE?BCL	_Kursor, 002h, L00332
	MOVE?CB	001h, _Kursor
	LABEL?L	L00332	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01113	     endif
	LABEL?L	L00330	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01114	     if novostanjelevo < starostanjelevo then
	CMPGE?TTL	_NovoStanjeLevo, _StaroStanjeLevo, L00334

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01115	        i = 0
	MOVE?CB	000h, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01116	        goto menu
	GOTO?L	_menu

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01117	     ENDIF 
	LABEL?L	L00334	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01118	     select case kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01121	        case 1 
	CMPNE?BCL	_Kursor, 001h, L00338

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01122	        displej[1] = ">"
	MOVE?CB	03Eh, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01123	        displej[2] = " "
	MOVE?CB	020h, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01125	        case 2 
	GOTO?L	L00337
	LABEL?L	L00338	
	CMPNE?BCL	_Kursor, 002h, L00339

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01126	        displej[1] = " "
	MOVE?CB	020h, _Displej + 00001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01127	        displej[2] = ">"
	MOVE?CB	03Eh, _Displej + 00002h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01128	     end select
	LABEL?L	L00339	
	LABEL?L	L00337	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01130	     if tup = 0 then
	CMPNE?TCL	_TUP, 000h, L00340

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01131	         if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00342

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01132	            decsaT = decsat + 1
	ADD?BCB	_DECsat, 001h, _DECsat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01133	            if decsat > 23 then decsat = 23
	CMPLE?BCL	_DECsat, 017h, L00344
	MOVE?CB	017h, _DECsat
	LABEL?L	L00344	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01134	            pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01135	         endif
	LABEL?L	L00342	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01137	         if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00346

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01138	            decmin = decmin + 1
	ADD?BCB	_DECmin, 001h, _DECmin

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01139	            if decmin > 59 then decmin = 59
	CMPLE?BCL	_DECmin, 03Bh, L00348
	MOVE?CB	03Bh, _DECmin
	LABEL?L	L00348	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01140	         endif
	LABEL?L	L00346	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01141	         pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01142	     endif
	LABEL?L	L00340	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01144	     if tdown = 0 then
	CMPNE?TCL	_TDOWN, 000h, L00350

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01145	         if kursor = 1 then
	CMPNE?BCL	_Kursor, 001h, L00352

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01146	            decsaT = decsat - 1
	SUB?BCB	_DECsat, 001h, _DECsat

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01147	            if decsat < 1 or decsat > 23 then decsat = 0
	CMPLT?BCB	_DECsat, 001h, T1
	CMPGT?BCB	_DECsat, 017h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00354
	MOVE?CB	000h, _DECsat
	LABEL?L	L00354	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01148	            pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01149	         endif
	LABEL?L	L00352	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01151	         if kursor = 2 then
	CMPNE?BCL	_Kursor, 002h, L00356

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01152	            decmin = decmin - 1
	SUB?BCB	_DECmin, 001h, _DECmin

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01153	            if decmin < 1 or decmin > 59 then decmin = 0   
	CMPLT?BCB	_DECmin, 001h, T1
	CMPGT?BCB	_DECmin, 03Bh, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00358
	MOVE?CB	000h, _DECmin
	LABEL?L	L00358	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01154	            pause 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01155	         endif
	LABEL?L	L00356	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01156	     endif
	LABEL?L	L00350	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01157	     Lcdout $fe, 2,"RTC  VREME            "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	052h
	LCDOUT?C	054h
	LCDOUT?C	043h
	LCDOUT?C	020h
	LCDOUT?C	020h
	LCDOUT?C	056h
	LCDOUT?C	052h
	LCDOUT?C	045h
	LCDOUT?C	04Dh
	LCDOUT?C	045h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01158	     lcdout $fe,$c0,displej[1],dec2 decsat,":",displej[2],dec2 decmin,"              "
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01159	     RTCMIN  = (decmin dig 1)*16 + decmin dig 0
	DIG?BCN	_DECmin, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DECmin, 000h, T2
	ADD?NNB	T1, T2, _RTCMin

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01160	     RTCHOUR = (decsat dig 1)*16 + decsat dig 0
	DIG?BCN	_DECsat, 001h, T1
	MUL?NCN	T1, 010h, T1
	DIG?BCN	_DECsat, 000h, T2
	ADD?NNB	T1, T2, _RTCHour

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01161	     RTCSEC = 0
	MOVE?CB	000h, _RTCSec

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01162	     I2CWRITE SDA, SCL, RTC, SecReg, [RTCSEC,RTCMIN,RTCHOUR,RTCday,RTCdate,RTCmonTH,RTCYEAR]
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01163	     pause 10
	PAUSE?C	00Ah

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01164	     STAROSTANJElevo=NOVOSTANJElevo 
	MOVE?TT	_NovoStanjeLevo, _StaroStanjeLevo

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01165	     STAROSTANJEgore=NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01166	     STAROSTANJEdesno=NOVOSTANJEdesno
	MOVE?TT	_NovoStanjeDesno, _StaroStanjeDesno

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01167	     STAROSTANJEdole=NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01168	 goto RTCVreme
	GOTO?L	_RTCvreme

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01170	OdrzavanjePrekidac:

	LABEL?L	_OdrzavanjePrekidac	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01171	     bcklight = 1
	MOVE?CT	001h, _BCKLIGHT

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01172	     novostanjeGore= tup
	MOVE?TT	_TUP, _NovoStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01173	     novostanjedole=tdown
	MOVE?TT	_TDOWN, _NovoStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01174	     if odrzavanje <> 0 then 
	CMPEQ?TCL	_ODRZAVANJE, 000h, L00360

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01175	             kanal1 =  StaraV1 
	MOVE?BB	_StaraV1, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01176	             kanal2 =  StaraV2 
	MOVE?BB	_StaraV2, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01177	             kanal3 =  StaraV3 
	MOVE?BB	_StaraV3, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01178	             kanal4 =  StaraV4
	MOVE?BB	_StaraV4, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01179	             read 3,x
	READADDRESS?C	003h
	READ?B	_x

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01180	             if x = 1 then goto main 
	CMPNE?BCL	_x, 001h, L00362
	GOTO?L	_main
	LABEL?L	L00362	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01181	             if x = 2 then 
	CMPNE?BCL	_x, 002h, L00364

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01182	                kursor = 1 
	MOVE?CB	001h, _Kursor

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01183	                goto rucnopodesavanje
	GOTO?L	_RucnoPodesavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01184	             endif
	LABEL?L	L00364	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01185	     endif 
	LABEL?L	L00360	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01186	     if tup = 0 then
	CMPNE?TCL	_TUP, 000h, L00366

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01187	          osvetljenjeOdrzavanje = osvetljenjeOdrzavanje + 1 
	ADD?BCB	_osvetljenjeOdrzavanje, 001h, _osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01188	          if osvetljenjeOdrzavanje > 100 then osvetljenjeOdrzavanje = 100
	CMPLE?BCL	_osvetljenjeOdrzavanje, 064h, L00368
	MOVE?CB	064h, _osvetljenjeOdrzavanje
	LABEL?L	L00368	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01189	          write 2,osvetljenjeOdrzavanje 
	WRITEADDRESS?C	002h
	WRITE?B	_osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01190	          PAUSE 60
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01191	     endif  
	LABEL?L	L00366	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01192	     if tdown = 0 then
	CMPNE?TCL	_TDOWN, 000h, L00370

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01193	          osvetljenjeOdrzavanje = osvetljenjeOdrzavanje - 1 
	SUB?BCB	_osvetljenjeOdrzavanje, 001h, _osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01194	          if osvetljenjeOdrzavanje < 1 or osvetljenjeOdrzavanje > 100 then osvetljenjeOdrzavanje = 0
	CMPLT?BCB	_osvetljenjeOdrzavanje, 001h, T1
	CMPGT?BCB	_osvetljenjeOdrzavanje, 064h, T2
	LOR?BBN	T1, T2, T2
	CMPF?NL	T2, L00372
	MOVE?CB	000h, _osvetljenjeOdrzavanje
	LABEL?L	L00372	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01195	          write 2,osvetljenjeOdrzavanje 
	WRITEADDRESS?C	002h
	WRITE?B	_osvetljenjeOdrzavanje

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01196	          PAUSE 60 
	PAUSE?C	03Ch

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01197	     endif
	LABEL?L	L00370	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01199	     Lcdout $fe, 2,"ODRZAVANjE %          "
	LCDOUT?C	0FEh
	LCDOUT?C	002h
	LCDOUT?C	04Fh
	LCDOUT?C	044h
	LCDOUT?C	052h
	LCDOUT?C	05Ah
	LCDOUT?C	041h
	LCDOUT?C	056h
	LCDOUT?C	041h
	LCDOUT?C	04Eh
	LCDOUT?C	06Ah
	LCDOUT?C	045h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01200	     lcdout $fe,$c0,"Kanal #1 - ",dec3 osvetljenjeOdrzavanje," %           "
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	04Bh
	LCDOUT?C	061h
	LCDOUT?C	06Eh
	LCDOUT?C	061h
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

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01201	     kanal1 = osvetljenjeOdrzavanje
	MOVE?BB	_osvetljenjeOdrzavanje, _Kanal1

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01202	     kanal2 = 0
	MOVE?CB	000h, _Kanal2

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01203	     kanal3 = 0
	MOVE?CB	000h, _Kanal3

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01204	     kanal4 = 0
	MOVE?CB	000h, _Kanal4

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01206	     STAROSTANJEgore=NOVOSTANJEgore
	MOVE?TT	_NovoStanjeGore, _StaroStanjeGore

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01207	     sTAROSTANJEdole=NOVOSTANJEdole
	MOVE?TT	_NovoStanjeDole, _StaroStanjeDole

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01208	goto odrzavanjePrekidac
	GOTO?L	_OdrzavanjePrekidac

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01210	 EEpromMemorija:

	LABEL?L	_EEpromMemorija	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01211	    for i = 8 to 72 step 1
	MOVE?CB	008h, _i
	LABEL?L	L00374	
	CMPGT?BCL	_i, 048h, L00375

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01212	        memorija[i] = 0
	AIN?CBB	000h, _Memorija, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01213	        read i,memorija[i]   
	READADDRESS?B	_i
	READ?N	T1
	AIN?BBB	T1, _Memorija, _i

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01214	    next i
	NEXT?BCL	_i, 001h, L00374
	LABEL?L	L00375	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01215	return
	RETURN?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01217	PrviPut:

	LABEL?L	_PrviPut	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01218	    read 1,eprom
	READADDRESS?C	001h
	READ?B	_EPROM

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01219	    if eprom = 255 then 
	CMPNE?BCL	_EPROM, 0FFh, L00376

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01220	       for i = 8 to 72 step 4
	MOVE?CB	008h, _i
	LABEL?L	L00378	
	CMPGT?BCL	_i, 048h, L00379

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01221	            write i,0
	WRITEADDRESS?B	_i
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01222	            write i + 1,0
	ADD?BCN	_i, 001h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01223	            write i + 2,0
	ADD?BCN	_i, 002h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01224	            write i + 3,0
	ADD?BCN	_i, 003h, T1
	WRITEADDRESS?N	T1
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01225	       next i 
	NEXT?BCL	_i, 004h, L00378
	LABEL?L	L00379	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01226	       write 1,1 
	WRITEADDRESS?C	001h
	WRITE?C	001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01227	       write 2,10
	WRITEADDRESS?C	002h
	WRITE?C	00Ah

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01228	       write 3,1
	WRITEADDRESS?C	003h
	WRITE?C	001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01229	       write 80,0
	WRITEADDRESS?C	050h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01230	       write 81,0
	WRITEADDRESS?C	051h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01231	       write 82,0
	WRITEADDRESS?C	052h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01232	       write 83,0
	WRITEADDRESS?C	053h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01233	       write 84,0
	WRITEADDRESS?C	054h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01234	       write 85,0
	WRITEADDRESS?C	055h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01235	       write 86,0
	WRITEADDRESS?C	056h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01236	       write 87,0
	WRITEADDRESS?C	057h
	WRITE?C	000h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01237	    endif
	LABEL?L	L00376	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01238	Lcdout $fe,1
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01239	return
	RETURN?	

; C:\USERS\ADMIN_HOME\DROPBOX\PROJEKTI\DANER\DANER V1\PBP\DANER V1.PBP	01241	end
	END?	

	END
