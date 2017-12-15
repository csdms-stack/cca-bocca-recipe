#!/bin/bash

LANGS="c cxx f77 f90 python java"

bocca create project test
cd test

for lang in $LANGS; do
  bocca create component $lang --language=$lang
done

./configure --prefix=$(pwd)/_inst
make all install
