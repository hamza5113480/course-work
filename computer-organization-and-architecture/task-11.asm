
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
.data
  num dw 0
  sqr dw 2
  cr  dw 3


; add your code here
.code

    print "Enter a number : "
    call scan_num
    mov num,cx
    print 10
    print 13

    mov ax,1
    print "The squar is : "

    mov cx,2
    square:
        mul num

    loop square

    call print_num
    print 10
    print 13

    mov ax,1

    mov cx,3

    cube:
        mul num

    loop cube

    print "The cube is : "
    call print_num






define_scan_num
Define_print_num
Define_print_num_uns

ret



