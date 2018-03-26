
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;mov al,20
;mov bl,12
;add al,bl
;---

mov al,15
mov [01000h],12
add al,[01000h]
;---
;mov al,12
;mov [0001h],13
;mov [0010h],23
;add al,[0010h]
;----

;mov ax,27
;mov bl,5
;div bl
ret




