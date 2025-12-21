%include 'in_out.asm'

SECTION .data
func db "Функция: f(x)=10x-4",0
msg db "Результат: ",0

SECTION .text
global _start

_start:
pop ecx
pop edx
sub ecx, 1
mov esi, 0

next:
cmp ecx, 0h
jz _end
pop eax
call atoi

mov ebx, 10     
imul eax, ebx   
sub eax, 4     

add esi, eax
loop next

_end:
mov eax, msg
call sprint
mov eax, func
call sprintLF
mov eax, esi
call iprintLF

call quit
