default: wyq-cn.pdf wyq-en.pdf resume.pdf

resume.pdf: wyq-en.pdf
	cp $^ resume.pdf

wyq-cn.pdf: wyq-cn.tex
	xelatex $^

wyq-en.pdf: wyq-en.tex
	pdflatex $^

clean:
	rm -rf *.pdf
