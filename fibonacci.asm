
include 'emu8086.inc'
org 100h
print 'enter number up to'
call scan_num 
mov n1,cx
mov bx,0
mov cx,0
mov dx,1
printn
print 'fibonacci series are'
print '0'
printn
print '1'

label0:
    printn
    xor ax,ax
    add ax,bx
    add ax,dx
    mov bx,dx
    mov dx,ax
    
    call print_num
    printn
    inc cx
    cmp cx,n1
        je label1
    jmp label0
    
    
    

        
    

        
label1: 
ret
                  
ret
n1 dw 0 
n2 dw 0 
define_print_num
define_print_num_uns
define_scan_num



                         