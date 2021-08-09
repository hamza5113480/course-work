
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc

; add your code here

.data
    fic dw 1

.code

    print "Enter a number :"
    call scan_num
    mov ax,1



    fictorial :
       mul fic
       inc fic

    loop fictorial

    print "The fictorial is : "
    call print_num




define_scan_num
Define_print_num
Define_print_num_uns


ret



