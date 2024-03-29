;/# **************************************************************************** #
;/#                                                                              #
;/#                                                         :::      ::::::::    #
;/#    ft_read.s                                          :+:      :+:    :+:    #
;/#                                                     +:+ +:+         +:+      #
;/#    By: maroy <maroy@student.42.fr>                +#+  +:+       +#+         #
;/#                                                 +#+#+#+#+#+   +#+            #
;/#    Created: 2024/02/05 15:33:10 by maroy             #+#    #+#              #
;/#    Updated: 2024/02/05 15:33:17 by maroy            ###   ########.fr        #
;/#                                                                              #
;/# ************************************************************************** */#
;/*	ssize_t	ft_read(int fd, const void *buf, size_t count);					   */#
;/* ************************************************************************** */#

section .text
global _ft_read

%include "mac/src/ft_error.s"
%include "mac/src/ft_syscalls.s"

_ft_read:
	mov rax, SYSC_READ
	syscall
	ret

;/* ************************************************************************** */#
