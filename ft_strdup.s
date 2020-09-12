; let's finish this bullshit 
;this is last function in mandatory part :)
    extern _ft_strlen
    extern _ft_strcpy
    extern _malloc

section .text
    global _ft_strdup
_ft_strdup:
            call _ft_strlen
            add rax, 1
            push rdi
            mov rdi, rax
            call _malloc
            cmp rax, 0
            jz _error
            pop rsi
            mov rdi, rax
            call _ft_strcpy
            ret

            _error:
                mov rax, 0
                ret