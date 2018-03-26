
include 'emu8086.inc'
org 100h                
lea si,s
;print 'enter your String'
CALL print_string
printn 
;call get_string         





ret

s dw 'hello world',0
ss dw 0
;define_get_string
;define_scan_num
;define_print_num
;define_print_num_uns 
define_print_string



