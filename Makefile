.PHONY:
build:
	git tag -l --contains `git show -s --format=%H` > contents/version
	if [ ! -s contents/version ]; then echo "dev" > contents/version; fi
	zip -r release.zip contents

.PHONY:
clean:
	-rm release.zip
