//
//  main.m
//  考试题10
//
//  Created by 杨超 on 14-11-14.
//  Copyright (c) 2014年 杨超. All rights reserved.
//

/**
 10、 定义一个学生类，需要有姓名，年龄，考试成绩三个成员属性，创建5个对象，属性可以任意值。（Objective-C）
 
 1)    不使用@property，手动编写他们的访问器方法（getter和setter），注意内存管理（手动管理内存）
 2)    增加一个便利构造器（快速构造器）
 3)    使用NSLog输出学生对象时，输出信息格式为：My Name Is XXX  Age Is XXX Score Is XXX
 4)    对5个学生对象按照成绩—》年龄—》姓名优先级排序（成绩相同按照年龄排序，成绩年龄相同按照姓名排序（5个学生的属性值自己随便设定，姓名不考虑中文，按26个大小字母排序））
 */
#import <Foundation/Foundation.h>
#import "Student.h"

int main() {
    // 创建5个Student对象
    Student *stu1 = [[Student alloc] initWithName:@"James" andAge:17 andScore:84];
    Student *stu2 = [[Student alloc] initWithName:@"Dean" andAge:19 andScore:92];
    Student *stu3 = [[Student alloc] initWithName:@"Jing" andAge:19 andScore:92];
    Student *stu4 = [[Student alloc] initWithName:@"Alberts" andAge:21 andScore:92];
    Student *stu5 = [[Student alloc] initWithName:@"Jain" andAge:18 andScore:83];
    // 创建一个数组用来盛放Student对象
    NSArray *array = [NSArray arrayWithObjects:stu1, stu2, stu3, stu4, stu5, nil];
    // 排序前数组打印
    NSLog(@"\n排序前：%@", array);
    
    // 定义排序描述对象，依次用score，age，name作为主键进行排序，而优先级依次递减
    // 其中“ascend:NO”指采用降序排序，由高到低按比较主键的自然顺序排序
    NSSortDescriptor *nameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:NO];
    NSSortDescriptor *ageDescriptor = [[NSSortDescriptor alloc] initWithKey:@"age" ascending:NO];
    NSSortDescriptor *scoreDescriptor = [[NSSortDescriptor alloc] initWithKey:@"score" ascending:NO];
    // 将排序描述对象放进数组中，加入的顺序对应相应的优先级，由高到低递减
    NSArray *sortDescriptors = [NSArray arrayWithObjects:
                                scoreDescriptor,    // 优先级最高
                                ageDescriptor,      // 优先级略低
                                nameDescriptor,     // 优先级最低
                                 nil];
    // 调用描述符排序方法进行排序，生成新的排序后的数组
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:sortDescriptors];
    // 打印按自然顺序降序排序后的结果
    NSLog(@"\n按自然顺序降序排序后%@", sortedArray);
    
    
    // 手动管理内存
    [sortedArray release];
    [sortDescriptors release];
    [scoreDescriptor release];
    [ageDescriptor release];
    [nameDescriptor release];
    [array release];
    [stu5 release];
    [stu4 release];
    [stu3 release];
    [stu2 release];
    [stu1 release];

    return 0;
}
