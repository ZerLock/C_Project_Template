/*
** EPITECH PROJECT, 2022
** C_Project_Template
** File description:
** No file there, just an epitech header example
*/

#include "header.h"

int my_strlen(char const *str)
{
    int i = 0;

    while (str[i])
        i++;
    return i;
}
