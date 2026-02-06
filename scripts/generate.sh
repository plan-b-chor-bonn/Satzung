#/bin/bash

docker run --rm -v ./src:/src -v ./dist:/dist latex-compiler:latest /bin/bash -c "pdflatex -output-directory /dist /src/Geschaeftsordnung.tex && pdflatex -output-directory /dist /src/Geschaeftsordnung.tex"

docker run --rm -v ./src:/src -v ./dist:/dist latex-compiler:latest /bin/bash -c "pdflatex -output-directory /dist /src/Satzung.tex && pdflatex -output-directory /dist /src/Satzung.tex"

echo "Done."
exit 0;
