    org $3000
string dc.l 'aidss'
stlength equ *-string ;gets length of aidss should be 6 for .w, 
                    ;5 for .b, 8 for .l since ascii occupies 
                        ;1 byte in reserved size
const dc.b 1,2,3,4,5 ;should be 5 to reserve 1 byte per number
clength equ *-const

    org $4000
main

    end main

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
