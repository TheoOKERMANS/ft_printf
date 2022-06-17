/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tokerman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/12 17:44:01 by tokerman          #+#    #+#             */
/*   Updated: 2022/05/12 18:55:52 by tokerman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"
# include <stdarg.h>
# include <stdlib.h>

int	printf_hexa_lowcase(unsigned int i);
int	printf_hexa_lowcase_ll(unsigned long long i);
int	printf_hexa_upcase(unsigned int i);
int	ft_putlong_fd(long n, int fd);
int	printf_adress(va_list *param);
int	printf_string(va_list *param);
int	printf_char(va_list *param);
int	printf_int(va_list *param);
int	conversion_manager(char c, va_list *param);
int	ft_printf(const char *str, ...);

#endif