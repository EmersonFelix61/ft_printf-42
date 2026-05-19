/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: emda-sil <emda-sil@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/05/19 19:15:33 by emda-sil          #+#    #+#             */
/*   Updated: 2026/05/19 19:30:47 by emda-sil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

int	ft_printf(const char *format, ...);
int	ft_puthex(unsigned int n, char format);
int	ft_putnbr(int n);
int	ft_putchar(char c);
int	ft_putstr(const char *str);
int	ft_putunsigned(unsigned int n);
int	ft_putptr(void *ptr);
int	ft_format(char format, va_list args);

#endif
