//
//  Student.h
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    int _age;
    int _score;
}

// name的getter,setter
- (void)setName:(NSString *)name;
-(NSString *)name;

// age的getter,setter
- (void)setAge:(int)age;
-(int)age;

// score的getter,setter
- (void)setScore:(int)score;
-(int)score;

// 自定义构造器
- (instancetype)initWithName:(NSString *)name andAge:(int)age andScore:(int)score;

@end
