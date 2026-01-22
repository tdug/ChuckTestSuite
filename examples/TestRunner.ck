@import "TestSuite";
@import "AdderTestCase.ck";

TestRunner runner;

runner.add(new AdderTestCase());

runner.runAll();