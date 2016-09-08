all:
	pdflatex lecture.tex
	cat lecture.tex | sed s/\\documentclass\{beamer\}/\\documentclass\[handout\]\{beamer\}/ > handout.tex
	pdflatex handout.tex