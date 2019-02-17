NAME		= libft.a

FLAGS		= -Wall -Werror -Wextra -I. -c

SRCS		= ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memchr.c\
			ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c\
			ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c\
			ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c\
			ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c\
			ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c\
			ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c\
			ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c\
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c\
			ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_memmove.c ft_memcmp.c\
			get_next_line.c ft_xlstadd.c ft_isblank.c ft_isspace.c ft_strrev.c ft_range.c ft_swap.c ft_lstswap.c ft_strtolower.c\

OBJ			= $(SRCS:.c=.o)

LOG_CLEAR		= \033[2K
LOG_UP			= \033[A
LOG_NOCOLOR		= \033[0m
LOG_YELLOW		= \033[1;33m
LOG_VIOLET		= \033[1;35m
LOG_BLUE		= \033[1;34m

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)

all: $(NAME)

$(OBJ): $(SRCS)
	@gcc $(FLAGS) $(SRCS)

clean:
	@echo -e "$(LOG_CLEAR)$(LOG_BLUE)clean obj$(LOG_NOCOLOR)"
	@rm -rf $(OBJ)

fclean: clean
	@echo -e "$(LOG_CLEAR)$(LOG_BLUE)clean exe$(LOG_NOCOLOR)"
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
