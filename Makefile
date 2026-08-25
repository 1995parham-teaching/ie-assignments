# Build the Internet Engineering assignments with TeX Live.
#
# Every assignment lives in src/<name>/main.tex and is built into
# build/<name>.pdf. latexmk runs from src/, because the assignments refer to
# the class as ../assignment and the class refers to the fonts as ../fonts/;
# both are resolved relative to that directory.

LATEXMK ?= latexmk
LATEXMKFLAGS ?= -xelatex -shell-escape -halt-on-error -interaction=nonstopmode

ASSIGNMENTS := $(patsubst src/%/main.tex,%,$(wildcard src/*/main.tex))
PDFS := $(patsubst %,build/%.pdf,$(ASSIGNMENTS))

.PHONY: all
all: $(PDFS)

build/%.pdf: src/%/main.tex assignment.cls $(wildcard fonts/*.ttf)
	@mkdir -p build
	cd src && $(LATEXMK) $(LATEXMKFLAGS) -jobname=$* -outdir=../build $*/main.tex

.PHONY: list
list:
	@for assignment in $(ASSIGNMENTS); do echo "$$assignment"; done

.PHONY: clean
clean:
	cd src && $(LATEXMK) -outdir=../build -C >/dev/null 2>&1 || true
	rm -rf build src/_minted-*

.PHONY: help
help:
	@echo "make          build every assignment into build/"
	@echo "make list     list the assignments"
	@echo "make clean    remove build artefacts"
