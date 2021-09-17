
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include emu8086.inc
; add your code here
.

.code
    print "Enter a number "

    call scan_num
    print 10
    print 13

    cmp cx,0
    jg cond1
    jmp second

    cond1:
        cmp cx,49
        jle failed

    second:
        cmp cx,50
        jge cond2
        jmp third

    cond2:
        cmp cx,59
        jle D

    third:
        cmp cx,60
        jge cond3
        jmp fourth

    cond3:
        cmp cx,69
        jle C

    fourth:
        cmp cx,70
        jge cond4
        jmp fifth

    cond4:
        cmp cx,79
        jle B

    fifth:
        cmp cx,80
        jge cond5
        jmp finish

    cond5:
        cmp cx,100
        jle A

 A:
    print "A You Got Congratulations !!"
    jmp finish

 B:
    print "Well B grade"
    jmp finish

 C:
    print "C is the grade for You"
    jmp finish

 D:
    print " Got D , You poor chap !!"
    jmp finish

 failed:
    print "You Failed , You Idiot"
    jmp finish

 finish:



define_scan_num
define_print_num
define_print_num_uns

ret



