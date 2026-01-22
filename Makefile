VERSION ?= 0.0.1

.PHONY: build install

build:
	chuck build-pkg.ck

install:
	chump install-local TestSuite/package.json TestSuite/$(VERSION)/version.json TestSuite.zip

default: build