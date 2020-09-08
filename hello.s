;section .data
 ;   msg db "Hello world!",10      ; 10 is the ASCII code for a new line (LF)

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, str
    mov rdx, len
    syscall§
  
    mov rax, 60
    mov rdi, 0
    syscall
