/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 * name:hengyue kang
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{

    if (N == 32)
    {
        // a cache_line store 8 integers,a cache store 256 integers
        // a array==4 caches,A[8*i] conflicts with B[8*i]
        // 8 tmp store A in register,and get B to modify
        for(int row=0;row<N;row+=8)
        {
            for(int col=0;col<M;col+=8)
            {
                for(int b_row=row;b_row<row+8;b_row++)
                {
                    int tmp1=A[b_row][col];
                    int tmp2=A[b_row][col+1];
                    int tmp3=A[b_row][col+2];
                    int tmp4=A[b_row][col+3];
                    int tmp5=A[b_row][col+4];
                    int tmp6=A[b_row][col+5];
                    int tmp7=A[b_row][col+6];
                    int tmp8=A[b_row][col+7];
                    B[col][b_row]=tmp1;
                    B[col+1][b_row]=tmp2;
                    B[col+2][b_row]=tmp3;
                    B[col+3][b_row]=tmp4;
                    B[col+4][b_row]=tmp5;
                    B[col+5][b_row]=tmp6;
                    B[col+6][b_row]=tmp7;
                    B[col+7][b_row]=tmp8;
                    // for(int b_col=col;b_col<col+8;col++)
                    // {
                    //     B[b_col][b_row]=A[b_row][b_col];
                    // }
                }
                

                
            }
        }
    }
    else if(N==64)
    {
        for(int row=0;row<N;row+=8)
        {
            for(int col=0;col<M;col+=8)
            {
                for(int b_row=row;b_row<row+8;b_row++)
                {
                    int tmp1=A[b_row][col];
                    int tmp2=A[b_row][col+1];
                    int tmp3=A[b_row][col+2];
                    int tmp4=A[b_row][col+3];
                    int tmp5=A[b_row][col+4];
                    int tmp6=A[b_row][col+5];
                    int tmp7=A[b_row][col+6];
                    int tmp8=A[b_row][col+7];
                    B[col][b_row]=tmp1;
                    B[col+1][b_row]=tmp2;
                    B[col+2][b_row]=tmp3;
                    B[col+3][b_row]=tmp4;
                    B[col+4][b_row]=tmp5;
                    B[col+5][b_row]=tmp6;
                    B[col+6][b_row]=tmp7;
                    B[col+7][b_row]=tmp8;
                }
                

                
            }
        }

    }
    else
    {
        for(int i=0;i<N;i+=16){
            for(int j=0;j<M;j+=16){
                for(int k=i;k<i+16&&k<N;k++){
                    for(int h=j;h<j+16&&h<M;h++){
                        B[h][k]=A[k][h];
                    }
                }
            }
        }
    }
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; j++)
        {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; ++j)
        {
            if (A[i][j] != B[j][i])
            {
                return 0;
            }
        }
    }
    return 1;
}
