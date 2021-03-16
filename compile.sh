#!/bin/bash
[ -d build ] && rm -rf build
mkdir build && latexmk -xelatex -outdir=build hstream-release.tex
if [ $? -eq 0 ]
then
    xdg-open build/hstream-release.pdf
fi
