# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hhaddouc <hhaddouc@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/05 22:49:01 by hhaddouc          #+#    #+#              #
#    Updated: 2021/12/05 23:25:59 by hhaddouc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror 
SRCS =	ft_printf.c ft_printf_utils.c ft_itoa.c ft_print_ad.c ft_print_unsigned.c ft_print_hex.c


NAME = Libftprintf.a

AR = ar -rcs

OBJS = $(SRCS:.c=.o)

#Color
UPurple = \033[4;35m

all : $(NAME)

$(NAME): $(OBJS)
	@$(AR)  $(NAME) $(OBJS) 
	@echo "$(UPurple)printf compiled:)!"
clean :
	@rm -f $(OBJS)
	@echo "$(UPurple)printf objects files cleaned!"
	
fclean : clean
	rm -f $(NAME)
	
re : fclean all
	@echo "$(UPurple)Cleaned and rebuilt everything for printf!"

.PHONY : all clean fclean