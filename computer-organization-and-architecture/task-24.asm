
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
; add your code here
.data


.code

 start :

   print "Enter a number : "
   call scan_num
    print 10
    print 13
   cmp cx,0
   jg positive
   cmp cx,0
   jl negative

   print "The Entered number is niether positive nor negative "
    jmp start

 positive:

    print "The Entered number is positive"
    jmp start

 negative:
    print "The entered number is negative"
    jmp start


define_scan_num
define_print_num
define_print_num_uns

ret



