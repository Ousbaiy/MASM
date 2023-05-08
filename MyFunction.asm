;find character @ and remove it
.data
    my_string db 'The symbol @ is incorrect'
    symbol db '@'
    len dq 25

.code
MyFunction proc
    xor rax, rax;
    mov al, symbol ;symbol to find
    mov rcx, len  ;counter in rcx
    lea rdi, my_string
    cld ;clear the direction flag
    repne scasb ;instruction to search the difference
    je l_found  ;when found
    mov rax, -1 ;if not then
    jmp l_exit
l_found:
    mov rax, len
    sub rax, rcx
    dec rcx ; decrement the counter to skip over the '@' symbol
    mov rsi, rdi ; set the source pointer to the beginning of the string
    add rsi, rcx ; add the index of '@' to the source pointer
    mov rdi, rsi ; set the destination pointer to the beginning of the string
    add rdi, 1 ; add 1 to skip over the '@' symbol
    mov rcx, rax ; set the counter to the length of the modified string
    sub rcx, 1 ; subtract 1 to exclude the '@' symbol
    rep movsb ; copy the modified string to rdi
    mov rax, rcx ; return the length of the modified string
l_exit:
    ret

MyFunction endp
end
