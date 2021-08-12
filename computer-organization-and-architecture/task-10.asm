
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc

.data
 temp dw 0
 mult dw 1

; add your code here

.code
    print "Enter table number : "
    call scan_num
    mov  temp,cx
    mov cx,10

    print 10
    print 13

    table:
        mov ax,temp
       call print_num
       print "  * "
       mov ax,mult
       call print_num
       mul temp
        print " = "
        call print_num
        inc mult

        print 10
        print 13

        loop table;




 define_scan_num
Define_print_num
Define_print_num_uns


ret



