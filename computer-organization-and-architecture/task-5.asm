include emu8086.inc

.data

num1 dw 0
num2 dw 0
num3 dw 0
num4 dw 0
num5 dw 0

print 'Enter first number: '

call scan_num

mov num1,cx

mov ax,num1

printn
print 'Enter second number: '

call scan_num

mov num2,cx

add ax,num2
;----
printn
print 'Enter third number: '

call scan_num

mov num3,cx

add ax,num3

printn
print 'Enter fourth number: '

call scan_num

mov num4,cx

add ax,num4


printn
print 'Enter fifth number: '

call scan_num

mov num5,cx

add ax,num5


printn
print 'Sum of the numbers is: '

call print_num

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM

proc END

ret
