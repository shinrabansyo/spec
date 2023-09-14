all: spec.html spec.pdf

spec.html: spec.adoc
	asciidoctor -r asciidoctor-diagram ./spec.adoc

spec.pdf: spec.adoc
	asciidoctor-pdf -r asciidoctor-diagram ./spec.adoc

.PHONY: clean

clean:
	rm -rf *.svg *.html *.pdf .asciidoctor/