
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
; add your code here

;if (value < -1000) or (value > 1000) then
;value := 0;
;end if;

.data
    lower dw -1000
    upper dw 1000
   ; value dw 0

.code
    start:
    print "Enter a number"
    call scan_num
    print 10
    print 13
    mov dx,cx
  ;  mov value,ax

 check:
    cmp dx,upper
        jge cond

    cmp dx,lower
        jle cond

        jmp finish

    cond:
           mov dx,0
    finish:

        print "The value is "
        mov ax,dx
        call print_num
        print 10
        print 13
    jmp start

define_scan_num
define_print_num
define_print_num_uns


ret



