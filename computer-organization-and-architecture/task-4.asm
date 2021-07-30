include emu8086.inc

.data

num1 dw 0
num2 dw 0

print 'Enter first number: '

call scan_num

mov num1,cx

printn
print 'Enter second number: '

call scan_num

mov num2,cx

mov ax,num1
add num2

printn
print 'Sum of the numbers is: '

call print_num

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM

proc END

ret
