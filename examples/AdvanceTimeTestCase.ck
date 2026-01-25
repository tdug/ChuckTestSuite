@import "TestSuite";

public class AdvanceTimeTestCase extends TestCase {
    "AdvanceTimeTestCase" => name;

    fun void test() {
        testAdvanceTime();
    }
    
    fun void testAdvanceTime() {
        now => time startTime;
        1::ms => now;
        now - startTime => dur elapsed;
        Assert.approx(elapsed / ms, 1, 0.001, "Time should have advanced by 1 ms");
    }
}

/* Run a TestCase directly
AdvanceTimeTestCase test;
test.run();
*/