#ifdef __cplusplus
extern "C" {
#endif

typedef struct adder adder;

adder* create_adder();
int add(adder* adder, int a, int b);
void free_adder(adder* adder);

#ifdef __cplusplus
}
#endif
