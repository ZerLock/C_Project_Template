##
## EPITECH PROJECT, 2022
## C_Project_Template
## File description:
## Makefile
##

SRC	=	main.c \
		$(wildcard src/*.c) \

TESTS	=	$(wildcard tests/*.c) \
			$(wildcard lib/my/*.c) \
			$(wildcard src/*.c) \

OBJ	=	$(SRC:.c=.o)

NAME	=	templat

LIB	=	-Llib -lmy

CFLAGS	= -Wextra -Wall -Iinclude -g3

.PHONY: all
all:	$(NAME)

$(NAME):	$(OBJ)
	make -C ./lib/my
	gcc -o $(NAME) $(OBJ) $(LIB)
	make clean

.PHONY: clean
clean:
	rm -f $(OBJ)
	rm -f tests/*.o
	rm -rf *.gcda
	rm -rf *.gcno

.PHONY: fclean
fclean:	clean
	rm -f $(NAME)
	rm -f unit_tests
	rm lib/libmy.a

.PHONY:	re
re:	fclean all

.PHONY: unit_tests
unit_tests:
	make -C ./lib/my
	gcc -o unit_tests $(TESTS) $(CFLAGS) $(LIB) -lcriterion --coverage

.PHONY: tests_run
tests_run: unit_tests
	./unit_tests
