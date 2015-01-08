//
//  main.m
//  测试题2
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 2、 以下程序运行后的打印结果是______(需要写上分析思路）
 */
#import <Foundation/Foundation.h>
// 预处理命令定义一个带参数的宏
#define pingfang(a) (a*a)
#include "stdio.h"
int main() {
    /*
    使用宏定义计算平方
    由于宏定义中，参数a没有加小括号
    所以实际计算为 (5+5*5+5)
    按照c语言四则运算优先级
    先乘除后加减(5+(5*5)+5)
    所以c=35
    */
    int c = pingfang(5+5);
    printf("c is %d\n", c);
    return 0;
}
// 打印结果：c is 35
