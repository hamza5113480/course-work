
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
include emu8086.inc
                    
.data     
     term dw 0
     num dw 0
     count dw 0
                   
; add your code here  

.code           
     print "Enter the term number "
     call scan_num
     mov term,cx 
     mov bx,0 
     mov ax,0
                  
  sum:        
    inc bx 
    add ax,bx
  
        
                       
    cmp bx,term
    je finish    
    jmp sum      
       
              
finish:   
    print 10
    print 13
    print "The sum is "
    call print_num
    print 10
    print 13
    print "AX = "
    call print_num 
    print 10
    print 13
    mov ax,bx
    print "BX = "
    call print_num
    



                    
                    
define_scan_num
define_print_num
define_print_num_uns
    
ret



