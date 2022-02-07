#include "cachelab.h"
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
/*
name:hengyue kang
*/
static int hit_count, miss_count, eviction_count, S, E, B,time_counter=0,b,s,verbose;
static char filename[1024],buffer[1024];//skip "I"
typedef struct
{
    int valid, lru_counter;
    unsigned long long tag; // stdint
} cache_line;
static cache_line **cache;

void print_verbose(char *s)
{
    if(verbose)
    {
        printf(" %s",s);
    }
}
// cache simulator
void operate_cache(unsigned long long add)
{
    unsigned long long set_index=(add>>b)&((1<<s)-1);
    unsigned long long line_tag=(add>>(b+s));
    for(int j=0;j<E;j++)
    {
        if(cache[set_index][j].valid==1&&cache[set_index][j].tag==line_tag)
        {
            
            print_verbose("hit");
            hit_count++;
            cache[set_index][j].lru_counter=time_counter;
            return;
        }
    }
    //not in cache
    print_verbose("miss");
    miss_count++;
    for(int j=0;j<E;j++)
    {
        if(cache[set_index][j].valid==0)
        {
            cache[set_index][j].valid=1;
            cache[set_index][j].tag=line_tag;
            cache[set_index][j].lru_counter=time_counter;
            return;
        }
    }
    // cache is full
    print_verbose("eviction");
    eviction_count++;
    int min_lru=cache[set_index][0].lru_counter,min_line=0;
    for(int j=1;j<E;j++)
    {
        if(cache[set_index][j].lru_counter<min_lru)
        {
            min_lru=cache[set_index][j].lru_counter;
            min_line=j;
        }
    }
    cache[set_index][min_line].tag=line_tag;
    cache[set_index][min_line].lru_counter=time_counter;
}

int main(int argc, char **argv)
{
    // handle command line args
    hit_count=miss_count=eviction_count=0;
    int opt;
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
        {
            s=atoi(optarg);
            S = 1 <<s; // string to int,S=2^s
            break;
        }

        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
        {
            b=atoi(optarg);
            B = 1 << b; // 2^b bytes a block
            break;
        }
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

    // allocate and init cache
    cache = (cache_line **)malloc(sizeof(cache_line *) * S);
    for (int i = 0; i < S; i++)
    {
        cache[i] = (cache_line *)malloc(sizeof(cache_line) * E);
        for (int j = 0; j < E; j++)
        {
            cache[i][j].valid=cache[i][j].lru_counter = cache[i][j].tag= 0;
        }
    }

    FILE *pFile = fopen(filename, "r"); // open file for read
    if(pFile==NULL)
    {
        printf("open trace file wrong!\n");
        exit(-1);
    }
    char identifier;
    unsigned long long  address;
    int size; // Reading lines like " M 20,1" or "L 19,3"

    while(fgets(buffer,1024,pFile))
    {
        if(buffer[0]=='I')
        {
            continue;
        }
        else
        {
            sscanf(buffer," %c %llx,%d",&identifier, &address, &size);
            if(verbose)
            {
                printf("%s",buffer);
            }
            switch (identifier)
            {
            case 'L':
                operate_cache(address);
                break;
            case 'M':
                operate_cache(address);//operate cache twice
            default:
                operate_cache(address);
                break;
            }
            time_counter++;
            if(verbose)
            {
                printf("\n");
            }
        }
        

    }


    fclose(pFile); // remember to close file when done

    for(int i=0;i<S;i++)
    {
        free(cache[i]);
    }
    free(cache);
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
