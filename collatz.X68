    org $1000
countsteps ds.b ' '

    org $2000
main    
    move #17,d0


back 

    cmp #1,d0 ;detect if not 1
    beq exit ;if =1, go to end
    add #1,d4
    move d0,d1 ;tempstore d0 in d1
    
    divu #2,d1
    swap d1 ; d1=HIGH
    move d1,d2 ;copy word to d2
    cmp #0,d2 ;detect word
    *one or the other
    beq even ;detect even aka remainder in high
    bra odd ;else odd and never go past here
    

    
    org $2100
even
    swap d1 ;revert d1 to low
    divu #2,d0 ;divide, put value back in low d0
    jmp back
    
odd
    swap d1 ;revert d1 to low
    mulu #3,d0
    add #1,d0
    jmp back
    
exit
    move d4,countsteps ;load countsteps
    end main

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
