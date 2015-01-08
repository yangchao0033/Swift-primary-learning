//
//  Student.m
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import "Student.h"

@implementation Student

// name的setter,getter
- (void)setName:(NSString *)name
{
    // 附加内存管理代码
    if (_name!=name) {
        // 之前的对象引用数-1
        [_name release];
        // 之前的对象引用数+1
        _name = [name retain];
    }
}
-(NSString *)name
{
    return _name;
}

// age的setter,getter
- (void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

// score的setter,getter
- (void)setScore:(int)score
{
    _score = score;
}
-(int)score
{
    return _score;
}

// 自定义构造器
- (instancetype)initWithName:(NSString *)name andAge:(int)age andScore:(int)score
{
    // 父类初始化成功，则初始化自己的属性
    if (self = [super init]) {
        // 初始化成员属性
        self.name = name;
        self.age = age;
        self.score = score;
    }
    return self;
}

// 对象释放前操作
- (void)dealloc
{
    // 释放对象拥有的引用
    [_name release];
    [super dealloc];
}

// 重写description
// 格式为：My Name Is XXX  Age Is XXX Score Is XXX
- (NSString *)description
{
    return [NSString stringWithFormat:
            @"My Name Is %@  Age Is %d Score Is %d",
            _name,
            _age,
            _score];
}

@end
