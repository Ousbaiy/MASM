.code 
    ; Function to calculate a AND b
    aANDb PROC a:DWORD, b:DWORD
        mov eax, a
        and eax, b
        ret
    aANDb ENDP

    aORb PROC a:DWORD, b:DWORD
        mov eax, a
        or eax, b
        ret
    aORb ENDP

    negatedB PROC b:DWORD
        not b
        add b, 1
        ret
    negateb ENDP
end