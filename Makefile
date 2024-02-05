# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maroy <maroy@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/05 15:40:01 by maroy             #+#    #+#              #
#    Updated: 2024/02/05 16:28:13 by maroy            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Define colors and styles
RESET = \033[0m
BOLD = \033[1m
GRAY = \033[90m
RED = \033[31m
YELLOW = \033[33m
GREEN = \033[32m

# Targets
NAME = libasm.a
OBJ_DIR = obj
INC_DIR = inc

SRC_DIR = src
SRC_BONUS_DIR = src-bonus

ifeq ($(shell uname), Linux)`
	SRC_DIR = linux/src
	SRC_BONUS_DIR = /linux/src-bonus
else ifeq ($(shell uname), Darwin)
	SRC_DIR = mac/src
	SRC_BONUS_DIR = mac/src-bonus
endif

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

SRC_BONUS = ft_atoi_base.s

ASSEMBLER = nasm
ASSEMBLER_FLAGS = -f macho64 -g

ARCHIVER = ar
ARCHIVER_FLAGS = -rcs

SRCS = $(addprefix $(SRC_DIR)/, $(SRC))
SRC_BONUS = $(addprefix $(SRC_BONUS_DIR)/, $(SRC_BONUS))
OBJS = $(patsubst $(SRC_DIR)/%.s, $(OBJ_DIR)/%.o, $(SRCS))

# Main rules
all: $(OBJ_DIR) $(NAME)

$(NAME): $(OBJS)
	@$(ARCHIVER) $(ARCHIVER_FLAGS) $@ $^
	@echo "$(BOLD)$(GREEN)Library $@ created$(RESET)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@echo "$(BOLD)$(GRAY)Compiling $<$(RESET)"
	@$(ASSEMBLER) $(ASSEMBLER_FLAGS) -o $@ $<

$(OBJ_DIR):
	@mkdir -p $@

clean:
	@rm -rf $(OBJ_DIR)
	@echo "$(BOLD)$(YELLOW)Cleaned object files$(RESET)"

fclean: clean
	@rm -rf $(NAME)
	@echo "$(BOLD)$(RED)Cleaned $(NAME)$(RESET)"

re: fclean all

.PHONY: all clean fclean re
