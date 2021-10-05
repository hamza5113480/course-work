
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

include emu8086.inc
org 100h
.data
arr dw 10 dup (?)
count1 dw 10
c2 dw 10
c3 dw 10
sum dw 0
avg dw 0
.code

print ' enter 10 digits:'
printn
jcxz endd
lea bx,arr
fn1:
printn
call scan_num
mov word ptr[bx],cx

add ax,[bx]
add bx,2
mov cx,count1
dec cx
mov count1,cx
cmp cx,1
jge fn1

printn
mov sum,ax
print 'sum of terms:  '
call print_num ;prints sumof num


lea bx,arr
mov cx,0
mov si,10
fn2:

  cmp word ptr[bx],0
  je  n1
  inc cx
n1:
    add bx,2
    dec si
    cmp si,1
    jge fn2
      printn
      print 'number of terms entered'
mov ax,cx
call print_num
printn
mov ax,sum
print 'average of numbers '
idiv cx
call print_num
mov avg,ax
      printn
    mov cx, 0 ; number of numbers greater than or equal to avg
    lea bx, arr
  mov si,10
    fn4:

    cmp word ptr[bx], ax
    jnge ge
    inc  cx
    ge:
    add bx, 2
    dec si
    cmp si, 1
    jge fn4

    mov ax, cx

    print 'Number of the numbers greater than or equal to avg is: '
    call print_num
    printn
endd:

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


