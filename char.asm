
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h






;lea bx, str1 
;mov ax, 0 

;co: cmp [bx], 0
    ;mov ah,2
    ;mov dl,[bx]    
    ;int 21h
;         je done  
;         inc ax   
 ;        inc bx   
  ;       jmp co  
;done:
;call print_num

        
;ret
;str1 db 'abcdefg hijklmnop qrstvuwxyz',0
 ret
define_print_num
define_print_num_uns




