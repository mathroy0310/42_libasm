section .text

global _ft_strcmp

_ft_strcmp:
    xor rax, rax
	xor rdx, rdx

.loop:
    movzx rax, byte [rdi + rdx]   	; Load the next character from s1
    movzx rcx, byte [rsi + rdx]  	; Load the next character from s2
	test al , al
	jz .end
    cmp al, cl
    jne .end
    inc rdx    						; Move to the next character in s1
    jmp .loop

.end:
    sub eax, ecx
    ret

