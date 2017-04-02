build:
	R CMD build genthat

install: build
	R CMD INSTALL genthat_0.1.0.tar.gz

test:
	cd genthat
	Rscript tests/testthat.R

