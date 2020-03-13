export AWS_DEFAULT_REGION = us-west-1


update : src/contrib/PACKAGES
	aws s3 sync src s3://njnmverse/src
	aws s3

src/contrib/PACKAGES : $(wildcard **/*.tar.gz)
	R -e 'tools::write_PACKAGES("src/contrib")'

clean :
	rm src/contrib/PACKAGE*

