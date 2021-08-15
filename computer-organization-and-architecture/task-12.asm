
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include EmU8086.inc

.data
    var1 dw -500
    var2 dw 2
    var3 dw 0


; add your code here


.code


   mov ax,var1
         cwd
   idiv var2

   print "The result is : "
   call print_num
   mov var3,ax
   print 10
   print 13





define_scan_num
define_print_num
define_print_num_uns

ret



