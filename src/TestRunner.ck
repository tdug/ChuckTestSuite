@import "TestCase.ck";

public class TestRunner {
    TestCase tests[0];

    fun void add(TestCase t) {
        tests << t;
    }

    fun void runAll() {
        <<< "=== RUNNING TESTS ===" >>>;
        for (TestCase test : tests) {
            spork ~ test.run() @=> Shred s;
            1::ms => now;
            while(!s.done()) { 1::ms => now; }
        }
        <<< "=== DONE ===" >>>;
    }
}