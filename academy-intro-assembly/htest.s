global _start

section .data
	variable db "Hello variable",0x0a

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, variable
	mov rdx, 15
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
