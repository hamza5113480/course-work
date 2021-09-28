
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc
.data
 sum dw 1
 value dw 0
.code
 print 'enter the value'
 call scan_num
 mov value,cx
 printn
 print 'enter no. terms: '
 call scan_num
 printn
 mov bx,1
; dec cx
incre:
mov ax,value
dec cx
jcxz endd
 inc bx
 div bx
 ;cbw
 add sum,ax
 printn


jmp incre
endd:
 mov ax,sum
 printn
 call print_num

define_scan_num
define_print_num
define_print_num_uns

ret



