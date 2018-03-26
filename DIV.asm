
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 206   ; AX = 00CEh
MOV BL, 4      ; BL=04H
DIV BL        ; AL = (33h), AH = 01
AAD
ret




