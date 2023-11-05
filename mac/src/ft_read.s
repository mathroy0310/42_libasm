section .text
global _ft_read

%include "mac/src/ft_error.s"
%include "mac/src/ft_syscalls.s"

_ft_read:
	mov rax, SYSC_READ
	syscall
	ret
