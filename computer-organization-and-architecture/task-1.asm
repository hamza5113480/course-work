
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.data

.code

  mov ah,1h
  int 21h

  sub al,20h

 ; mov dl,0ah
  mov dl,al

  mov ah,2h
  int 21h

ret
