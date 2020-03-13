export AWS_DEFAULT_REGION = us-west-1
export S3BUCKET = njnmverse


update : src/contrib/PACKAGES
	aws s3 sync src s3://${S3BUCKET}/src

src/contrib/PACKAGES : $(wildcard **/*.tar.gz)
	R -e 'tools::write_PACKAGES("src/contrib")'

clean :
	rm src/contrib/PACKAGE*

