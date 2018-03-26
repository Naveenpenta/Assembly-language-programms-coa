
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;mov al,55h  ;al=55h
;mov bl,63h  ;bl=63
;sub al,bl   ;al=F2,CF=1

;mov bl,55h   ;bl=55h
;mov al,63h   ;al=63h
;sub al,bl    ;al=0E,AF=1

                          
;mov al,56h  ;al=56h
;mov bl,64h  ;bl=64h                         
;sbb al,bl   ;al=F2,CF=1,SF=1


;mov bl,56h   ;bl=56h
;mov al,64h   ;al=64h
;sbb al,bl    ;al=0E,AF=1
STC
MOV AL,5
SBB AL,3
ret




