#!/bin/bash

# list all qmd files in inst/
QMD_FILES=$(find inst/ -name "*.qmd")

# replace multiple \n with single \n
for f in $QMD_FILES; do
  sed -i -e '/^$/N;/^\n$/D' $f
done

# replace keep_tex with keep-tex
for f in $QMD_FILES; do
  sed -i -e 's/keep_tex/keep-tex/g' $f
done

# replace citation_package with citation-package
for f in $QMD_FILES; do
  sed -i -e 's/citation_package/citation-package/g' $f
done
