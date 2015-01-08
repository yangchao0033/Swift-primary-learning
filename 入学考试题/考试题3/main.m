//
//  main.m
//  考试题3
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 3、 定义属性时候，什么情况下用copy、assign、retain、strong、week
 */

/*
 答：
        copy:   当数据类型为NSString*时,可以使用copy
        assign: 当数据类型属于基本数据类型，结构体，枚举时
        retain: 当数据类型为任何继承了NSObject的对象时，且没有开启ARC
        strong: 已经开启ARC，当数据类型为任何继承了NSObject的对象，且想长期拥有这个对象
        week:   已经开启ARC，当数据类型为任何继承了NSObject的对象，但是不想长期拥有，通常用在循环引用中
 

 */
#import <Foundation/Foundation.h>

int main() {

    return 0;
}
