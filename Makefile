# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jili <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/14 09:31:20 by jili              #+#    #+#              #
#    Updated: 2025/01/14 09:31:46 by jili             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_non_number.c ft_number.c ft_printf.c

OBJ = $(SRC:%.c=%.o)
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@
all : $(NAME)
$(NAME) : $(OBJ)
	@echo creating $(NAME)
	ar rcs $(NAME) $(OBJ)
clean :
	rm -f $(OBJ)
fclean : clean
	rm -f $(NAME)
re : fclean all
.PHONY: all clean fclean re
