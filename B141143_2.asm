
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
mov bx,0
mov dx,1
mov cx,0
mov ax,0
mov n1,10

label:
    dec n1
    call print_num
    printn
    dec n1
    mov ax,dx
    call print_num
    printn

label0: 
     inc cx
     xor ax,ax
     add ax,bx
     add ax,dx
     mov bx,dx
     mov dx,ax
     call print_num
     printn
     cmp cx,n1 
        je label1
     jne label0 
     
label1:
    ret


ret 
n1 dw 0
define_print_num
define_print_num_uns
define_scan_num





