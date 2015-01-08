//
//  main.m
//  考试题1
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 1、 Self和super的区别？
 
 self:  隐藏参数，指向当前调用方法(类方法或对象方法)的类
 super: 子类调用父类方法的关键字
 
 使用:   self和super在使用时，self出现在对象方法中，self就代表对象
        self出现在类方法中，self就代表类。super同理（代表父类）
        特别的是self还可以访问成员变量。
        当子类想调用被自己覆盖的同名方法时使用super。
 
 区别:   self调用方法时优先调用当前类的方法，如果当前类没有，才去父类寻找，
        而super调用方法时，跳过当前类，直接去当前类的父类寻找方法。
 */

#import <Foundation/Foundation.h>

int main() {
    	
    return 0;
}
