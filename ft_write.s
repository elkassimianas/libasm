;ft_write(rdi, rsi, rdx)

section .text
    global _ft_write
_ft_write:

        mov rax, 0x2000004
        syscall

        jb _error
        jmp _end
        _error:
            mov rax, -1
            ret
        
        _end:
            ret