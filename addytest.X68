    org $1000
main
    move #$2, d1
    move d1,a1
    move #$3,2(a1)
    move (4),d0 ;content at address 4 should be $3
    end main

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
