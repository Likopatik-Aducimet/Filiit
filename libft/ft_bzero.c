/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_bzero.c                                       .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: calin <calin@student.le-101.fr>            +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/06 11:54:34 by calin        #+#   ##    ##    #+#       */
/*   Updated: 2018/10/22 14:59:21 by calin       ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	ft_bzero(void *str, size_t len)
{
	size_t i;

	i = 0;
	while (i < len)
	{
		((unsigned char *)str)[i] = 0;
		i++;
	}
}