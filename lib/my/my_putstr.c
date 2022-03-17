/*
** EPITECH PROJECT, 2022
** C_Project_Template
** File description:
** No file there, just an epitech header example
*/

#include "my.h"

void my_putstr(char const *str)
{
    write(1, str, my_strlen(str));
}
