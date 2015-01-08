//
//  main.m
//  测试题6
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 6、 编写一个程序，用于接受从终端输入的整数，提取并用英文显示这个数的每一位数。例如输入112 输出 One One Two。（Objective-C）
 */

int main() {
    
    // 定义码表
    NSString *enNum[10] =
    {
        @"Zero",@"One",@"Two",@"Three",@"Four",
        @"Five",@"Six",@"Seven",@"Eight",@"Nine"
    };
    
    // 定义一个变量保存输入的数
    int num;
    // 提示输入
    NSLog(@"请输入一个整数：");
    // 接受键盘输入整数
    scanf("%d", &num);
    
    // 将num转为NSString
    NSString *numString = [NSString stringWithFormat:@"%d", num];
    // 顺序循环字符串的每一位
    for (int i = 0; i < numString.length; i++) {
        // 获取每一位的字符
        unichar c = [numString characterAtIndex:i];
        // 计算字符与'0'之间的距离，就是其真正的数值
        int index = c - '0';
        // 打印转换后结果
        NSLog(@"%d %@", index, enNum[index]);
    }
    
    return 0;
}
