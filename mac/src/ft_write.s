/* ************************************************************************** */
/*                                                                            */
/*                                                     ██   ██ ██████         */
/*   ft_error.s                                        ██   ██      ██        */
/*                                                     ███████  █████         */
/*   By: maroy <maroy@student.42.qc>                        ██ ██             */
/*                                                          ██ ███████.qc     */
/*																			  */
/* ************************************************************************** */
/*	ssize_t	ft_write(int fd, const void *buf, size_t count);				  */																	*/
/* ************************************************************************** */

section .text
global _ft_write
extern _ft_error

%include "mac/src/ft_error.s"
%include "mac/src/ft_syscalls.s"

_ft_write:
	mov rax, SYSC_WRITE
	syscall
	jc _ft_error
	ret
; ------------------------------------------------------------------------------
