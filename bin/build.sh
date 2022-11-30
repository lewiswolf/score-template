pdflatex --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error index.tex
rm index.aux
rm index.log
rm index.synctex.gz