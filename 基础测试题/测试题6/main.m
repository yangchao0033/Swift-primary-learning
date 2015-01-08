//
//  main.m
//  测试题6
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/*
 6、 输入两个数，打印（printf）这两个数的和、差、积、商、以及余数。（C语言编程题）
 */
#import <Foundation/Foundation.h>
#import <stdio.h>

int main() {
    // 定义要输入的数
    int a,b;
    printf("请输入两个整数，以','隔开,请勿使用小键盘回车确认输入\n");
    // 输入两个整数
    scanf("%d,%d", &a, &b);
    // 定义和
    int sum = a + b;
    // 定义差
    int difference = a - b;
    // 定义积
    int product = a * b;
    // 定义商
    int quotient = a / b;
    // 定义余数
    int remainder = a % b;
    //打印结果
    printf("整数%d和%d的：\n和：%d\n差：%d\n积：%d\n商：%d\n余数：%d\n",
           a,
           b,
           sum,
           difference,
           product,
           quotient,
           remainder);
    
    return 0;
}
