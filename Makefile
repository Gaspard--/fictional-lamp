##
## Makefile
##
## Made by Jakob Kellendonk
## Login   <kellen_j@epitech.net>
##
## Started on  Fri Nov 13 17:19:42 2015 Jakob Kellendonk
## Last update Sat Dec 10 17:13:16 2016 Jakob Kellendonk
##

CC =	g++

RM =	rm -f

CFLAGS +=	-W -Wextra -Wall
CFLAGS +=	-I./

CPPFLAGS +=	-W -Wextra -Wall
CPPFLAGS +=	-I./include -I. -std=c++11 -g3 -Ofast

LDFLAGS = `pkg-config --static --libs glfw3`

NAME = fictionalWindow

SRCS_C = gl3w.c

SRCS_CPP = 	source/main.cpp \

OBJS = 	$(SRCS_C:.c=.o) $(SRCS_CPP:.cpp=.o)

all: $(NAME)

$(NAME):$(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
