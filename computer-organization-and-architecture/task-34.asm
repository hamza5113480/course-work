
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

  org 100h

include emu8086.inc
org 100h
.data
arr dw 4 dup (?)
count dw 0
n1 dw 4
n2 dw 4
.code
lea bx,arr
print 'enter the number is array'
input1:
printn
;jcxz endd
call scan_num
mov [bx],cx
add bx,2
mov cx,n1
dec cx
mov n1,cx

cmp cx, 1
jge input1


printn
printn
print 'enter a number to search in array'
call scan_num
lea bx,arr
input2:

cmp [bx],cx
je found
add bx,2
mov si,n2
dec si
mov n2,si
cmp si,1
jge input2
printn
print 'number was not found'
jmp end

found:
printn
print 'the number was found'

end:

define_scan_num
define_print_num
define_print_num_uns
ret
