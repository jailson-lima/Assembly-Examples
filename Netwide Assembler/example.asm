; > nasm -f win64 example.asm
; > gcc -o example.exe example.obj

global main
extern printf

section .code
main:
    sub rsp, 32
    mov rcx, message
    call printf
    add rsp, 32
    ret

section .data
    message db 'Hello World', 10, 0