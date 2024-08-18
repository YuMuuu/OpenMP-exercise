#include <stdio.h>
int A[100000];
int sum(int *a, int n)
{
    return (0 + n-1)*(n-1)/2;
}
int main()
{
    int i;
    for (i = 0; i < 100000; i++)
        A[i] = i;
    printf("sum = %d\n", sum(A, 100000));
}