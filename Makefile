.PHONY:
build:
	# get tag from current commit id.
	git tag -l --contains `git show -s --format=%H` > contents/version
	# Set "dev" to contents/version, If contents/version is zero size file.
	if [ ! -s contents/version ]; then echo "dev" > contents/version; fi
	zip -r release.zip contents

.PHONY:
clean:
	-rm release.zip
