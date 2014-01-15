/**
    https://www.hackerrank.com/challenges/pairs
    Resolution
*/
#include <stdio.h>
#include <stdlib.h>


int ar[1000000];
int *a, *aj;

int comp(const void *x, const void *y) {
   const int *ix = (const int *) x;
   const int *iy = (const int *) y;
 
   return (*ix > *iy) - (*ix < *iy);
}

int main() {
    int size, k;
    register int ans = 0;
    register int i, j;
  
    scanf("%d %d", &size, &k);
    
    for(i = 0; i < size; i++) { 
        scanf("%d", &ar[i]);
    }
    
    qsort (ar, size, sizeof(int), comp);
    
    a = ar;
    for(i = 0; i < size; i++) {
        aj = a + 1;
        for(j = i + 1; j < size; j++) {
            printf("%d %d\n", *a, *aj);
            if(*a - *aj == k || *aj - *a == k) {
                ans++;
            } else if(*aj - *a > k) {
                break;
            }
            ++aj;
        }
        ++a;
    }
    printf("%d\n",ans);    
    return 0;
}
