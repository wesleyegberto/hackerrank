/**
    https://www.hackerrank.com/challenges/saveprincess
    Bot saves princess
    
*/
#include <stdio.h>
#include <string.h>
#include <math.h>

/* Head ends here */
void displayPathtoPrincess(int n, char grid[n][n]){
    int xm, ym, xp, yp;
    int x, y;
    int i, j;
    
    for(i = 0; i < n; i++) {
        for(j = 0; j < n; j++) {
            if(grid[i][j] == 'm') {
                xm = i;
                ym = j;
            } else if(grid[i][j] == 'p') {
                xp = i;
                yp = j;
            }
        }
    }
    x = abs(xm - xp);
    y = abs(ym - yp);
    
    for(i = 0; i < x; i++) {
        if(xm > xp) {
            printf("UP\n");
        } else {
            printf("DOWN\n");
        }
    }
    for(i = 0; i < y; i++) {
        if(ym > yp) {
            printf("LEFT\n");
        } else {
            printf("RIGHT\n");
        }
    }
}

int main() {
    int m, i;
    scanf("%d", &m);
    char grid[m][m];
    char line[m];

    for(i=0; i<m; i++) {
        scanf("%s", line);
        strncpy(grid[i], line, m);
    }
    displayPathtoPrincess(m,grid);
    return 0;
}
