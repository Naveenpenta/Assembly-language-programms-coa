

include 'emu8086.inc'
org 100h  
mov ah,1
int 21h

mov dl,al

mov ah,2
int 21h



ret

define_print_num
define_print_num_uns
define_scan_num





