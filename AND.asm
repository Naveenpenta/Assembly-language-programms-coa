
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV AL,08H
;MOV BL,06H
;AND AL,BL
 
 
;MOV AL,09H
;MOV BL,04H
;OR AL,BL 

;MOV AL,6H
;NOT AL
MOV AL,03H
XOR AL,06H
ret




