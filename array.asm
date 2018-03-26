; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
mov bx,0
;lea si,arr
label1:
    mov ax,[bx]
    inc bx
    ;inc si
    ;inc si
    cmp ax,'h'
    je label2
    call print_num
    printn
    jmp label1
    
label2:
    ret
   

ret
arr dw 1,2,3,4,4,5,6,'h' 
;arr db 1,2,3,4,4,5,6,'h'
a1 db 0
define_print_num
define_print_num_uns
define_scan_num




;printing array elements

;mov bx,0
;label1:   
;    mov al,arr[bx]
;    inc bx
;    cmp al,'h'
;    je label2
;    call print_num
;    printn
;    jmp label1
    
;label2:
;    ret
   

;ret