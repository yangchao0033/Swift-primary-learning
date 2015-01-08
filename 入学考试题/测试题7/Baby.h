//
//  Baby.h
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NannyDelegate.h"

// 定义一个baby类
@interface Baby : NSObject

// 定义一个保姆成员，该成员遵守保姆协议
@property (nonatomic, strong) id<NannyDelegate> nannyDelegate;

// 声明一个哭得方法
- (void)cry;

@end
