##
## EPITECH PROJECT, 2022
## C_Project_Template
## File description:
## Makefile
##

SRC	=	my_strlen.c \
		my_putstr.c \

OBJ	=	$(SRC:.c=.o)

NAME	=	libmy.a

CFLAGS	= -Wextra -Wall

.PHONY: all
all:
	gcc -c $(SRC)
	ar rcs $(NAME) $(OBJ)
	cp $(NAME)	../
	make fclean

.PHONY: clean
clean:
	rm -f $(OBJ)

.PHONY: fclean
fclean:	clean
	rm -f $(NAME)

.PHONY:	re
re:	fclean all
