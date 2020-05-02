#ifdef __cplusplus
extern "C" {
#endif

typedef struct adder* adder_t;

adder_t adder_construct();
void adder_destruct(adder_t adder);
int adder_add(adder_t adder, int a, int b);

#ifdef __cplusplus
}
#endif
