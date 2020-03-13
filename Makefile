

src/contrib/PACKAGES : $(wildcard **/*.tar.gz)
	R -e 'tools::write_PACKAGES("src/contrib")'

clean :
	rm src/contrib/PACKAGE*

