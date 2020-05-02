#include "CAdder.h"

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

void adder_handler_add(adder_t adder, int32_t a, int32_t b, void* context, adder_handler_t handler) {
    handler(context, adder->add(a, b));
}
