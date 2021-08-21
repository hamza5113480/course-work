
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc

.data
     x      dw 0
     ans    dw 0
     c      dw 4


; add your code here


.code


    print "enter a number : "
    call scan_num


    mov x,cx


    mov bx,c
    mov cx,c



   lo1:

      mov ax,x
    ;   dec cx


   lo2:

     mul x

   loop lo2

    div x
    div  bx

    add ans,ax



     mov cx,bx
     dec bx


   loop lo1

   print 10
   print 13
   print "Result is : "
   mov ax,ans

   call print_num






define_scan_num
define_print_num
define_print_num_uns


ret
