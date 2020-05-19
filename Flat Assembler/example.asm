; > fasm example.asm

format PE64 console
entry start

include 'C:\fasm\include\win64a.inc'

section '.code' code executable
start:
    sub rsp, 32
    mov rcx, message
    call [printf]
    add rsp, 32
    ret

section '.rdata' data readable
    message db 'Hello World', 10, 0

section '.idata' data readable import
    library msvcrt, 'msvcrt.dll'

    import msvcrt, printf, 'printf'