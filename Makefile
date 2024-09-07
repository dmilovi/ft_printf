# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmilovid <dmilovid@student.42warsaw.p      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/29 16:58:49 by dmilovid          #+#    #+#              #
#    Updated: 2024/03/29 16:59:05 by dmilovid         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a

HEADERS = ft_printf.h

SRC	= ft_printf.c \
	   ft_numbers.c \
	ft_words.c \

OBJS	= $(SRC:.c=.o)

CC	= gcc

RM	= rm -f

CFLAGS	= -Wall -Wextra -Werror

%.o: $(SRC_DIR)/%.c
	gcc $(WFL) $(IFL) -c $< -o $@

all:	$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
