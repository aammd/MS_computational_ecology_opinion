SOURCE=ms.md
TYPE=draft# alt. value: preprint
TITLE=computationalecology
MARKED= plmt/$(TITLE)_temp.md
PFLAGS= --variable=$(TYPE) --filter pandoc-citeproc
OUTPUT= $(TITLE)_$(TYPE)_version.pdf
BIB=default.json

PHONY: all

figures/flow.pdf: figures/flow.dot
	dot -Tpdf figures/flow.dot -o figures/flow.pdf

all: $(OUTPUT)

clean:
	rm $(MARKED)

$(BIB): $(SOURCE)
	node plmt/index.js $(SOURCE)

$(MARKED): $(SOURCE)
	node plmt/critic.js $< plmt/tmp1
	node plmt/figures.js plmt/tmp1 plmt/tmp2
	node plmt/tables.js plmt/tmp2 $@
	rm plmt/tmp*

$(OUTPUT): $(MARKED) figures/flow.pdf
	pandoc $< -o $@ $(PFLAGS) --template plmt/plmt.tex plmt.yaml
	rm $(MARKED)
