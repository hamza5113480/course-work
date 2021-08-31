
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc

; add your code here
.data

       avg db 0
       sum dw 0
      num dw 0

.code
    mov bl,0
    number:
        inc bl
        print "Enter number"
        call scan_num
        print 10
        print 13
        mov num,cx

        add cx,sum
        mov sum,cx
        print "The sum is "
        mov ax,sum
        call print_num
        print 10
        print 13
        div bl
        mov avg,al

        print "The average is "
        mov dl,avg
        add dl,30h
        mov ah,2h
        int 21h

        print 10
        print 13


        jmp number



define_scan_num
define_print_num
define_print_num_uns

ret



