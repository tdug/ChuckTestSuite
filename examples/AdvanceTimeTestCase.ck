@import "TestSuite";

class Adder {
    fun static int add(int a, int b) {
        return a + b;
    }
}

public class AdvanceTimeTestCase extends TestCase {
    "AdvanceTimeTestCase" => name;

    fun void test() {
        testAdvanceTime();
    }
    
    fun void testAdvanceTime() {
        now => time startTime;
        1::samp => now;
        now => time endTime;
        endTime - startTime => dur elapsed;
        Assert.equals(elapsed / samp, 1::samp / samp, "Time should have advanced by 1 sample");
    }
}

/* Run a TestCase directly
AdvanceTimeTestCase test;
test.run();
*/