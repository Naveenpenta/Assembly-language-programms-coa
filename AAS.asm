
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV AL,37H ;AL=37
;MOV BL,49H ;BL=49
;SUB AL,BL   ;AL=EEH,CF=1,SF=1,PF=1,AF=1
;AAS         ;AX=FFH,AL=08H
 
 
MOV AX, 02FFh  ; AH = 02, AL = 0FFh
AAS            ; AH = 01, AL = 09 
ret




