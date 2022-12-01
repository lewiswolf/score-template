#!/bin/bash

# build all .tex files
pdflatex --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error index.tex

# delete all junk files