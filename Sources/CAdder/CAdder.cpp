#include "CAdder.h"
#include <string>
#include <iostream>

struct adder {
    static const int32_t add(int32_t a, int32_t b) {
        return a + b;
    }
};


adder* create_adder() {
    return new adder;
}

int add(adder* adder, int32_t a, int32_t b) {
    return adder->add(a, b);
}

void free_adder(adder* adder) {
    delete adder;
}
