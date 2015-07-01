texinputs := TEXINPUTS=.:macros//:
all: init spring santa norms polytope sdp_lbs sdp_correlation local

init:
	${texinputs} pdfcsplain -ini -enc plain-utf8-cs.tex
santa:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Polacek, Svensson - Quasi-Polynomial Local Search for Restricted Max-Min Fair Allocation.tex"
local:
	${texinputs} pdflatex "Cygan - Improved Approximation for 3-Dimensional Matching via Bounded Pathwidth Local Search.tex"
norms:
	${texinputs} pdflatex "Matoušek, Nikolov, Talwar - Factorization Norms and Hereditary Discrepancy.tex"
sdp_lbs:
	${texinputs} pdflatex "Lee, Raghavendra, Steurer - Lower Bounds on the Size of the SDP Relaxations.tex"
sdp_correlation:
	${texinputs} pdflatex "Barak, Raghavendra, Steurer - Rounding Semidefinite Programming Hierarchies via Global Correlation.tex"

polytope:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Goemans, Rothvoss - Polynomiality for Bin Packing with a Constant Number of Item Types.tex"
spring:
	${texinputs} pdflatex "Spring School - PCP Theorem And Its Applications.tex"

clean:
	rm -f *.log *.pdf *.fmt *.aux

