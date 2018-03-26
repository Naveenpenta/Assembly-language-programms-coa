
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
lea si,array
mov al,0 
mov di,0

label0:
    cmp array[di],'c'
        je label1
    mov bl,array[di]
    add al,bl 
    inc di 
    jmp label0
    
label1:
    printn
    print 'sum is '
    call print_num    



ret
array db 1,2,3,4,5,'c'
define_print_num
define_print_num_uns
define_scan_num




