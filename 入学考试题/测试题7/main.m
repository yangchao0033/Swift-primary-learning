//
//  main.m
//  测试题7
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 7、 有一个Baby类，有Cry行为（方法，意为“哭”），Baby可以配一个保姆，但是作为保姆，必须遵守保姆协议：能够处理Baby类Cry的行为。请根据以上描述设计一套代理设计模式（Objective-C）
 */
#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Woman.h"

int main() {
    
    // 创建一个Baby对象
    Baby *baby = [[Baby alloc] init];
    // 创建一个Woman对象
    Woman *woman = [[Woman alloc] init];
    
    // 找woman给baby做保姆，因为woman遵守了保姆协议
    baby.nannyDelegate = woman;
    // baby开始哭了
    [baby cry];
    
    return 0;
}
