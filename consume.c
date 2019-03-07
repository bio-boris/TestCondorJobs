#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


#define PAGE_SZ (1<<12)

int main() {
    int i;
    int gb = 10; // memory to consume in GB
    int millisecondsToSleep = 60000;
    int secondsToSleep =  millisecondsToSleep * 1000;

    for (i = 0; i < ((unsigned long)gb<<30)/PAGE_SZ ; ++i) {
        void *m = malloc(PAGE_SZ);
        if (!m)
            break;
        memset(m, 0, 1);
    }
    printf("allocated %lu MB\n", ((unsigned long)i*PAGE_SZ)>>20);
    getchar();

    usleep( secondsToSleep );
    return 0;
}
