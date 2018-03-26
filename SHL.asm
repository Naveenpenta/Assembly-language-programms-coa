
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV AL,16H
;SHL AL,2
 
;MOV AL,8H
;SHR AL,1 

;MOV AL,10H;
;ROL AL,2


MOV AL,20h
RCR AL,4 
ret




