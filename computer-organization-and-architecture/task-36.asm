
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include emu8086.inc


.data
 quad dw 2
.code
   mov cx,2

   two:
    call pow
    mov quad,ax
    dec cx
    cmp cx,1
    jge two
   print 'quad is: '
    call print_num




define_print_num
define_scan_num
define_print_num_uns

ret

pow proc

    mov ax,quad
    imul quad
    ret
    endp



