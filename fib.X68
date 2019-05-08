    org $1000
n   dc $6
one dc $1
result  dc ' '

    org $2000
loop
    clr d0
    add d1,d0
    add d2,d0
    move d0,d3
    
    move d2,d1
    move d3,d2

*    dblt d4,loop
    sub one(a0),d4
    bgt loop
    
    rts
    
    org $3000
main
*    move n,d4
    move n(a0),d4
    clr d1
    clr d2
    clr d3
    move #$1,d1
    move #$1,d2
    bsr loop
    jmp exit
    
        org $4000
exit    
    move d0,result
    move result,d5
    end main
    
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
