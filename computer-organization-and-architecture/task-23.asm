
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
include emu8086.inc
    ev dw 2
; add your code here
.code
    print "Enter a number"
    print 10
    print 13
    call scan_num
    mov ax,cx
    div ev
    cmp dx,0
    jz even
    print "The number is odd"
    jmp finish


even:
    print "The number is even"
   ; jmp finish

finish:




define_scan_num
define_print_num
define_print_num_uns


ret



