
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.data
    v db 0ah , 0dh ,'$'

.code

 mov cl,10

 mov ah,1h
 int 21h
 mov bl,al

 input:

 mov ax,@data
 mov ds,ax
 mov dx , offset v
 mov ah,9
 int 21h

 mov dl,bl

 mov ah,2h
 int 21h



 loop input

ret



