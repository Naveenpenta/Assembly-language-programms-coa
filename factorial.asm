; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
INCLUDE 'EMU8086.INC'
org 100h
print 'enter number to find factorial of a number' 
call scan_num
mov ax,1
mov bx,cx
l1: 
   cmp bx,0
   je l2
   mul bx
   dec bx
   jmp l1
l2: 
    print ' factorial is '
    CALL PRINT_NUM
    ret
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
define_scan_num   ;value stored in cx
;   mov ax,5
;    mov bx,ax
;fact: dec,bx
;        mul bx
;        cmp bx,1
;        jne fact

;----

;mov ax,5
;mov cx,ax
;dec cx
;fact:
;    mul cx
;    loop fact  ; lopp uses cx
   ; ;dec cx
   ; ;cmp cx,0
   ; ;jne fact
