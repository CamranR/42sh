##
## EPITECH PROJECT, 2018
## 42sh
## File description:
## 42sh
##

RED	=	\033[01;31m
YELLOW	=	\033[01;32m
GREEN	=	\033[01;33m
WHITE	=	\033[0m
CYAN	=	\033[01;34m

CC	=	gcc

RM	=	rm -f

SRC_LIB		=	src/lib/list_op.c			\
			src/lib/list_util.c 			\
			src/lib/arr_util.c			\
			src/lib/conv_array.c			\
			src/lib/conv_array2.c			\
			src/lib/catch_file.c			\
			src/lib/get_pos.c			\
			src/lib/empty.c				\
			src/lib/number.c			\
			src/lib/word_rplc.c			\
			src/lib/the_count_char.c		\
			src/lib/the_base.c

SRC_PARSE	=	src/parse/the_tree.c			\
			src/parse/the_util.c			\
			src/parse/the_rules.c			\
			src/parse/the_rules_bis.c		\
			src/parse/the_rules_sub.c		\
			src/parse/the_globbing.c

SRC_BUILTIN	=	src/builtin/the_alias.c			\
			src/builtin/the_var_utils.c		\
			src/builtin/the_cd.c			\
			src/builtin/the_env.c			\
			src/builtin/the_history.c		\
			src/builtin/the_redo.c			\
			src/builtin/the_exit.c			\
			src/builtin/builtin.c			\
			src/builtin/where_which.c		\
			src/builtin/echo/backslash.c		\
			src/builtin/echo/the_echo.c		\
			src/builtin/echo/echo_show.c

SRC_EXEC	=	src/exec/the_fd_config.c		\
			src/exec/the_exe.c			\
			src/exec/dollar.c			\
			src/exec/exe_redi.c			\
			src/exec/exe.c				\
			src/exec/run_simp.c			\
			src/exec/run_simp_sub.c			\
			src/exec/run_utils.c

SRC_TERM	=	src/termcaps/read_file.c		\
			src/termcaps/termcaps.c			\
			src/termcaps/prompt.c			\
			src/termcaps/free_termline.c		\
			src/termcaps/char_manip.c		\
			src/termcaps/ctrl_handeling_one.c	\
			src/termcaps/ctrl_handeling_two.c	\
			src/termcaps/ctrl_handeling_three.c	\
			src/termcaps/key_handeling.c		\
			src/termcaps/init_line.c		\
			src/termcaps/checks.c

SRC_MAIN	=	src/the_shell_sub.c			\
			src/utils_for.c 			\
			src/main.c				\
			src/for_setup.c				\
			src/manage_input.c			\
			src/the_shell.c

OBJ_LIB		=	$(SRC_LIB:.c=.o)

OBJ_PARSE	=	$(SRC_PARSE:.c=.o)

OBJ_BUILTIN	=	$(SRC_BUILTIN:.c=.o)

OBJ_EXEC	=	$(SRC_EXEC:.c=.o)

OBJ_TERM	=	$(SRC_TERM:.c=.o)

OBJ_MAIN	=	$(SRC_MAIN:.c=.o)

ECHO_LIB	=	$(SRC_LIB:.c=.o) \


ECHO_PARSE:
			@echo "$(GREEN)\t>> PARSER COMPILATION SUCCESS\n$(WHITE)"

ECHO_BUILTIN:
			@echo "$(GREEN)\t>> BUILTIN COMPILATION SUCCESS\n$(WHITE)" \

ECHO_EXEC:
			@echo "$(GREEN)\t>> EXEC COMPILATION SUCCESS\n$(WHITE)" \

ECHO_TERM:
			@echo "$(GREEN)\t>> TERMCAPS COMPILATION SUCCESS\n$(WHITE)" \

ECHO_MAIN:
			@echo "$(GREEN)\t>> MAIN COMPILATION SUCCESS\n$(WHITE)" \

NAME	=	42sh

CFLAGS	+=	-W -Wall -Wextra -Werror -I ./include -lncurses

all:		$(NAME)

$(NAME):	$(OBJ_LIB) ECHO_PARSE $(OBJ_PARSE) ECHO_PARSE $(OBJ_BUILTIN) ECHO_BUILTIN $(OBJ_EXEC) ECHO_EXEC $(OBJ_TERM) ECHO_TERM $(OBJ_MAIN) ECHO_MAIN
		$(CC) -o $(NAME) $(OBJ_LIB) $(OBJ_PARSE) $(OBJ_BUILTIN) $(OBJ_EXEC) $(OBJ_TERM) $(OBJ_MAIN) $(CFLAGS)
		@echo "$(YELLOW)\t>> LINKING SUCCESS\n$(WHITE)"

clean:
		$(RM) $(OBJ_LIB) $(OBJ_PARSE) $(OBJ_BUILTIN) $(OBJ_EXEC) $(OBJ_TERM) $(OBJ_MAIN)
		@echo "$(RED)\t>> DELETING OBJECTS SUCCESS\n$(WHITE)"

fclean:		clean
		$(RM) $(NAME)
		@echo "$(RED)\t>> DELETING EXECUTABLE AND OBJECTS SUCCESS\n$(WHITE)"

re:		fclean all
