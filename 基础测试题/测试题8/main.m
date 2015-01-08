//
//  main.m
//  测试题8
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 8、 计算1~100中所有7的倍数的个数（C语言编程题）
 */
int main() {
    // 定义变量记录7的倍数的个数
    int count = 0;
    // for循环1~100的数
    for (int i = 1; i <= 100; i++) {
        // 符合条件判断为7的倍数
        if (i%7 == 0) {
            // 记录个数
            count++;
        }
    }
    // 打印结果
    printf("1~100中7的倍数的个数为：%d\n", count);
    return 0;
}
