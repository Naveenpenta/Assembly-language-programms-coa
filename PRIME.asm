
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc'
print 'enter number to find prime or not'
call scan_num  
;mov cx,5
mov n1,1
mov bx,0

label0:
    cmp cx,n1
    je label2
    inc n1
     mov ax,cx
     xor dx,dx
     div n1
     cmp dx,0
        je label1
     jmp label0
   
label1:
    inc bx
    jmp label0
    
label2:
    cmp bx,1
        je label3
    printn
    print 'it is not prime number'
    ret
label3:
    printn
    print 'it is prime number'        
    
    


ret
n1 dw 0
n2 dw 0
n3 dw 0
n4 dw 0
n5 dw 0
n6 dw 0
define_print_num
define_print_num_uns
define_scan_num



