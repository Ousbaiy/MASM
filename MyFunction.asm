;find character @ and remove it

.data
    my_string db 'The symbol @ is incorrect'
    modified_string db 26 dup(?) ; new location to copy modified string
    ;symbol db '@'
    len dq 25

.code
MyFunction proc
    lea rsi, my_string ; source string
    lea rdi, modified_string ; destination string
    xor rcx, rcx ; counter to track
    ;mov dl, symbol ; symbol to find and remove
    mov del, '@'
l_loop:
    mov al, byte ptr [rsi+rcx] ; read byte from the source string
    cmp al, dl ; compare the byte with the symbol to remove
    je l_skip ; if equal, skip over the symbol
    mov byte ptr [rdi+rcx], al ; copy the byte to the new location
l_skip:
    inc rcx ; increment the counter
    cmp rcx, len ; check if the end of the string is reached
    jne l_loop ; if not, repeat the loop


    ret
MyFunction endp
end
