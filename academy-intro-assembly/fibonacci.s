global  _start
extern printf, scanf

section .data
    message db "Fibonacci Sequence:",0x0a
    outFormat db "%d",0x0a,0x00
    inFormat db "%d",0x00
    strFormat db "%s",0x00
    digMessage db "Type a number: ",0x00

section .bss
    inputData resb 1

section .text
_start:
    call printMessage   ; print intro message
    call printTypeNumber
    call askData
    call initFib        ; set initial Fib values
    call loopFib        ; calculate Fib numbers
    call Exit           ; Exit the program

printData:
    push rax
    push rbx
    mov rdi, outFormat
    mov rsi, rbx
    call printf
    pop rbx
    pop rax
    ret

printTypeNumber:
    push rax
    push rbx
    mov rdi, strFormat
    mov rsi, digMessage
    sub rsp, 8
    call printf
    add rsp, 8
    pop rbx
    pop rax
    ret

askData:
    mov rdi, inFormat
    mov rsi, inputData
    sub rsp, 8
    call scanf
    add rsp, 8
    ret

printMessage:
    mov rax, 1      ; rax: syscall number 1
    mov rdi, 1      ; rdi: fd 1 for stdout
    mov rsi,message ; rsi: pointer to message
    mov rdx, 20     ; rdx: print length of 20 bytes
    syscall         ; call write syscall to the intro message
    ret

initFib:
    xor rax, rax    ; initialize rax to 0
    xor rbx, rbx    ; initialize rbx to 0
    inc rbx         ; increment rbx to 1
    ret

loopFib:
    call printData
    add rax, rbx    ; get the next number
    xchg rax, rbx   ; swap values
    cmp rbx, [inputData]		; do rbx - 10
    js loopFib		; jump if result is <0
    ret

Exit:
    mov rax, 60
    mov rdi, 0
    syscall
