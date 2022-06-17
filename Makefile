NAME = libftprintf.a

SRC = ft_printf.c hex.c

LIBSRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJ= $(SRC:.c=.o)

LIBOBJ= $(LIBSRC:.c=.o)

CC = gcc

FLAGS = -Wall -Wextra -Werror

$(NAME):
	cd libft && make
	$(CC) $(FLAGS) $(SRC) -c
	ar rc $(NAME) $(OBJ) $(addprefix libft/, $(LIBOBJ))

all: $(NAME)

clean:
	rm -f $(OBJ)
	cd libft && make clean

fclean: clean
	rm -f $(NAME)
	cd libft && make fclean
	
re: fclean all