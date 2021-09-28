
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc

.data

factorial dw 1
.code

print 'enter the number to calculate fictorial: '
call scan_num
mov ax,cx

fact:

dec cx
jcxz endd
mul cx


jmp fact

endd:
printn
call print_num

define_scan_num
define_print_num_uns
define_print_num

ret



