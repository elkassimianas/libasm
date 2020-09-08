;ft_strcpy by assembly x86_64

section .text
    global _ft_strcpy
    ;constants

_ft_strcpy:
            
            mov r9 , 0
            cmp byte [rsi + r9], 0
            jz _ret
            _loop:
                    
                    mov al, byte [rsi + r9] ; load 1 byte rsi into al
                    mov byte [rdi + r9], al ;load 1 byte al into rdi
                    inc r9 ;increment r9
                    cmp byte [rsi + r9], 0
                    jnz _loop
                    jz _ret
            _ret:
                    mov byte [rdi + r9], 0
                    mov rax, rdi ; mov rdi to rax for return registr
                    ret