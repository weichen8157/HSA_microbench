#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include <libelf.h>
#include <iostream>
#include "vector_copy.h"
#include <time.h>

#define ITER 10000

static inline void tic(struct timespec *t1)
{
    clock_gettime(CLOCK_REALTIME, t1);
}

static inline double toc(char *str, struct timespec *t1, struct timespec *t2)
{
    long period = 0;

    clock_gettime(CLOCK_REALTIME, t2);
    period = t2->tv_nsec - t1->tv_nsec;
    if(period>0)
        period += (t2->tv_sec - t1->tv_sec) * 1000000000;
    else
        period += 1000000000 + (t2->tv_sec - t1->tv_sec - 1) * 1000000000;
    printf("\033[1;32m"); //Color Code - Green 
    printf("%s: %0.3lf ms", str, (double)period / 1000000.0);
    printf("\033[0;00m\n\n"); //Terminate Color Code
    return period;
}

int main(int argc, char **argv)
{
struct timespec timer_1, timer_2;
    double nano;
    int z;
	//Setup kernel arguments
	int* in=(int*)malloc(sizeof(int));
	int* out=(int*)malloc(sizeof(int));
    in[0]=0;
    out[0]=0;

        SNK_INIT_LPARM(lparm,1);
tic(&timer_1);
    for(z=0;z<ITER;z++){
        vcopy(in,out,lparm);
    }
nano = toc("Execution Period", &timer_1, &timer_2);

    printf("enqueue kernel=%d times out=%d\n",ITER,out[0]);
    printf("ns/enqueue=%.0fns\n",nano/ITER);

    if(out[0]==ITER)
         printf("PASS \n");
    else
         printf("INVALID out = %d \n",out[0]);


/*
	//Validate
	bool valid=true;
	int failIndex=0;
	for(int i=0; i<1024*1024; i++) {
		if(out[i]!=in[i]) {
			failIndex=i;
			valid=false;
			break;
		}
	}
	if(valid)
		printf("passed validation\n");
	else 
		printf("VALIDATION FAILED!\nBad index: %d\n", failIndex);
*/

	free(in);
	free(out);

    return 0;
}

