section .bss
  res resb 52       ; results buffer

section .text
  global _start

_start:
  mov al, 65        ; Starting letter
  mov ecx, 26       ; counter
  mov edi, res      ; load starting memory address of res

fill_loop:
  mov [edi], al     ; store current letter at [edi] memory address
  inc edi           ; inc buffer pointer
  mov byte [edi], 10  ; tag a nl at the end (adds byte)
  inc edi           ; increment buffer pointer
  inc al            ; increment to next ASCII 
  loop fill_loop    ; dec ecx, jnz fill_loop
  

output:
  mov eax, 4        ; system call (sys_write)
  mov ebx, 1        ; stdout
  mov ecx, res      ; memory address
  mov edx, 52       ; output length
  int 0x80


exit:
  mov eax,1
  xor ebx, ebx
  int 0x80


