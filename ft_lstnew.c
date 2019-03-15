/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcatusse <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/06 16:00:48 by fcatusse          #+#    #+#             */
/*   Updated: 2019/03/15 13:24:08 by fcatusse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void const *content, size_t size)
{
	t_list	*list;

	if (!(list = (t_list*)ft_memalloc(sizeof(t_list))))
		return (NULL);
	if (content)
	{
		if (!(list->content = ft_memalloc(size)))
			return (NULL);
		ft_memcpy(list->content, content, size);
		list->size = size;
	}
	else
	{
		list->content = NULL;
		list->size = 0;
	}
	list->next = NULL;
	return (list);
}
