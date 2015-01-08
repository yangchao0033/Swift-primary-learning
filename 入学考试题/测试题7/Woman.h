//
//  Woman.h
//  入学考试题
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NannyDelegate.h"

// 定义一个Woman类，让Woman类遵守保姆协议，可以作为保姆代理家人看护baby
@interface Woman : NSObject <NannyDelegate>

@end
