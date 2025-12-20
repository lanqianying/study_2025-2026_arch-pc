%include 'in_out.asm'  
  
SECTION .data  
msg: DB 'Введите x: ',0  
rem: DB 'y = ',0  
  
SECTION .bss  
x: RESB 80  
  
SECTION .text  
GLOBAL _start  
  
_start:  
mov eax, msg  
call sprintLF  
mov ecx, x  
mov edx, 80  
call sread  
mov eax,x  
call atoi  

imul eax, 31
sub eax, 5
add eax, 10
mov ebx, eax
mov eax,rem  
call sprint  
mov eax,ebx  
call iprintLF  

call quit
