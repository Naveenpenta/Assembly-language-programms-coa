
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV AL, 32   ; AL = 20h
;MOV BL, 2     ;BL=  2
;MUL BL        ; AL = 40h (64)


;MOV AL, 33   ; AL = 21h
;MOV BL, 3     ;BL=  03
;MUL BL        ; AL = 63h (99)
;AAM           ;AX=09,AL=09

MOV AL, -2
MOV BL, -4
IMUL BL      ; AX = 8

ret




