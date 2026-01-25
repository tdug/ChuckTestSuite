@import "TestCase.ck";

public class TestRunner {
    TestCase tests[0];

    fun void add(TestCase t) {
        tests << t;
    }

    fun void runAll() {
        <<< "=== RUNNING TESTS ===" >>>;
        for (0 => int i; i < tests.size(); i++) {
            spork ~ tests[i].run();
            1::samp => now; // allow shred to execute
        }
        <<< "=== DONE ===" >>>;
    }
}