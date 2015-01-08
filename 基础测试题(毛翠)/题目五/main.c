/*
 5、 输入两个数，打印（printf）这两个数的和、差、积、商、以及余数。（C语言编程题）
 */


#include <stdio.h>

void test(int a,int b){
    int sum = a+b;//加
    printf("和是%d\n",sum);
    int minus = a-b;//减
    printf("差是%d\n",minus);
    int product = a*b;//乘
    printf("积是%d\n",product);
    if (b==0) {//判断除数是否为0
        printf("错误输入\n");
    }else{
        float quotient = a/b;//商
        printf("商是%.2f\n",quotient);
    }
    if (b==0) {//判断除数是否为0
        printf("错误输入\n");
    }else{
        int quyu = a%b;
        printf("余数是%d\n",quyu);
    }
    
    
}
int main(int argc, const char * argv[])
{
    
    test(21,4);
    
}
