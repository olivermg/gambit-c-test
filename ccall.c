#include <stdio.h>

#define ___VERSION 406006
#include <gambit.h>

void doinc();

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
	doinc();
	printf("end\n");
	___cleanup();

	return 0;
}

