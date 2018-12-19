all:
	pdflatex OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.tex && bibtex OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.aux && pdflatex OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.tex && pdflatex OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.tex
clean:
	rm OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.aux OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.bbl OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.blg OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.log OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.out OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.spl
proper: clean
	rm OE-2018-OFW13-L.Gamet.et.al_Bubble_benchmark.pdf
distrib:
	tar zcvf OE-2018-Paper_Hysing_benchmark.tar.gz OE*.tex *.bst *.sty references.bib `grep includegraphics OE*.tex | sed -e 's/[{}]/ /g' | awk '{print $$NF}'`
