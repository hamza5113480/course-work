
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
; add your code here
; int a=10,b=5,c=4
; if(a<b && a<c)
; else if(b<a && b<c)
; else if(c<a&&c<b)
.data
    num1 dw 0
    num2 dw 0
    num3 dw 0
.code

    print "Enter first value "
    call scan_num
        mov num1,cx
    print 10
    print 13

     print "Enter second value "
    call scan_num
        mov num2,cx
    print 10
    print 13

     print "Enter third value "
    call scan_num
        mov num3,cx
    print 10
    print 13

        mov bx,num1
    cmp bx,num2
        jge condition2
    cmp bx,num3
        jge condition2
        mov ax,num1
        jmp last

    condition2:
        mov bx,num2
    cmp bx,num1
        jge condition3
    cmp bx,num3
        jge condition3
        mov ax,num2
        jmp last

    condition3:
        mov ax,num3

    last :
        print "The smallest value is "
        call print_num


define_scan_num
define_print_num
define_print_num_uns

ret



