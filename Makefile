DOCKER_CMD = docker run --rm -v ./src:/src -v ./dist:/dist latex-compiler:latest /bin/bash -c

.PHONY: all build satzung geschaeftsordnung beitragsordnung

all: satzung geschaeftsordnung beitragsordnung

build:
	docker build -t latex-compiler:latest .

satzung:
	$(DOCKER_CMD) "pdflatex -output-directory /dist /src/Satzung.tex && pdflatex -output-directory /dist /src/Satzung.tex"

geschaeftsordnung:
	$(DOCKER_CMD) "pdflatex -output-directory /dist /src/Geschaeftsordnung.tex && pdflatex -output-directory /dist /src/Geschaeftsordnung.tex"

beitragsordnung:
	$(DOCKER_CMD) "pdflatex -output-directory /dist /src/Beitragsordnung.tex && pdflatex -output-directory /dist /src/Beitragsordnung.tex"
