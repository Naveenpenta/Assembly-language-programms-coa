
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 
stc        ; set CF=1
mov ax,300 ; ax=01h,al=2C
mov bx,320 ; bx=01h,bl=40
adc ax,bx ; ax=2h ,al=6D,CF=0             REG,REG


;mov al,30      ; al=1Eh
;mov [0001h],15 ;    Fh
;add al,[0001h] ; al=2Dh         REG,memory

;mov al,10      ;al=10
;mov [0001h],11 ;
;add [0001h],al ;               memory,REG
;mov bl,[0001h] ;bl=15

;mov al,25 ; al=19h
;add al,10 ; al=23h               REG,immediate  

;mov  [0001h],14 ;al=14
;add [0001h],12   ;                memory,immediate
;mov al,[0001h]   ;al=1A              

ret




