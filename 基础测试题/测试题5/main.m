//
//  main.m
//  测试题5
//
//  Created by 杨超 on 14-11-11.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 5、 在一个已知的字符串中查找最长单词，假定字符串中只含字母和空格，空格用来分隔不同单词。（C语言）
 */
#import <Foundation/Foundation.h>
#import <stdio.h>
#import <string.h>
/*
 思路：
 1、先定义一个字符串数组
 2、将要处理的含有单词的字符串按空格切割(得到单词)，并保存到字符串数组中
 3、字符串数组的每个元素字符串代表一个单词，比较得出单词字符串长度最大的一个
 */
// 得出长度最大的单词
char* longestWord(char *);
// 计算单词个数
int wordNum(char *str);

// 主函数
int main() {
    // 定义一个字符串并初始化
    char s[] = "i love objective-c and itheima haha hahaha";
    // 调用函数，返回最长单词字符串
    char *word = longestWord(s);
    //打印结果
    printf("%s\n", word);
    return 0;
}
// 计算字符串中的单词数量
int wordNum(char *str)
{
    // 定义操作指针
    char *p = str;
    // 保存单词数
    int count = 0;
    // 计算单词数量
    while (*p++) {
        if ((*p)==' ') {
            count++;
        }
    }
    return count + 1;
}

char* longestWord(char *str)
{
    /*-------切割字符串并保存到字符串数组中--------*/
    // 定义并保存单词数
    int wordsNum = wordNum(str);
    // 创建保存单词的数组
    char *s[wordsNum];
    // 利用strtok函数分割并存储到字符串数组中
    // 设置分割符号
    char *split = " ";
    // 初始化返回结果
    char *result = NULL;
    result = strtok( str, split );
    for (int i = 0; result != NULL ; i++) {
        // 将分割得到的子串存入字符串数组中
        s[i] = result;
        result = strtok(NULL, split);
    }
    
    /*---------比较出长度最大的单词-------------*/
    // 定义最大单词长度并初始化
    int maxLen = (int)strlen(s[0]);
    // 标记最大单词下标
    int maxLenWord = 0;
    // for循环比较各个字符串的长度
    for (int j = 1; j < wordsNum; j++) {
        // 记录每个单词的字数
        int len = (int)strlen(s[j]);
        if (len > maxLen) {
            maxLen = len;
            // 记录长度最大单词下标
            maxLenWord = j;
        }
    }
    // 返回长度最大的单词
    return s[maxLenWord];
}