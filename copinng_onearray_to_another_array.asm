include 'emu8086.inc'

org 100h
lea si,array1
mov di,0
mov bp,1
label0:

    mov al,[si]
    mov array2[di],al
    inc si
    inc di
    cmp [si],'c'
        je label1
    jmp label0
    
label1:
   
   mov al,array2[bp]
   call print_num
   print 'a'
   inc bp
   cmp array2[bp],'c'
        je label2
   
   jmp label1


label2:
ret


array1 db 1,2,3,4,5,'c'
array2 db 'c'

define_print_num
define_print_num_uns
define_scan_num




