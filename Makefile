TEX := docs/anschluesse/schraubenverbindungen.tex
BUILD := build
DIST := dist
PDF := schraubenverbindungen.pdf

.PHONY: all clean

all: $(DIST)/$(PDF)

$(DIST)/$(PDF): $(TEX)
	mkdir -p $(BUILD) $(DIST)
	lualatex -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD) $(TEX)
	lualatex -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD) $(TEX)
	cp $(BUILD)/$(PDF) $(DIST)/$(PDF)

clean:
	rm -rf $(BUILD)
