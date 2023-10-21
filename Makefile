# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: xxxxxxx <xxxxxxx@student.42mulhouse.fr>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/03 08:35:04 by xxxxxxx           #+#    #+#              #
#    Updated: 2022/07/14 14:37:49 by xxxxxxx          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libft.a
SRCS 		= srcs/src_printf/ft_printf_chr.c srcs/src_printf/ft_printf_int.c \
srcs/src_printf/ft_printf_percent.c srcs/src_printf/ft_printf_ptr.c \
srcs/src_printf/ft_printf_str.c srcs/src_printf/ft_printf_uint.c \
srcs/src_printf/ft_printf_upper_xint.c srcs/src_printf/ft_printf_xint.c \
srcs/ft_isspace.c srcs/ft_striteri.c srcs/ft_putendl_fd.c srcs/ft_putnbr_fd.c \
srcs/ft_putchar_fd.c srcs/ft_putstr_fd.c srcs/ft_strjoin.c srcs/ft_atoi.c \
srcs/ft_bzero.c srcs/ft_calloc.c srcs/ft_isalnum.c srcs/ft_isalpha.c \
srcs/ft_isascii.c srcs/ft_isdigit.c srcs/ft_isprint.c srcs/ft_memchr.c \
srcs/ft_memcmp.c srcs/ft_memcpy.c srcs/ft_memmove.c srcs/ft_memset.c \
srcs/ft_strchr.c srcs/ft_strdup.c srcs/ft_strlcat.c srcs/ft_strlcpy.c \
srcs/ft_strlen.c srcs/ft_strncmp.c srcs/ft_strnstr.c srcs/ft_strrchr.c \
srcs/ft_tolower.c srcs/ft_toupper.c srcs/ft_substr.c srcs/ft_lstmap.c \
srcs/ft_lstnew.c srcs/ft_lstiter.c srcs/ft_lstlast.c srcs/ft_lstsize.c \
srcs/ft_lstclear.c srcs/ft_lstdelone.c srcs/ft_lstadd_back.c srcs/ft_lstadd_front.c \
srcs/ft_utoa.c srcs/ft_ultoa_base.c srcs/ft_utoa_base.c srcs/ft_strcontain.c \
srcs/ft_strcmp.c srcs/ft_tabmin.c srcs/ft_tabmax.c srcs/ft_abs.c \
srcs/ft_lstcalendar.c srcs/ft_memcat.c srcs/ft_sort_int_tab.c srcs/ft_lstmaxint.c \
srcs/ft_lstminint.c srcs/ft_sqrt.c srcs/ft_is_nodoubl.c srcs/ft_tab_size.c \
srcs/get_next_line.c srcs/ft_printf.c srcs/ft_strmapi.c srcs/ft_itoa.c \
srcs/ft_split.c srcs/ft_strtrim.c srcs/ft_print_tab.c srcs/ft_atou.c
OBJS 		= ${SRCS:.c=.o}
CC			= @gcc
RM			= @rm -f
CFLAGS		= -Wall -Wextra -Werror

all: $(NAME)

$(NAME):	$(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@printf "\e[95m\tLibft Compilation\t[ ✓ ]\n\e[39m"

clean:
	$(RM) $(OBJS)
	@printf "\e[31m\tLibft Clean \t\t[ ✓ ]\n\e[39m"

fclean: clean
	$(RM) $(NAME)
	@printf "\e[35;5;161m\tLibft Binary Clean \t[ ✓ ]\n\e[39m"

re: fclean all
