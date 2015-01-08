//
//  main.m
//  考试题8
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 8、 编程求字符串“100”和“150”按十进制数值做差后的结果以字符串形式输出。（Objective-C）
 */
#import <Foundation/Foundation.h>

int main() {
    // 定义变量存储字符串
    NSString *s1 = @"100";
    NSString *s2 = @"150";
    
    // 将字符串拆箱为整数再做差
    int cha = [s1 intValue] - [s2 intValue];
    
    // 将差装箱为字符串对象
    NSString *s3 = [NSString stringWithFormat:@"%d", cha];
    
    // 打印结果
    NSLog(@"%@ - %@ = %@", s1, s2, s3);
    
    return 0;
}
