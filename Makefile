CC = gcc -Wall -Wextra -Werror

NASM = nasm -f macho64 

NAME = libasm


all : $(NAME)

$(NAME) :
	@$(NASM) ft_strlen.s
	@$(NASM) ft_strcpy.s
	@$(NASM) ft_strcmp.s
	@$(NASM) ft_write.s
	@$(NASM) ft_read.s
	@$(NASM) ft_strdup.s
	@ar rc libasm.a *.o
	@ranlib libasm.a
	@$(CC) libasm.a main.c

clean :
	rm -rf *.o

fclean : clean

	rm -rf $(NAME)
	rm -rf libasm.a

re : fclean all
