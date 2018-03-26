; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

mov ax,153
mov n1,ax
mov n2,10
mov cx,0
label1:
    cmp ax,0
        je label2 
    div n2
    mov bx,ax
    mov ax,dx
    mov n4,dx
    mul n4
    mul n4
    xor dx,dx
    add cx,ax 
    mov ax,bx
    jmp label1
    
label2:
    mov ax,cx
    call print_num
    print 'number is '
    cmp  n1,cx 
        je label3
     print 'not armstronng number'   
    
label3:
         print 'armstronng number' 
    
    
    

    

ret
n1 dw 0
n2 dw 0
n3 dw 0
n4 dw 0
n5 dw 0
define_print_num
define_print_num_uns
define_scan_num



