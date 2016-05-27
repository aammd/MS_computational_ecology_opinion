SOURCE=ms.md
TYPE=draft# alt. value: draft | preprint
TITLE=computationalecology
MARKED= plmt/$(TITLE)_temp.md
PFLAGS= --variable=$(TYPE) --filter pandoc-citeproc
OUTPUT= $(TITLE)_$(TYPE)_version.pdf
BIB=default.json

PHONY: all prepare

prepare:
	chmod +x plmt/*.{sh,py}

all: prepare $(OUTPUT)

clean:
	rm $(MARKED)
	rm plmt/bib.keys

$(BIB): $(SOURCE)
	node plmt/index.js $(SOURCE)

$(MARKED): $(SOURCE)
	# Removes critic marks
	./plmt/critic.sh $< $@
	# Get yaml
	grep -Pzo '\-\-\-\n((.+)\n)+\-\-\-' $@ > paper.yaml
	# Replaces figures marks
	./plmt/figures.py $@ paper.yaml $(TYPE)
	mv $@_NEW $@
	# Remove yaml
	rm paper.yaml

$(OUTPUT): $(MARKED)
	pandoc $< -o $@ $(PFLAGS) --template plmt/plmt.tex
	rm $(MARKED)
