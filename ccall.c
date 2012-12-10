#include <stdio.h>
#include "struct.h"

#define ___VERSION 406006
#include <gambit.h>

int doinc(int);
struct mystruct* makestruct(int, int);

#define SCHEME_LIBRARY_LINKER ____20_main__

___BEGIN_C_LINKAGE
extern ___mod_or_lnk SCHEME_LIBRARY_LINKER (___global_state_struct*);
___END_C_LINKAGE

int main(int argc, char* argv[])
{
	___setup_params_struct params;
	___setup_params_reset(&params);
	params.version = ___VERSION;
	params.linker = SCHEME_LIBRARY_LINKER;

	___setup(&params);
	printf("start\n");

	int result = doinc(42);

	struct mystruct* s = makestruct(3, 5);

	printf("end (result: %d)\n", result);
	printf("mystruct (%p): (%d, %d)\n", s, s->a, s->b);
	___cleanup();

	return 0;
}

