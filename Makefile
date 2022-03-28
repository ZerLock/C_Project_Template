##
## EPITECH PROJECT, 2022
## C_Project_Template
## File description:
## Makefile
##

SRC	=	$(wildcard src/*.c)

OBJ	=	$(SRC:.c=.o)

NAME	=	template

LIB	=	-Llib -lmy

CFLAGS	+= -Wextra -Wall -Iinclude -g3

.PHONY: all
all:	$(NAME)

$(NAME):	$(OBJ)
	make -C ./lib/my
	gcc -o $(NAME) $(OBJ) $(LIB)
	make clean

.PHONY: clean
clean:
	rm -f $(OBJ)
	rm -rf *.gcda
	rm -rf *.gcno

.PHONY: fclean
fclean:	clean
	rm -f $(NAME)
	rm lib/libmy.a

.PHONY:	re
re:	fclean all
