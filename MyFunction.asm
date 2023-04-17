
.code
testCPUID proc
    pushfq
    pop rax
    cmp rax, rbx

    jz NO_CPUID

    xor rax, rax
    cpuid
    mov rax, 1h
    cpuid

    NO_CPUID:
    ret         ;rbx=3100800 ; rcx=7FFAFBBF  ; rdx=BFEBFBFF
testCPUID endp  
end


;.code 
;testCPUID proc
;    pushfq
;    pop rax
;    cmp rax, rbx

;    jz NO_CPUID

;    ; get the logical processors count
;    xor eax, eax
;    cpuid
;    mov ebx, eax

;NO_CPUID:
;    ret
;testCPUID endp
;end