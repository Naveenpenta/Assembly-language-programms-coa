
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'
org 100h 

mov di,0
mov n1,0

label1:
    cmp array[di],'c'
     je label2
    inc di
    inc n1
    jmp label1
    
label2:
    mov ax,n1
    call print_num

ret

array db 1,3,4,9,10,11,'c'  
 
n1 dw 0
n2 db 0
n3 db 0

define_print_num
define_print_num_uns
define_scan_num




