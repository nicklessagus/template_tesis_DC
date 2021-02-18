.PHONY: clean all

FILENAME := main
OUTPUT := Tesis-Cosme-Fulanito
LATEX := pdflatex
BIB := bibtex

LATEXFLAGS-MAIN := -synctex=1 -interaction=nonstopmode -jobname=${OUTPUT}
LATEXFLAGS-CHAPTERS := -synctex=1 -interaction=nonstopmode 

PDFS := ${FILENAME}.pdf


all: clean $(PDFS)

%.pdf: %.tex
	$(LATEX) $(LATEXFLAGS-MAIN) $<
	$(LATEX) $(LATEXFLAGS-MAIN) $<
	$(BIB) ${OUTPUT}
	$(LATEX) $(LATEXFLAGS-MAIN) $<
	$(LATEX) $(LATEXFLAGS-MAIN) $<

chapter-1:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-1 ./chapters/chapter-1.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-1 ./chapters/chapter-1.tex
	$(BIB) ./chapters/chapter-1
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-1 ./chapters/chapter-1.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-1 ./chapters/chapter-1.tex

chapter-2:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-2 ./chapters/chapter-2.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-2 ./chapters/chapter-2.tex
	$(BIB) ./chapters/chapter-2
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-2 ./chapters/chapter-2.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-2 ./chapters/chapter-2.tex

chapter-3:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-3 ./chapters/chapter-3.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-3 ./chapters/chapter-3.tex
	$(BIB) ./chapters/chapter-3
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-3 ./chapters/chapter-3.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-3 ./chapters/chapter-3.tex

chapter-4:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-4 ./chapters/chapter-4.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-4 ./chapters/chapter-4.tex
	$(BIB) ./chapters/chapter-4
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-4 ./chapters/chapter-4.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-4 ./chapters/chapter-4.tex

chapter-5:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-5 ./chapters/chapter-5.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-5 ./chapters/chapter-5.tex
	$(BIB) ./chapters/chapter-5
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-5 ./chapters/chapter-5.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-5 ./chapters/chapter-5.tex

chapter-6:
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-6 ./chapters/chapter-6.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-6 ./chapters/chapter-6.tex
	$(BIB) ./chapters/chapter-6
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-6 ./chapters/chapter-6.tex
	$(LATEX) $(LATEXFLAGS-CHAPTERS) -jobname=./chapters/chapter-6 ./chapters/chapter-6.tex

clean:
	rm -f ${OUTPUT}.pdf
	rm -f ${OUTPUT}.aux
	rm -f ${OUTPUT}.tdo
	rm -f ${OUTPUT}.log
	rm -f ${OUTPUT}.bbl
	rm -f ${OUTPUT}.blg
	rm -f ${OUTPUT}.toc
	rm -f ${OUTPUT}.out
	rm -f ${OUTPUT}.synctex.gz
	rm -f ./chapters/*.pdf
	rm -f ./chapters/*.aux
	rm -f ./chapters/*.tdo
	rm -f ./chapters/*.log
	rm -f ./chapters/*.bbl
	rm -f ./chapters/*.blg
	rm -f ./chapters/*.toc
	rm -f ./chapters/*.out
	rm -f ./chapters/*.synctex.gz
	rm -f ./*.aux
	rm -f ./*.tdo
	rm -f ./*.log
	rm -f ./*.bbl
	rm -f ./*.blg
	rm -f ./*.toc
	rm -f ./*.out
	rm -f ./main.pdf
