# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emda-sil <emda-sil@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/05/18 13:25:16 by emda-sil          #+#    #+#              #
#    Updated: 2026/05/18 13:25:26 by emda-sil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

RM = rm -rf

C_LIB = ar rcs
OBJS = $(SRCS:.c=.o)
SRCS = ft_printf.c ft_format.c ft_print_hex.c ft_print_numbers.c ft_print_ptr.c \
	   ft_print_text.c 

all: $(NAME)

$(NAME): $(OBJS)
	$(C_LIB) $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all

.PHONY: all clean fclean re
