    org $1000
array    dc.b 2,4,6,1,3
result    ds.b ' '

    org $2000
main
    move #array,a0 ;a0 points to loaded array
    move.b (a0)+,d1
    move.b (a0)+,d2
    move.b (a0)+,d3
    move.b (a0)+,d4
    move.b (a0)+,d5
    
    end main
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
