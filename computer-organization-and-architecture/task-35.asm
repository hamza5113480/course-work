
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc

.data
   area dw 0
   l dw 0
   w dw 0
.code
   main proc
 call area52
printn
print 'the area is: '

mov ax,w
mul l
call print_num



define_scan_num
define_print_num
define_print_num_uns
 endp

ret
area52 proc
print 'enter length: '
call scan_num
mov l,cx
printn
print 'enter width: '
call scan_num
printn
mov w,cx
cmp cx,l
jg great
je equal
print 'length is greater than width'
ret
equal:
print 'length and width are equal'
ret
great:
print 'width is greater than length'
ret
  endp