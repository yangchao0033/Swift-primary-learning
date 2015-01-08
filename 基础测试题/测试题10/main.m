//
//  main.m
//  测试题10
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 10、 找出多个字符串中的最大公共子字符串，如“nbitheimanb”和“itheia”的最大子串是：”ithei”。（C语言）
 */
// 声明一个函数，用来计算并返回两字符串最大公共子串的长度，并得到最大子串在第一个字符串上的起始下标
int longestSubstring(char *s1, char *s2, int *sh);
int main() {
    // 定义两个字符串s1、s2
    char s1[] = "nbitheimanb";
    char s2[] = "itheia";
    // 定义一个变量用来记录最大子串起始位置在s1字符串中的下标
    int subHeadOf_s1 = 0;
    // 调用函数得到最大子串的长度
    int subMaxLen = longestSubstring(s1, s2, &subHeadOf_s1);
    
    /*
     创建并初始化一个固定大小为最大字符串长度的字符数组并将最后一
     位初始化为'\0'使其变为一个字符串，用来接受最大子串
     */
    char sub[subMaxLen+1];
    // 初始化最后一位为'\0'
    sub[subMaxLen] = '\0';
    
    // 利用strncpy函数将最大子串复制给新的字符串变量，其中(s1+subHead_s1)是最大子串在s1上的起始地址
    strncpy(sub, s1+subHeadOf_s1, subMaxLen);
    // 打印结果
    printf("%s\n",sub);
    return 0;
}
// 定义一个函数，用来计算并返回两字符串最大公共子串的长度，并得到最大子串在第一个字符串上的起始下标
int longestSubstring(char *s1, char *s2, int *sh)
{
    // 获取两个字符串的长度
    int len1 = (int)strlen(s1);
    int len2 = (int)strlen(s2);
    // 定义一个变量存储最大子串长度
    int maxLen = 0;
    // 利用嵌套循环找出最大公共子串的位置
    for (int i = 0; i < len1; i++) {
        for (int j = 0; j < len2; j++) {
            // 找到第一个相等字符的位置
            if (s1[i]==s2[j]) {
                // 保存第一个位置，并获取子串长度
                int h1 = i, h2 = j, count = 1;
                // 计算公共子串长度
                while (h1+1<len1&&h2+1<len2&&s1[++h1]==s2[++h2]) {
                    count++;
                }
                // 更新最大相等子串长度
                if (count > maxLen) {
                    maxLen = count;
                    // 返回最大公共子串的在s1上的下标
                    *sh = i;
                }
            }
        }
    }
    // 返回最大公共子串长度
    return maxLen;
}
