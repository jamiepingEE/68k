    org $1000
n   dc 13
isprime dc ' '

    org $2000
prime
    move #0,isprime
    bra exit
    
    org $5000
    bra exit


    org $4000
main
    swap d0 ;high
    clr d0
    swap d0 ;low
    clr d0
    
    move n(a0),d0
    move d0,d1
    
    divs #2,d1
    swap d1 ;check high
    move d1,d2
    cmp.w #0,d2
    beq Prime ;=0, not prime
    move #1,isprime ;else prime
    bra exit

    org $6000
exit
    move isprime(a0),d4
    end main
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
