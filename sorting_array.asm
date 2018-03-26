include 'emu8086.inc'
org 100h
mov bp,-1
xor cx,cx
mov di,0
lea si,array

label0:
       inc bp
      mov cl,array[bp] 
      cmp cl,'h'
      je label4 
      mov di,bp
      jmp label1



label1:
      inc di
      mov al,array[di] 
     ;call print_num
     ; printn
      cmp al,'h'
        je label2
      cmp array[bp],al
        jge label3          
      jmp label1
      
                
label2:
    jmp label0      
    
label3:
    
    mov dl,array[bp]
    mov bl,array[di]
    mov array[di],dl
    mov array[bp],bl
    ;jmp label5
    jmp label1
  
        

label4:
    mov al,[si]
    inc si
    ;inc si
    cmp al,'h'
    je label5
    call print_num
    printn
   jmp label4
    
label5:
    ret

ret
a1 db 0
array db 11,4,13,1,6,'h'
define_print_num
define_print_num_uns
define_scan_num




