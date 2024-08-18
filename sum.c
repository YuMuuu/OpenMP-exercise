#include <stdio.h>
int A[100000];
int sum(int *a, int n)
{
    int s, i;
    s = 0;
    for (i = 0; i < n; i++)
        s += a[i];
    return s;
}
int main()
{
    int i;
    for (i = 0; i < 100000; i++)
        A[i] = i;
    printf("sum = %d\n", sum(A, 100000));
}