# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: aducimet <aducimet@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/11/13 16:45:37 by aducimet     #+#   ##    ##    #+#        #
#    Updated: 2018/11/21 18:53:01 by aducimet    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = fillit

SRCS = 	srcs/fillit.c\
		srcs/struct_utils.c\

FLAG = -Wall -Wextra -Werror

CC = gcc $(FLAG) -g

RM = /bin/rm -f

all: $(NAME)

$(NAME):
	@make -C libft/
	@$(CC) -o $(NAME) $(SRCS) libft/libft.a
	@echo "Make executable :\033[0;32m DONE !\033[0m"

clean:
	@make clean -C libft/
	@$(RM) *.o 

fclean:
	@$(RM) $(NAME)
	@make fclean -C libft/
	@echo "Executable clean :\033[0;32m DONE !\033[0m"

re:	fclean all

.PHONY: all clean fclean re