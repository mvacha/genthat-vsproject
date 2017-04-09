build:
	R CMD build genthat --no-manual --no-build-vignettes

install:
	R CMD INSTALL genthat --no-docs --no-html --no-multiarch --with-keep.source

test: install
	cd genthat
	Rscript tests/testthat.R

