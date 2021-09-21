include emu8086.inc
org 100h

.data
num dw 0
rev dw 0
rem dw 0
.code

print 'enter a 5-digit number: '
call scan_num
mov num,cx

convert:
jcxz endd

mov ax,cx
mov cx,10
div cx
mov rem,dx
mov num,ax
;mov ax,0
mov ax,rev
mul cx

add ax,rem
mov rev,ax;
mov cx,num

jmp convert
endd:
mov ax,rev
printn
print 'reverse of the num is: '
call print_num

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM