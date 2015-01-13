SOURCE=fosdem2015-cockroach-lightning.md
PDF=$(SOURCE:md=pdf)
REVEALJS=$(SOURCE:md=html)

all: ${REVEALJS} ${PDF}

${REVEALJS}: ${SOURCE} Makefile
	pandoc -V transition=fade -V theme=sky -t revealjs -s ${SOURCE} -o ${REVEALJS}

${PDF}: ${SOURCE} Makefile
	pandoc -t beamer -s ${SOURCE} -o ${PDF} --slide-level 2 -V theme:Hannover
