#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

typedef struct adder* adder_t;

adder_t adder_construct();
void adder_destruct(adder_t adder);

int adder_add(adder_t adder, int32_t a, int32_t b);

typedef void (*adder_handler_t)(void* context, int32_t result);
void adder_handler_add(adder_t adder, int32_t a, int32_t b, void* context, adder_handler_t handler);

#ifdef __cplusplus
}
#endif
