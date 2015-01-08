//
//  main.m
//  考试题9
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

// 9、 现在有一个有序的数组，要求用户输入一个整数放到数组中还保证这个数组是有序的。例如原数组为@[@1，@3，@5，@7，@9]; 插入8之后为@[@1，@3，@5，@7，@8，@9];（Objective-C）

#import <Foundation/Foundation.h>

int main() {
    // 定义可变数组存储数组
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@1,@3,@5,@7,@9]];
    // 定义要插入的整数
    int num;
    // 打印原数组
    NSLog(@"原数组：%@", array);
    
    // 提示输入
    NSLog(@"请输入要插入的整数:");
    // 输入整数
    scanf("%d", &num);
    
    // 将要插入的数包装为对象
    NSNumber *nsnum = [NSNumber numberWithInt:num];
    
    // 顺序遍历数组
    for (id obj in array)
    {
        // 获取每一个元素的整数值
        int val = [obj intValue];
        // 获取每个元素的索引
        int index = (int)[array indexOfObject:obj];
        
        // 当要插入的数碰到第一个比自己大得数，则插入到这个数的位置
        if (num < val ) {
            [array insertObject:nsnum atIndex:index];
            break;
        }
        
        // 当要插入的数大于所有的数时，插在最后一位
        if (index == array.count - 1) {
            [array addObject:nsnum];
            break;
        }
    }
    // 打印结果
    NSLog(@"插入后：%@", array);
    return 0;
}
