global _start

section .text
_start:
    mov rax, 2      ; change here
    imul rax, 5
loop:
    cmp rax, 10
    jnz loop
