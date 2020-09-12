; ft_read(rdi. rsi, rdx)

section .text
    global _ft_read
_ft_read:
            mov rax, 0x2000003
            syscall

            jb _error
            jmp _end
            _error:
                mov rax, -1
                ret
            _end:
                ret