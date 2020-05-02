#include "CAdder.h"
#include <string>
#include <iostream>

struct adder {
    static const int32_t add(int32_t a, int32_t b) {
        return a + b;
    }
};


adder_t adder_construct() {
    return new adder;
}

void adder_destruct(adder_t adder) {
    delete adder;
}

int adder_add(adder_t adder, int32_t a, int32_t b) {
    return adder->add(a, b);
}

