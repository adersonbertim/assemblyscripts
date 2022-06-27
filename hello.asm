section .data
  msg db 'hello world', 0xA ;Variable msg with have string
  len equ $ - msg ;variable len with recive the lenght of string

section .text
global _start
_start:
  mov eax, 4 ; write method
  mov ebx, 1 ; output method
  mov ecx, msg ; mensage 
  mov edx, len ; lenght
  int 0x80 ; call the kernel

  mov eax, 1 ;metadate output(sys_exit)
  int 0x80 ;Call Kernel 
