//
//  main.m
//  测试题5
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 5、 中华人民共和国公民身份证号码组成规则是前4位是代表省份和地区（例如4201代表湖北省武汉市），最后一位代表性别（1或3代表男性）。编写一个程序，通过身份证号码判断某人是否是武汉人以及其性别。（Objective-C）
 */

#import <Foundation/Foundation.h>
#import "IDIdentify.h"

int main() {
    // 定义一个识别器
    IDIdentify *i = [[IDIdentify alloc] init];
    
    // 设置对象的身份证号码
    i.IDNumber = @"420183198303207391";
    
    // 调用性别识别方法
    [i sexIdentufy];
    
    // 将性别结果转换为字符串
    NSString *s = [NSString string];
    s = i.sex == SexMan?@"男":@"女";
    
    // 调用地域判断方法判断是否为武汉人，并对属性赋值
    i.area = [i isFromWuhan]?@"湖北省武汉市":@"其它地区";
    
    // 打印结果
    NSLog(@"该公民属于%@，%@性", i.area, s);
    
    return 0;
}
