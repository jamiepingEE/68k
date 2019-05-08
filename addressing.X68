    org $0000

VALS dc 1,2,0,4,0,6,0,8,0,10,11

    org $0100
main
    move #4,d0
    move #5,d1
    move #7,d3
    
    move VALS(a0),d2
    movea d0,a0
    move #3,a0
    move a2,a3
    move d1,(a2)
    move (0),d5
    end main
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
