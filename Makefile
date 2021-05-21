BASE = SecureProcessor
LATEX = xelatex
BIBTEX = bibtex
TEX = ${BASE}.tex
PDF = ${BASE}.pdf
BBL = ${BASE}.bbl
BLG = ${BASE}.blg

LOG = ${BASE}.log
AUX = ${BASE}.aux

.PHONY: all clean view

all: ${PDF}

${PDF}: ${TEX} ${BBL} ${BLG}
	${LATEX} $<
	${LATEX} $<

${BBL}: ${AUX}
	${BIBTEX} ${AUX}

${AUX}: ${TEX}
	${LATEX} ${TEX}

clean:
	@rm -f ${LOG} ${AUX} ${BBL} ${BLG}
