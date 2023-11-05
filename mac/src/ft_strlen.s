; -----------------------------------------------------------------------------
; A 64-bit function that calculates the length of a null-terminated string.
; The function takes a pointer to the string in rdi and returns the length in rax.
;
;	size_t	ft_strlen(const char *s)
;
; This function iterates through the characters of the string until it reaches
; the null terminator (0x00) and increments the length count accordingly.
; -----------------------------------------------------------------------------
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
; -----------------------------------------------------------------------------