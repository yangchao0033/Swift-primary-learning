//
//  main.m
//  1-50个人点名
//
//  Created by 杨超 on 14-11-12.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    
    // 50个人围一圈相继点名，123点名，点到3离开，问最后剩下的人和所对应的位置
    int n = 50;// 2  4
    int arr[n];
    
    for (int i = 0; i < n; i++) {
        arr[i] = i + 1;
    }
    int flag = n;
    int number = 0;
    
    while (flag > 1) {
        for (int j = 0; j < n; j++) {
            if (arr[j] != 0) {
                number++;
                if (number%3 == 0) {
                    flag -= 1;
                    arr[j] = 0;
                }
            }
        }
    }
    for (int k = 0; k < n; k++) {
        if (arr[k]!=0) {
            NSLog(@"arr[%d] : %d\n", k, arr[k]);
        }
    }
    
    return 0;
}
