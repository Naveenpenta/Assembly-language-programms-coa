; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc'
print 'enter number to print reverse of that'
printn
call scan_num
mov n1,cx 
mov n2,10
mov sum,0

label0: 
       mov ax,sum
       cmp cx,0
       je label1
       mul n2
       mov bx,ax
       mov ax,cx 
       div n2
       mov cx,ax
       mov n4,dx 
       add bx,n4
       mov sum,bx
       jmp label0 
       
label1:
    printn
    print 'reverse of the number is'
    printn
    call print_num
    printn

ret
n1 dw 0
n2 dw 0
n3 dw 0
n4 dw 0
sum dw 0
n6 dw 0
define_print_num
define_print_num_uns
define_scan_num




