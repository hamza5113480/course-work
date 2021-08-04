
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc

; add your code here

.data
    v1 dw -10
    v2 dw 2
.code
    mov ax,v1
    imul v2
    call print_num




define_scan_num
Define_print_num
Define_print_num_uns

ret



