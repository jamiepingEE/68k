    org $0000
N dc 20
DECR dc -6
VALS dc 1,2,0,4,0,6,0,8,0,10,11
EXIT dc 3
SUM ds 1

    org $0100
main sub d0,d0
    move N(a0),d3
    move DECR(a0),d1
    movea d3,a0 ;displacement of 10bytes
    move d0,d3
LOOP move VALS(a0),d2 ;10th byte vals=11
    cmp d0,d2
    beq THEN
    add d2,d3
THEN adda d1,a0
    bgt LOOP
    movea d0,a0
    move d3,SUM(a0)
    move EXIT(a0),d0
    trap #0
    end main
    
    


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
