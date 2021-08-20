
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
.data

    cel dw 0
    far dw 9


; add your code here
.code
    print "Enter temprature in Celcius : "
    call scan_num


    mov  ax,far
    mov far,5
    div far
    mul cx
    add ax,32

    mov far,ax



    print 10
    print 13

    print "Farenhiet : "
    call print_num

    print 10
    print 13

    print "Since assembly cant handle numbers in decimal therefore 9/5 results in 1 "







define_scan_num
define_print_num
define_print_num_uns

ret



