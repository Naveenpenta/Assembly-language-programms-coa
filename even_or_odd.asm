
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc'
print 'enter number to find even or not'
call scan_num
mov ax,cx
mov cx,2
div cx
cmp dx,0
je l1

l2:
    ;call print_num
    print ' number is odd '
    ret
l1:
    ;call print_num
    print ' number is even'
    ret


ret
define_print_num
define_print_num_uns
define_scan_num



