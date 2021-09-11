
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
.data
   multiplier dw 2

; add your code here

;   If (num >0) and (num <100)
;       Num=num*2

.code
     print "Enter a number = "
     call scan_num
     print 10
     print 13
     mov ax,cx

     cmp cx,0
     jl other
     cmp cx,1000
     jge other


     mul multiplier

     print "The Result is : "
     call print_num
     jmp finish

 other:
    print "not multiplied "
    call print_num


 finish:




define_scan_num
define_print_num
define_print_num_uns

ret



