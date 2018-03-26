
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
print 'enter number to check whether it is perfect number or not '
call scan_num
printn
mov n1,cx
;dec cx
mov n2,2    ;
mov ax,cx    ;
div n2        ;
mov cx,ax      ;
xor dx,dx       ;
mov n2,0
mov bx,0

label0:
    cmp cx,n2
    je label2
    inc n2
    mov ax,n1
    div n2
    mov n3,dx
    xor dx,dx
    cmp n3,0
    je label1
    jne label0
 

label1:
    add bx,n2
    jmp label0
            
label2:
    mov ax,bx
    cmp ax,n1
    je label3   
    printn
    print ' it is not perfect number'
    ret
label3:
    printn
    print 'it is perfect number'     
    


ret
n1 dw 0
n2 dw 0
n3 dw 0
n4 dw 0
n5 dw 0
define_print_num
define_print_num_uns
define_scan_num



