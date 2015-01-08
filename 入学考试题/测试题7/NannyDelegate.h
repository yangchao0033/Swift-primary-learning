//
//  NannyDelegate.h
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义一个代理协议，相当保姆必须遵守该协议
@protocol NannyDelegate <NSObject>
// 定义保姆必须会哄小孩，让小孩停止哭泣
- (void)stopCry;

@end
