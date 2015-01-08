/*
 9、 有八个人坐在一起，问第8个人多少岁？他说比第7个人大3岁。问第7个人多少岁？他说比第6个人大3岁。问第6个人多少岁？他说比第5个人大3岁。问第5个人多少岁？他说比第4个人大3岁，以此类推，最后问第1个人多少岁？他说是10岁。请问第8个人多大？（C语言）
 */

int ages(n){
    int age = 0;//定义变量存储年龄
    if (n==1) {//n代表人的个数，当人数为1人时退出递归
        age = 10;
    }else{
        age =ages(n-1)+3;
    }
    return age;
}
#include <stdio.h>

int main(int argc, const char * argv[])
{
    int age = ages(8);//调用函数
    printf("第八个人的年龄是%d\n",age);
    return 0;
}

