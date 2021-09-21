
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc

.data
1st dw 0
2nd dw 1
sum dw 0
.code
; 1 1 2 3 5 8
print 'enter the num n : '
call scan_num


printn
fibonnachi:

mov ax,1st
add ax,2nd
call print_num
print ','
mov bx,2nd
mov 1st,bx
mov 2nd,ax               ; st vaue 1

dec cx

jcxz endd
jmp fibonnachi

endd:

define_scan_num
define_print_num
define_print_num_uns

ret



