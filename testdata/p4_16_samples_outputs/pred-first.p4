#include <core.p4>

control empty();
package top(empty e);
control Ing() {
    bool b;
    bit<32> a;
    action cond() {
        b = true;
        if (b) {
            a = 32w5;
        } else {
            a = 32w10;
        }
    }
    apply {
        cond();
    }
}

top(Ing()) main;
