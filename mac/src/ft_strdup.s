;/# **************************************************************************** #
;/#                                                                              #
;/#                                                         :::      ::::::::    #
;/#    ft_strdup.s                                         :+:      :+:    :+:   #
;/#                                                     +:+ +:+         +:+      #
;/#    By: maroy <maroy@student.42.fr>                +#+  +:+       +#+         #
;/#                                                 +#+#+#+#+#+   +#+            #
;/#    Created: 2024/02/05 15:33:10 by maroy             #+#    #+#              #
;/#    Updated: 2024/02/05 15:33:17 by maroy            ###   ########.fr        #
;/#                                                                              #
;/* ************************************************************************** */#
;/*	int		ft_strdup(const char *s1, const char *s2);					  	   */#
;/* ************************************************************************** */#

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

;/* ************************************************************************** */#
