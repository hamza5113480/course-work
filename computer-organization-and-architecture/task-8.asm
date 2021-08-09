
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
.data
  length dw 0
  width dw 0
  height dw 0
  surface_area dw 0

; add your code here

.code
    print "Enter length :"
    call scan_num
    print 10
    print 13

    mov length,cx

     print "Enter width :"
    call scan_num
    print 10
    print 13

    mov width ,cx

     print "Enter height :"
    call scan_num
    print 10
    print 13

    mov height,cx

    mov ax, length
    mul width

    mov surface_area,ax

    mov ax,length
    mul height

    add surface_area,ax

    mov ax,width
    mul height

    add surface_area,ax

    mov ax,surface_area
    mov bx,2
    mul bx
    mov surface_area,ax
    print "The ans is :  "
    call print_num





define_scan_num
Define_print_num
Define_print_num_uns


ret



