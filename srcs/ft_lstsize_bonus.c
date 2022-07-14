/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize_bonus.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bdehais <bdehais@student.42mulhouse.fr>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/23 10:55:19 by bdehais           #+#    #+#             */
/*   Updated: 2022/02/23 12:40:47 by bdehais          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

int	ft_lstsize(t_list *lst)
{
	int	res;

	res = 0;
	while (lst)
	{
		res++;
		lst = lst->nx;
	}
	return (res);
}
