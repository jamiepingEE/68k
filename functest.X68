             
    org $1000
loop
    move.l  d0,-(sp)        
    move    (a1)+,(sp)
    move.l (sp)+,d0
    rts
    
aids    macro
    lea \1,a1
    jsr loop
    endm
    
main
    move #6,d4 ;counter
    
back
    move (a1)+,d0
    aids num
    dbra d4,back

    
num dc.b 1,3,4,56,7,8

    end main

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
