section .data
    hello db 'Hello, world!',0
section .text
    global _start
_start:
    ; write message to console
    mov eax, 4       ; system call for "write"
    mov ebx, 1       ; file descriptor for stdout
    mov ecx, hello   ; address of message to write
    mov edx, 13      ; number of bytes to write
    int 0x80         ; call kernel
    
    ; exit program
    mov eax, 1       ; system call for "exit"
    xor ebx, ebx     ; exit code 0
    int 0x80         ; call kernel
