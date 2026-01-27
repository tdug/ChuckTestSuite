@import "Chumpinate"

// instantiate a Chumpinate package
"TestSuite" => string pkgName;
Package pkg(pkgName);

// add our metadata here
["Tom Dugovic"] => pkg.authors;

// "https://awesome.com" => pkg.homepage;
"https://github.com/tdug/chuck_test" => pkg.repository;

"A small suite for testing." => pkg.description;
"MIT" => pkg.license;

["assert", "test", "suite"] => pkg.keywords;

"./" => pkg.generatePackageDefinition;

// Now we need to define a specific PackageVersion and all the associated files and metadata
PackageVersion ver(pkgName, "0.0.1");

// what is the oldest version of ChucK this package will run on?
"1.5.5.0" => ver.languageVersionMin;
// optionally, we can also define a maximum compatible version of ChucK
// "1.5.5.0" => ver.languageVersionMin;

// Because this is a ChucK file (and not a ChuGin, which is a complied
// binary, this package is compatible with any operating systems and
// all CPU architectures.
"any" => ver.os;
"all" => ver.arch;

// add our package's files
ver.addFile("TestSuite.ck");
ver.addFile("src/Assert.ck", "src");
ver.addFile("src/TestCase.ck", "src");
ver.addFile("src/TestRunner.ck", "src");

// add our example, this will be stored in the package's `_examples` directory.
ver.addExampleFile("examples/AdderTestCase.ck");
ver.addExampleFile("examples/AdvanceTimeTestCase.ck");
ver.addExampleFile("examples/TestRunner.ck");

// zip up all our files into TestSuite.zip, and tell Chumpinate what URL
// this zip file will be located at.
ver.generateVersion("./", pkgName, "https://localhost/TestSuite/releases/0.0.1/TestSuite.zip");

// pGenerate a version definition json file, stores this in "TestSuite/<VerNo>/version.json"
ver.generateVersionDefinition("version", "./");