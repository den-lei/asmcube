section .data
    cube db '   +--------+', 0xA
         db '  /        /|', 0xA
         db ' /        / |', 0xA
         db '+--------+  |', 0xA
         db '|        |  |', 0xA
         db '|        |  +', 0xA
         db '|        | /', 0xA
         db '|        |/ ', 0xA
         db '+--------+', 0xA, 0

    cube_len equ $ - cube 

section .text
    global _start

_start:
    mov edx, cube_len
    mov ecx, cube
    mov ebx, 1
    mov eax, 4
    int 0x80
    mov eax, 1 
    xor ebx, ebx 
    int 0x80
