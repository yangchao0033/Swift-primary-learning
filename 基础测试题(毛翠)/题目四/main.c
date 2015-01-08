/*
 4、 以下程序运行后的打印结果是___42___(需要写上分析思路）
 #include <stdio.h>
 int sum(int a, int b)
 {
 return a + b;
 }
 
 int two(int n)
 {
 return n * 2;
 }
 
 void test(int n)
 {
 printf("%d\n", two(n));
 }
 
 int main()
 {
 test( sum(10, 11) );
 return 0;
 }
 
 思路:
 首先是函数嵌套，调用test函数时将sum当成参数传进去，首先执行sum函数里的a+b，所以10+11=21，执行完后再执行sum*2，21*2=42
 
 */


