//
//  Baby.m
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import "Baby.h"

@implementation Baby
// 定义一个哭得方法
- (void)cry
{
    NSLog(@"baby is crying~");
    // 当宝宝哭时，调用保姆代理的方法哄小孩
    [self.nannyDelegate stopCry];
}

@end
