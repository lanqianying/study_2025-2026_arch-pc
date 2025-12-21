%include 'in_out.asm'

section .data
msg1 db 'Введите x: ',0
msg2 db 'Введите a: ',0
msg3 db 'Результат: ',0

section .bss
x resb 10
a resb 10

section .text
global _start

_start:
mov eax,msg1
call sprint

mov ecx,x
mov edx,10
call sread

mov eax,x
call atoi
push eax

mov eax,msg2
call sprint

mov ecx,a
mov edx,10
call sread

mov eax,a
call atoi
mov ebx,eax

pop eax

cmp eax,ebx
jle case_le

mov eax,ebx
jmp result

case_le:
add eax,ebx

result:
push eax
mov eax,msg3
call sprint
pop eax
call iprintLF

call quit
