DutyCount   VAR byte


ASM
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
ENDASM

;_____________________________________________________________________________
@Timer1 = TMR1L                   ; map timer registers to a word variable
Timer1       VAR WORD EXT
TimerReload  CON EXT              ; Get the External Constant
TMR1ON       VAR T1CON.0          ; Alias the Timers ON/OFF bit

ASM
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
ENDASM

ASm
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
ENDASM


