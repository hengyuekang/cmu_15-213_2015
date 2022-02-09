#include<stdio.h>
int arr[16]={10,2,14,7,8,12,15,11,0,4,1,13,3,9,6,5};
int main()
{
    int int3=6;
    int int1=15,index=6;
    int int4=0;
    while(int3>0)
    {
        int4+=int1;
        int1=index;
        for(int i=0;i<16;i++)
        {
            if(arr[i]==int1)
            {
                index=i;
                break;
            }
        }
        int3--;
    }
    printf("%d %d\n",int1,int4);
    return 0;
}