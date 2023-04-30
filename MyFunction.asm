;calculates x = ab * sqrt(c) 
.data
    a dq 3.0
    b dq 2.0
    c dq 9.0
    x dq 0.0

.code
MyFunction proc
    ; Load values into FPU registers
    fld a
    fld b
    fld c

    fsqrt 
    
    ; Multiply a, b, and sqrt(c)
    fmulp st(1), st(0) ; 2 * 3 = 6
    fmulp st(1), st(0) ; 6 * 3 = 18
    ; Store result in x
    fst x
    
    
    ret
MyFunction endp
end
