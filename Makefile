FILE=compecol
SOURCE=$(FILE).md
BIB=references.json
CSL=.plmt/plab.csl
MARKED= ./.plmt/temp.md
PFLAGS= --filter pandoc-citeproc
TAG=submitted

PHONY: all

all: $(FILE)_preprint.pdf $(FILE)_draft.pdf $(FILE).odt

clean:
	rm $(MARKED)

.metadata.yaml: infos.yaml authors.yaml ABSTRACT
	node .plmt/metadata.js
	@sed -i '1s/^/---\n/' $@
	@echo "..." >> $@

$(MARKED): $(SOURCE) .metadata.yaml
	node .plmt/critic.js $< $@

# $(OUTPUT): $(MARKED)
$(FILE)_preprint.pdf: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/preprint.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

$(FILE)_draft.pdf: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/draft.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

$(FILE).odt: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/opendocument.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

revised.md:
	cp $(SOURCE) temp.md
	git checkout $(TAG) $(SOURCE)
	mv $(SOURCE) $@
	mv temp.md $(SOURCE)

diff.pdf: revised.md
	make SOURCE=$< EXT=tex TITLE=old OUTPUT=old.tex
	make SOURCE=$(SOURCE) EXT=tex TITLE=new OUTPUT=new.tex
	latexdiff -t CTRADITIONAL old.tex new.tex > diff.tex
	latexmk -pdf diff.tex
	latexmk -c
	pdf2ps diff.pdf diff.ps
	ps2pdf13 diff.ps diff.pdf
	rm diff.ps
	rm {old,new,diff}.tex
