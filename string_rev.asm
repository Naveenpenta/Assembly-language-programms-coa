
include 'emu8086.inc'
org 100h

lea si,str 
inc si

label0:

    cmp [si],'$'
        je label1
    inc si
    jmp label0
    
label1:
    dec si
    cmp [si],'$'
        je label2
    mov ah,2
    mov dl,[si]
    int 21h    
    jmp label1        

label2:
ret

str db '$naveen$'

define_print_num
define_print_num_uns
define_scan_num