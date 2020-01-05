NAME = DIP_Malec_Oldrich_2020.pdf

.PHONY:	all pdf open debug clean $(NAME)

all: pdf

pdf:
	cd tex && arara base
	mv tex/base.pdf ./$(NAME)

open: pdf
	cmd.exe /C start $(NAME)

debug: clean
	cd tex && latexmk -xelatex --shell-escape base
	mv tex/base.pdf ./$(NAME)

clean:
	git clean -Xf
