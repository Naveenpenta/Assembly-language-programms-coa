include 'emu8086.inc'
org 100h
lea si,str
lea di,str
mov bx,0
 
 
label0:
    cmp [si],'$'
        je label1
    inc si
    inc bx
    jmp label0     

label1:
    dec si


label2:
    mov al,[si]
    mov bl,[di]
    
     cmp [di],'$'
        je label3
               
     cmp al,bl
     jne label4
     inc di
     dec si
     jmp label2

    ;mov ax,bx
    ;call print_num
    
label3:
    print 'it is  palindrome' 
    ret
       

label4:
    print 'it is not palindrome' 
    ret
       
ret


str db 'abcba$'

n1 dw 0
define_print_num
define_print_num_uns
define_scan_num