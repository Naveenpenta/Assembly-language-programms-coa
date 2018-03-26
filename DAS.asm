
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV AL,50H ;AL=50H
;MOV BL,39H ;BL=39H
;SUB AL,BL   ;AL=17H,PF=1,AF=1
;DAS         ;AL=11
  
MOV AL, 0FFh  ; AL = 0FFh (-1)
DAS           ; AL = 99h, CF = 1  
ret




