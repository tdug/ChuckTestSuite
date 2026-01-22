@import "TestSuite";

class Adder {
    fun static int add(int a, int b) {
        return a + b;
    }
}

public class AdderTestCase extends TestCase {
    "AdderTestCase" => name;

    fun void test() {
        testAdd();
    }
    
    fun void testAdd() {
        Adder.add(2, 3) => int result;
        Assert.equals(result, 5, "2 + 3 should equal 5");
    }
}

/* Run a TestCase directly
AdderTest adderTest;
adderTest.test();
*/