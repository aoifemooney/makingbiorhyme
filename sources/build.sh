#!/bin/sh
set -e


echo "Build with gftools builder"
gftools builder config.yaml

echo "Build BioRhyme Expanded"
fonttools varLib.instancer "../fonts/variable/BioRhyme[wdth,wght].ttf" wdth=200 --update-name-table -o "../fonts/variable/BioRhymeExpanded[wght].ttf"

echo "Fix instance"
gftools fix-instances ../fonts/variable/BioRhymeExpanded[wght].ttf --inplace

echo "Complete"