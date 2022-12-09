#!/bin/bash

# build all .tex files
for f in *
do
	case $f in
	*.tex)
		xelatex --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error $f
		xelatex --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error $f
		;;
	*)
		continue
		;;
	esac 
done

# delete all junk files
for f in *
do
	case $f in
	*.aux|*.log|*.out|*synctex.gz)
		rm $f
		;;
	*)
		continue
		;;
	esac 
done