
section .text
    global _ft_strcmp
_ft_strcmp:
    mov r9, 0
    _loop:
        mov al, byte [rdi + r9]
        mov bl, byte [rsi + r9]
        cmp al, bl
        jg _great
        jl _less
        cmp byte [rdi + r9], 0
        jz _equal
        inc r9
        jmp _loop
    _great:
        mov rax, 1
        ret
    _less:
        mov rax, -1
        ret
    _equal:
        mov rax, 0
        ret
