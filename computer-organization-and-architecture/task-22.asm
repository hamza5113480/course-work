
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
; add your code here
.data
    num dw 0
.code
  start:
    print "Enter a number between 0 - 10 : "
    call scan_num
    mov ax,cx

    print 10
    print 13
    ;mov ax,num
   ; call print_num
   ; print "asd"

 cmp ax,10
 jge start
 print "You have Entered = "
; mov ax,num
     ;call print_num
 cmp ax,1
 jle one

 cmp ax,2
 jle two

 cmp ax,3
 jle three

 cmp ax,4
 jle four

 cmp ax,5
 jle five

 cmp ax,6
 jle six

 cmp ax,7
 jle seven


 cmp ax,8
 jle eight

 cmp ax,9
 jle nine

        one: print " one "
        jmp finish

        two: print "two "
        jmp finish


        three: print "three "
        jmp finish


        four: print "four "
        jmp finish


        five: print "five "
        jmp finish


        six: print "six "
        jmp finish


        seven: print "seven "
        jmp finish

        eight: print "eight "
        jmp finish


        nine: print "nine"
       ; jmp finish

  finish:




define_scan_num
define_print_num
define_print_num_uns

ret



