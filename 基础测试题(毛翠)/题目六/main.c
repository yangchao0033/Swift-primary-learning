/*
 6、 设计一个函数，找出整型数组元素的最小值（C语言编程题）
 
 */

int findMin(int a[10]){
    int min = a[0];
    for (int i = 0;i<10; i++) {
        if (min>a[i]) {
            min = a[i];
        }
    }
    return min;
}
#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a[10]={20,15,34,6,3,25,88,90,66,50};
    int min= findMin(a);
    printf("%d\n",min);
    return 0;
}

