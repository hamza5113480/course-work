
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc
.data

value dw 0
bod dw 2
data dw 0
count dw 0

.code
print 'enter a decimal number to convert:'
call scan_num
fn1:
jcxz output
mov ax,cx

printn
mov bx,10
mov cx,count

div bod
mov data,ax
mov ax,dx
;jcxz endd
fn2:
jcxz endd
mul bx
dec cx
jmp fn2
;jmp fn1


endd:
mov cx,count
inc cx
mov count,cx
add ax,value
mov value,ax
mov cx,data
jmp fn1

output:
mov ax,value
printn
call print_num

define_scan_num
define_print_num_uns
define_print_num

ret



