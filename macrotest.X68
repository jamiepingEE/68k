    org $1000
square    macro
    move.w x,d0
    muls d0,d0
    move.w d0,x
    endm
    
    org $2000
x   dc.w 4
    
    ORG    $3000
MAIN
    bsr square
    move d0,d1
    sub x,d1
    END    MAIN

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
