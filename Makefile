.PHONY:
build:
	zip -r release.zip contents

.PHONY:
clean:
	-rm release.zip
