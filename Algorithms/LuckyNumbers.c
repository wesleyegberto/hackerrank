/**
    Lucky Numbers (https://www.hackerrank.com/challenges/lucky-numbers)
*/
#include <stdio.h>
#include <math.h>

int main() {
    long long int ans;
    int _cases, _a_i;
    long long int a, b;
    long long int total, totalEq, temp, rest;
    long long int i, j;

    short isPrimo;
    scanf("%d", &_cases);

    for(_a_i = 0; _a_i < _cases; _a_i++) {
        scanf("%lld %lld", &a, &b);
        ans = 0;
        isPrimo = 0;
        b++;
        for(i = a; i < b; i++) {
            isPrimo = 1;
            total = 0;
            totalEq = 0;

            temp = i;
            while(temp > 0) {
                rest = temp % 10;
                total += rest;
                totalEq += (rest * rest);
                temp = temp / 10;
            }
            if(total > 3 || totalEq > 3) {
                // Para testar se eh primo efetua a divisao ate, no maximo, a raiz quadrada do numero
                rest = sqrt(totalEq) + 1;
                for(j = 2; j < rest;) {
                    if(j != total && total % j == 0 || totalEq % j == 0) {
                        isPrimo = 0;
                        break;
                    }
                    if(j > 2)
                        j += 2;
                    else
                        j++;
                }
            } else if(total < 2 && totalEq < 2) {
                isPrimo = 0;
            }
            if(isPrimo == 1) {
                ans++;
            }
        }

        printf("%lld\n", ans);
    }
    return 0;
}
