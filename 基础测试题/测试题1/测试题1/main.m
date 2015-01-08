//
//  main.m
//  测试题1
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 1、 以下程序运行后的打印结果是 _______(需要写上分析思路）
*/

#import <Foundation/Foundation.h>
#include <stdio.h>

int main() {
        // 分析：
        // 定义并初始化变量x, y, t
        int x=10, y=20, t=0;
    
        // 使用if条件语句，因为没有大括号，所以只对if下的第一条语句有用
        // 又因为(x==y)条件不满足，所以t=x;语句不会执行
        if (x==y) t=x; x=y; y=t;
        // 综上，以上只执行x=y;y=t;两句
        // 即两条赋值语句只是将x，y的值分别改为20，0
    
        // 打印结果
        printf("%d,%d\n",x,y);
        return 0;
    
    return 0;
}

// 打印结果：20，0