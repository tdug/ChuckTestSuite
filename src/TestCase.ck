public class TestCase {
    string name;

    fun void setUp() {}
    fun void tearDown() {}

    fun void run() {
        <<< "[RUN]", name >>>;
        setUp();
        test();
        tearDown();
        <<< "[PASS]", name >>>;
    }

    // override this
    fun void test() {
        <<< "[INFO]", "Method test() not overridden in", name >>>;
    }
}
