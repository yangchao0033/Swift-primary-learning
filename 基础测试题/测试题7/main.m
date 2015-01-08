//
//  main.m
//  测试题7
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 7、 编写一个int string_len(char *s)，返回字符串s的字符长度(不包括\0)  （C语言编程题）
 */

#import <Foundation/Foundation.h>
#import "stdio.h"
// 声明计算字符串长度的函数，不包括'\0'
int string_len(char *s);
int main() {
    // 定义一个字符串
    char s[] = "i love oc program\0\0";
    // 调用函数计算字符串长度
    int length = string_len(s);
    // 打印结果
    printf("%d\n", length);

    return 0;
}

// 计算字符串长度的函数，不包括'\0'
int string_len(char *str)
{
    // 定义变量, 存储字符串长度
    int len = 0;
    // 定义指针变量并赋值
    char *p = str;
    // 利用while循环和指针计算len
    while (*p++) {
        len++;
    }
    // 返回长度
    return len;
}
