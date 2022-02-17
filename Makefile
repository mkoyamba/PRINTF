# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/17 14:16:15 by mkoyamba          #+#    #+#              #
#    Updated: 2022/02/17 17:29:27 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

INCLUDES = ft_printf.h

SRC =	ft_printf.c\
		ft_flag_bx.c\
		ft_flag_c.c\
		ft_flag_d.c\
		ft_flag_i.c\
		ft_flag_p.c\
		ft_flag_perc.c\
		ft_flag_s.c\
		ft_flag_u.c\
		ft_flag_x.c\

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.c
	gcc $(FLAGS) -I $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re