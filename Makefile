# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makfile                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: merson </var/spool/mail/merson>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/05/17 23:07:49 by merson            #+#    #+#              #
#    Updated: 2026/05/17 23:15:58 by merson           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall - Wextra -Werror

C_LIB = ar rcs
SRCS = ft_printf.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CLIB) $(CFLAGS) -c< -o $@

clean:
	$(RM) $(OBJS)
fclean:
	$(RM) $(NAME)
re: fclean all

.PHONY: all clean fclean re
