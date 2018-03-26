
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
 
 
lea si,array 
mov bl,[si] 

label1:
    inc si
    mov al,[si]
    cmp al,0
        je label2
    cmp bl,al
        jge label3
    mov bl,al
    jmp label1
     
    
label2:
    mov al,bl
    print 'maximum number is'
    printn
    call print_num

    ret
        
label3:
    
    jmp label1    
 


ret

array db 7,1,8,3,4,5,6,0
define_print_num 
define_print_num_uns
define_scan_num




