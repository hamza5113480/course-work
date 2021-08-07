
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
include emu8086.inc

.data
    x dw 0
    y dw 0
    z dw 0
    ans dw 0
    m dw 2

; add your code here

.code

    call scan_num
    mov x,cx
    call scan_num
    mov y,cx
    call scan_num
    mov z,cx

    ;solving the expression x-y+2z-1
    mov ax,x
    sub ax,y
    mov ans,ax
    mov ax,z
    mul m
    add ax,ans
    sub ax,1
    ;
    print "The ans is : "

    call print_num



define_scan_num
Define_print_num
Define_print_num_uns


ret



