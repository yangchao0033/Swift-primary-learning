//
//  IDIdentify.h
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>
// 定义性别的枚举
typedef enum {
    // 男性
    SexMan,
    // 女性
    SexWoman
} Sex;

// 定义身份证号码识别类
@interface IDIdentify : NSObject
// 定义身份证号码属性
@property (nonatomic, strong) NSString *IDNumber;
// 定义性别属性
@property (nonatomic, assign) Sex sex;
// 定义地域属性
@property (nonatomic, strong) NSString *area;

// 声明判断是否是武汉地区的方法
- (BOOL)isFromWuhan;
// 声明判断性别的方法
- (void)sexIdentufy;


@end
