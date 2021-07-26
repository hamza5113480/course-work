
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;41-5a hex
;65-90 d

.data
  newline db 0ah,0dh,'$'

.code
 mov cl,26
 mov bl,64
 mov dl,bl




 display:
 inc bl
 mov dl,bl
 mov ah,2h
 int 21h

 mov ax,@data
 mov ds,ax
 mov dx,offset newline
 mov ah ,9
 int 21h





 loop display


ret



