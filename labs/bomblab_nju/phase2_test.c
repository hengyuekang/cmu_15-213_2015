#include<stdio.h>
int main()
{
    int arr[9];
    arr[0]=134;
    for(int cnt=1;cnt<=8;cnt++)
    {
        arr[cnt]=arr[cnt-1]+1-2*cnt;
        printf("%d ",arr[cnt]);
    }
    return 0;
}