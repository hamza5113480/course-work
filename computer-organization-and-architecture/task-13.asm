
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
.data

    m1 dw 0
    m2 dw 0
    m3 dw 0
    m4 dw 2
    sum dw 0
    avg dw 5

; add your code here
.code

 print "Enter marks %age marks of 4 exams : "

 call scan_num
 mov m1,cx
 print 10
 print 13
 call scan_num
 mov m2, cx
  print 10
 print 13
 call scan_num
 mov m3,cx
  print 10
 print 13
 call scan_num
 mov ax,cx
  print 10
 print 13
 mul m4
 mov m4,ax
 mov ax,0

 add ax,m1
 add ax,m2
 add ax,m3
 add ax,m4

 print 10
 print 13

 print "The Sum is : "
 call print_num

 mov sum,ax

 div avg

 mov avg,ax

 print 10
 print 13

 print "The averag is : "
 call print_num






define_scan_num
define_print_num
define_print_num_uns


ret



