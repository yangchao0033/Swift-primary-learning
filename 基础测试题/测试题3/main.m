//
//  main.m
//  测试题3
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 3、 设有定义int a;判断a是一个偶数的表达式是()。
 A) a==2*n
 B) a/2==0
 C) a%2
 D) a%2==0
 */

// 答：选 D

#import <Foundation/Foundation.h>
#import <stdio.h>
int main() {
    // for循环a的值，测试表达式
    for (int a = 0; a < 10; a++) {
        // 如果a为偶数，打印
        if (a%2==0) {
            // 打印结果
            printf("%d 是偶数。\n",a);
        }
    }
    return 0;
}
// 打印结果：
//0 是偶数。
//2 是偶数。
//4 是偶数。
//6 是偶数。
//8 是偶数。