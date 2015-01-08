//
//  IDIdentify.m
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import "IDIdentify.h"

@implementation IDIdentify
// 定义判断是否是武汉地区的方法
- (BOOL)isFromWuhan
{
    // 截取前四位作为地区的号码
    NSString *areaId = [self.IDNumber substringToIndex:4];
    // 如果是湖北武汉市区号，返回真
    if ([areaId isEqualToString:@"4201"]) {
        return YES;
    }
    // 不满足则返回假
    return NO;
}

// 定义判断性别的方法
- (void)sexIdentufy
{
    // 获取ID号的长度
    int idLenth = (int)[self.IDNumber length];
    // 截取最后一位作为性别号
    NSString *sexId = [self.IDNumber substringFromIndex:idLenth - 1];
    // 如果满足条件为男性
    
    if ([sexId isEqualToString:@"1"] || [sexId isEqualToString:@"3"]) {
        // 设置性别为男
        self.sex = SexMan;
    }else{
    // 如果不满足，设置性别为女
    self.sex = SexWoman;
    }
}

@end
