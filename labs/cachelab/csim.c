#include "cachelab.h"
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <getopt.h>
/*
name:hengyue kang
*/
static int hit_count, miss_count, eviction_count, S, E, B;
static char filename[1024];
struct cache_line
{
    int valid, lru_counter;
    int64_t tag; // stdint
};
static struct cache_line **cache;

int main(int argc, char **argv)
{
    //handle command line args
    int opt,verbose;
    while (-1 != (opt = getopt(argc, argv, "h::v::s:E:b:t:")))
    {
        switch (opt)
        {

        case 'h':
        {
            printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n \
            Options:\n \
            -h         Print this help message.\n \
            -v         Optional verbose flag.\n \
            -s <num>   Number of set index bits.\n \
            -E <num>   Number of lines per set.\n \
            -b <num>   Number of block offset bits.\n \
            -t <file>  Trace file.\n\n \
        Examples:\n \
            linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n \
            linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
            return 0;
        }
        case 'v':
            verbose = 1;
            break;

        case 's':
            S = atoi(optarg); // string to int
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            B = atoi(optarg);
            break;
        case 't':
        {
            if (strlen(optarg) >= 1024)
            {
                printf("too long file name!\n");
                exit(-1);
            }
            else
            {
                strcpy(filename, optarg);
                break;
            }
        }

        default:

            printf("wrong argument!\n");
            exit(-1);
        }
    }

    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
