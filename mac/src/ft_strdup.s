;/* ************************************************************************** */
;/*                                                                            */
;/*                                                     ██   ██ ██████         */
;/*   ft_read.s                                         ██   ██      ██        */
;/*                                                     ███████  █████         */
;/*   By: maroy <maroy@student.42.qc>                        ██ ██             */
;/*                                                          ██ ███████.qc     */
;/*																			   */
;/* ************************************************************************** */
;/*	int		ft_strcmp(const char *s1, const char *s2);					  	   */
;/* ************************************************************************** */
section .text
global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc


_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	ret
; ------------------------------------------------------------------------------
