TXT    dc.b    'Money has finally started to chase this year''s stock market rally, which has been driven largely by the Fed''s sharp turn away from last year''s steady rate increases.', 0
txt2 dc.b 'moneyshot',0 ;0 counts as a character
len equ *-TXT

    org $1000
main
    move #txt2,a0
    move.b (a0)+,-(sp)
back
    add #1,d2 ;counts
    move.b (a0)+,-(sp)
    cmp #0,(sp)
    blt exit ;null detected
    bra back
exit
    sub #1,d2
    end main 
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
