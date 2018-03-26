
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,20 ; al=14h
mov bl,25 ; bl=19h
add al,bl ; al=2Dh             REG,REG


;mov al,30      ; al=1Eh
;mov [0001h],15 ;    Fh
;add al,[0001h] ; al=2Dh         REG,memory

mov al,10      ;al=10
mov [0001h],11 ;
add [0001h],al ;               memory,REG
mov bl,[0001h] ;bl=15

;mov al,25 ; al=19h
;add al,10 ; al=23h               REG,immediate  

mov  [0001h],14 ;al=14
add [0001h],12   ;                memory,immediate
mov al,[0001h]   ;al=1A                  
ret




