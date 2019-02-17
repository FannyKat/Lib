#include "libft.h"

char		*ft_strtolower(char *str)
{
	char	*tmp;

	tmp = str;
	while (*tmp != '\0')
	{
		if (*tmp >= 65 && *tmp <= 90)
			*tmp += 32;
		tmp++;
	}
	return (str);
}
