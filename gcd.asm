
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
print 'enter two numbers to find gcd'
printn
print 'enter first number  ' 
call scan_num
mov bx,cx
printn
print  ' enter second number '
call scan_num
mov n5,bx
mov n2,0

label0:
      inc n2
      cmp n2,cx
      je label3
      mov ax,cx 
      div n2
      mov n3,dx
      xor dx,dx
      mov ax,n5
      div n2
      mov n4,dx
      xor dx,dx
      cmp n3,0
      je label1
      jne label0
      
label1:
       cmp n4,0
       je label2 
       jne label0:

label2:
       mov bx,n2
       jmp label0       
       
label3:
       mov ax,bx 
       printn
       call print_num
       ret      
             
ret
n1 dw 0
n2 dw 0
n3 dw 0
n4 dw 0
n5 dw 0
define_print_num
define_print_num_uns
define_scan_num




