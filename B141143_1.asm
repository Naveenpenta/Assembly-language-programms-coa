
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h                
mov  di,len
dec di

label2:
    cmp di,-1
       je label3
    mov ah,2
    mov dl,str[di]
    int 21h 
    dec di

    jmp label2
    
label3:
ret         
                     


ret 

str db 'welcome to cse'   
len equ $-str
                                                



