
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 include 'emu8086.inc'
org 100h
print 'enter two numbers to find lcm'
printn
print 'enter first number  ' 
call scan_num
mov bx,cx
printn
print  ' enter second number '
call scan_num
mov n1,cx

label0:
    mov ax,n1
    div cx
    mov n2,dx
    xor dx,dx
    mov ax,n1
    div bx
    mov n3,dx
    xor dx,dx
    inc n1
    cmp n2,0
    je label1
    jne label0
              
              

label1:
    cmp n3,0
    je label2
    jne label0
label2:
    mov ax,n1
    dec ax
    printn
    call print_num    
    
    

    

ret
n1 dw 0
n2 dw 0
n3 dw 0 
define_print_num
define_print_num_uns
define_scan_num



