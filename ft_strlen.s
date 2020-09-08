section .text
	global _ft_strlen
	
	;constants
	SYS_WRITE equ 1
	SYS_EXIT  equ 60
	STDOUT    equ 1

_ft_strlen:
		mov rax, 0
		cmp byte [rdi + rax], 0 ;compare byte with zero
		jnz _loop 	;jump not zero
		jmp _ret
			_loop:
				add rax, 1
				cmp byte [rdi + rax], 0
				jz _ret ; jump zero
				jmp _loop
			_ret:
				ret