VERSION ?= 0.0.1

.PHONY: build install test

build:
	chuck --silent build-pkg.ck

install:
	chump install-local TestSuite/package.json TestSuite/$(VERSION)/version.json TestSuite.zip

test:
	chuck --silent examples/TestRunner.ck

default: build