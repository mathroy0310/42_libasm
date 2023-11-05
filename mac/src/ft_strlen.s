;/* ************************************************************************** */
;/*                                                                            */
;/*                                                     ██   ██ ██████         */
;/*   ft_read.s                                         ██   ██      ██        */
;/*                                                     ███████  █████         */
;/*   By: maroy <maroy@student.42.qc>                        ██ ██             */
;/*                                                          ██ ███████.qc     */
;/*																			   */
;/* ************************************************************************** */
;/*	size_t	ft_strlen(const char *s);										   */
;/* ************************************************************************** */
section .text
global _ft_strlen

_ft_strlen:
    xor rax, rax           		; Initialize rax to 0 (the length count)
.loop_count:
	test byte [rdi + rax], 0xFF  ; Test the current character for all bits set
	jz .exit                    ; jz == jump if zero (null terminator)
    inc rax                 	; Increment rax (the length count)
    jmp .loop_count         	; Continue the loop 
.exit:
    ret                     	; Return the length in rax)
; ------------------------------------------------------------------------------
