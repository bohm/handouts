texinputs := TEXINPUTS=.:macros//:
all: init santa local

init:
	${texinputs} pdfcsplain -ini -enc plain-utf8-cs.tex
santa:
	${texinputs} pdfcsplain -fmt plain-utf8-cs restricted_santa_claus.tex
local:
	${texinputs} pdfcsplain -fmt plain-utf8-cs 3d_matching_via_localsearch.tex

clean:
	rm -f *.log *.pdf *.fmt *.aux

