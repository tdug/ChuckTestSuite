@import "TestSuite";
@import "AdderTestCase.ck";
@import "AdvanceTimeTestCase.ck";

TestRunner runner;

runner.add(new AdderTestCase());
runner.add(new AdvanceTimeTestCase());

runner.runAll();