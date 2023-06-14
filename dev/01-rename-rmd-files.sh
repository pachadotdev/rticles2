#!/bin/bash

# list all Rmd files inside inst/
RMD_FILES=$(find inst/ -name "*.Rmd")

# rename all Rmd files to qmd
for f in $RMD_FILES; do
  mv -- "$f" "${f%.Rmd}.qmd"
done

mv inst/rmarkdown inst/quarto
