/*
 8、 输入一英文句子，将其中所有单词首字符转换成大写后输出。（C语言
 */


#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("请输入字符:\n");//提示用户输入
    char ch[100];//定义一个字符数组存储用户输入的字符
    fgets(ch,100,stdin);//接收
    for (int i=0; i<100; i++) {//遍历循环
        if (i==0) {//判断下标为0的元素(即首字母)
            ch[i]=ch[i]-32;//小写字母转大写字母
        }else if(ch[i]==' '){//判断当下标所指的那位为空时，下标指向下一个位置
            ch[i+1]=ch[i+1]-32;
        }
    }printf("%s",ch);
    
    
    return 0;
    
}

