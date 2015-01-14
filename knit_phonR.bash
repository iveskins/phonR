# /bin/bash
Rscript -e "knitr::knit('phonR.Rmd')"   # phonR.Rmd > phonR.md
if (( $# > 0 )); then
	if [ $1 = "--plots" ]; then
		cd images
		for i in *.pdf; do 
			inkscape -f "$i" -d 72 -b "white" -e "$(basename $i .pdf).png"
		done
		cd ..
	fi
fi
python vignette_postprocessing.py       # phonR.md > index.md
Rscript -e "knitr::pandoc('index.md')"  # index.md > phonR.html
#python vignette_mathjax_resizer.py     # phonR.html > index.html
mv phonR.html index.html

# cleanup
rm *.pyc
rm index.md
rm phonR.md
#rm phonR.html
