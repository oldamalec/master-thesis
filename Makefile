NAME = DIP_Malec_Oldrich_2019.pdf

.PHONY:	all clean pdf $(NAME)

all: pdf

pdf:
	cd tex && arara base
	mv tex/base.pdf ./$(NAME)

debug: clean
	cd tex && latexmk -xelatex --shell-escape base
	mv tex/base.pdf ./$(NAME)

clean:
	git clean -Xf
