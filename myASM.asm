section .data
	hw: db "Hello World!", 0
	format: db "%d", 10, 0

section .text
	global _start
	extern add
	extern printf
_start:
	mov rax,1
	mov rdi,0
	lea rsi,[hw]
	mov rdx,13
	syscall
	
	mov rdi,5
	mov rsi,2
	call add
	
	mov rdi,format
	mov rsi,rax
	call printf

	mov rax,60
	mov rdi,0
	syscall


