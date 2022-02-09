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
        for (int row = 0; row < N; row += 8)
        {
            for (int col = 0; col < M; col += 8)
            {
                for (int b_row = row; b_row < row + 8; b_row++)
                {
                    int tmp1 = A[b_row][col];
                    int tmp2 = A[b_row][col + 1];
                    int tmp3 = A[b_row][col + 2];
                    int tmp4 = A[b_row][col + 3];
                    int tmp5 = A[b_row][col + 4];
                    int tmp6 = A[b_row][col + 5];
                    int tmp7 = A[b_row][col + 6];
                    int tmp8 = A[b_row][col + 7];
                    B[col][b_row] = tmp1;
                    B[col + 1][b_row] = tmp2;
                    B[col + 2][b_row] = tmp3;
                    B[col + 3][b_row] = tmp4;
                    B[col + 4][b_row] = tmp5;
                    B[col + 5][b_row] = tmp6;
                    B[col + 6][b_row] = tmp7;
                    B[col + 7][b_row] = tmp8;
                    // for(int b_col=col;b_col<col+8;col++)
                    // {
                    //     B[b_col][b_row]=A[b_row][b_col];
                    // }
                }
            }
        }
    }
    else if (N == 64)
    {
        int tmp, k, a0, a1, a2, a3, a4, a5, a6, a7;
        // still 8*8 block(actually 4*8 most)
        // 4*8:less conflicts and make best use of cache line
        for (int row = 0; row < N; row += 8)
        {
            for (int col = 0; col < M; col += 8)
            {
                for (k = 0; k < 4; k++)
                {
                    // store top 4 lines in A
                    // A top left
                    a0 = A[k + row][col];
                    a1 = A[k + row][col + 1];
                    a2 = A[k + row][col + 2];
                    a3 = A[k + row][col + 3];

                    // copy
                    // A top right
                    a4 = A[k + row][col + 4];
                    a5 = A[k + row][col + 5];
                    a6 = A[k + row][col + 6];
                    a7 = A[k + row][col + 7];

                    // B top left(right positions,4*4)
                    B[col][k + row] = a0;
                    B[col + 1][k + row] = a1;
                    B[col + 2][k + row] = a2;
                    B[col + 3][k + row] = a3;

                    // copy
                    // B top right
                    B[col][k + 4 + row] = a4;
                    B[col + 1][k + 4 + row] = a5;
                    B[col + 2][k + 4 + row] = a6;
                    B[col + 3][k + 4 + row] = a7;
                }
                // block in diagonal can transpose in place!
                for (k = 0; k < 4; k++)
                {
                    // buffer 1 & 2
                    a0 = A[row + 4][col + k], a4 = A[row + 4][col + k + 4];
                    a1 = A[row + 5][col + k], a5 = A[row + 5][col + k + 4];
                    a2 = A[row + 6][col + k], a6 = A[row + 6][col + k + 4];
                    a3 = A[row + 7][col + k], a7 = A[row + 7][col + k + 4];
                    // make buffer1 correct(swap),transpose buffer2 in-place(in diagnol)
                    tmp = B[col + k][row + 4], B[col + k][row + 4] = a0, a0 = tmp;
                    tmp = B[col + k][row + 5], B[col + k][row + 5] = a1, a1 = tmp;
                    tmp = B[col + k][row + 6], B[col + k][row + 6] = a2, a2 = tmp;
                    tmp = B[col + k][row + 7], B[col + k][row + 7] = a3, a3 = tmp;
                    // swap buffer1
                    B[col + k + 4][row] = a0, B[col + k + 4][row + 4] = a4;
                    B[col + k + 4][row + 1] = a1, B[col + k + 4][row + 5] = a5;
                    B[col + k + 4][row + 2] = a2, B[col + k + 4][row + 6] = a6;
                    B[col + k + 4][row + 3] = a3, B[col + k + 4][row + 7] = a7;
                }
            }
        }
        // reference:https://yangtau.me/computer-system/csapp-cache.html
    }
    else
    {
        // not too strict
        for (int i = 0; i < N; i += 16)
        {
            for (int j = 0; j < M; j += 16)
            {
                for (int k = i; k < i + 16 && k < N; k++)
                {
                    for (int h = j; h < j + 16 && h < M; h++)
                    {
                        B[h][k] = A[k][h];
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
