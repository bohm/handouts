texinputs := TEXINPUTS=.:macros//:
all: init santa local

init:
	${texinputs} pdfcsplain -ini -enc plain-utf8-cs.tex
santa:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Polacek, Svensson - Quasi-Polynomial Local Search for Restricted Max-Min Fair Allocation.tex"
local:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Cygan - Improved Approximation for 3-Dimensional Matching via Bounded Pathwidth Local Search.tex"
polytope:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Goemans, Rothvoss - Polynomiality for Bin Packing with a Constant Number of Item Types.tex"

clean:
	rm -f *.log *.pdf *.fmt *.aux

