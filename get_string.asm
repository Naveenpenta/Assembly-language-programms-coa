
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

mov dx,10
call get_string
mov cx,8
label:
    putc [di]
    inc di
    loop label

ret
define_get_string




