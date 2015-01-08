/*
 2、 以下程序运行后的打印结果是 _X=20,Y=0______(需要写上分析思路）
 #include <stdio.h>
 
 
 int main()
 {
 int x=10, y=20, t=0;
 if (x==y) t=x; x=y; y=t;
 printf("%d,%d\n",x,y);
 return 0;
 }
 
 思路:
 if(x==y)t=x;等同于
 if(x==y){
 t=x;
 }
 判断语句if因为条件不成立，所以不执行t=x，判断语句结束，继续下面的程序
 x=y(将y的值赋值给了x)，y=t(将t的值赋值给y)，所以结果是x=20，y=0
 */




