texinputs := TEXINPUTS=.:macros//:
all: init khotmosh spring santa norms polytope sdp_lbs sdp_correlation local rothvoss_discrepancy sched_hierarchies

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
sched_hierarchies:
	${texinputs} pdflatex "Levey, Rothvoss - A Lasserre-based 1+eps-approximation for Pm,prec,p_j=1,Cmax.tex"
rothvoss_discrepancy:
	${texinputs} pdflatex "Rothvoss - Constructive discrepancy minimization for convex sets.tex"
polytope:
	${texinputs} pdfcsplain -fmt plain-utf8-cs "Goemans, Rothvoss - Polynomiality for Bin Packing with a Constant Number of Item Types.tex"
spring:
	${texinputs} pdflatex "Spring School - PCP Theorem And Its Applications.tex"
khotmosh:
	${texinputs} pdflatex "Khot, Moshkovitz - NP-hardness of Approximately Solving Linaer Equations over Reals.tex"

clean:
	rm -f *.log *.pdf *.fmt *.aux

