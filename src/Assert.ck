public class Assert {
    fun static void isTrue(int condition, string msg) {
        if (!condition) {
            <<< "[FAIL]", msg >>>;
            me.exit();
        }
    }

    fun static void equals(float a, float b, string msg) {
        if (a != b) {
            <<< "[FAIL]", msg, "expected:", a, "got:", b >>>;
            me.exit();
        }
    }

    fun static void equals(dur a, dur b, string msg) {
        if (a != b) {
            <<< "[FAIL]", msg, "expected:", a, "got:", b >>>;
            me.exit();
        }
    }

    fun static void approx(float a, float b, float eps, string msg) {
        if (Math.fabs(a - b) > eps) {
            <<< "[FAIL]", msg, "expected:", a, "got:", b >>>;
            me.exit();
        }
    }
}
