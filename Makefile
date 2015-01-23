SOURCE=fosdem2015-cockroach-lightning.md
PDF=$(SOURCE:md=pdf)
REVEALJS=$(SOURCE:md=html)

all: ${REVEALJS} ${PDF}

${PDF}: .${SOURCE} Makefile
	pandoc -t beamer -s .${SOURCE} -o ${PDF} --slide-level 2 -V theme:Hannover

.${SOURCE}: ${SOURCE}
	sed 's/^--[^-]*$$/----/' < ${SOURCE} > .${SOURCE}
