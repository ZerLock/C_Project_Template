/*
** EPITECH PROJECT, 2022
** C_Project_Template
** File description:
** project_tests
*/

#include "header.h"
#include <criterion/criterion.h>
#include <criterion/redirect.h>

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

/* lib tests */
Test (my_strlen, test_my_strlen_empty)
{
    cr_assert_eq(my_strlen(""), 0);
}

Test (my_strlen, test_my_strlen_functionnal)
{
    cr_assert_eq(my_strlen("Hello world!"), 12);
}

Test (my_putstr, test_my_putstr_functionnal, .init = redirect_all_stdout)
{
    my_putstr("Hello world!\n");
    cr_assert_stdout_eq_str("Hello world!\n");
}

/* src tests */
Test (my_function, test_my_function_empty, .init = redirect_all_stdout)
{
    my_function();
    cr_assert_stdout_eq_str("Hello world!\n");
}