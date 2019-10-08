//
//  main.m
//  FoundationDemo
//
//  Created by Dingjd on 10/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BanZhang.h"
#import "ZhangSan.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"jik",@"rose",@"lili",@"hanmele"];//长度不可变的数组。只能存储oc对象

        for(int i =0;i<arr.count;i++){

            NSLog(@"%@",arr[i]);
        }

        for(id s in arr){
            NSLog(@"%@",s);
        }

        NSMutableArray *arr2 = [NSMutableArray arrayWithObjects:@"jik2",@"rose2",@"lili2",@"hanmele2", nil];

        [arr2 addObject:@"abcd2"];//添加元素
        [arr2 removeObjectAtIndex:2];//根据索引删除元素， removeObject根据内容删除

        for(id s in arr2){
            NSLog(@"%@",s);
        }
        int num2 = 20;

        NSNumber *num = @10;//基本数据类型的包装类，解决了NSArray只能存储oc对象的问题。
        num = @(num2);

        [arr2 addObject:num];

        for(int i =0;i<arr2.count;i++){

            NSLog(@"%@",arr2[i]);
        }

        NSDictionary *map = @{@"key":@"value",@"name":@"楠楠",@"age":@"18"};//oc中的字典，类似java中map
        NSLog(@"值是：%@",map[@"key"]);//通过dict[key] 来取value值；

        for(id item in map){//用foreach循环，会把key赋值给 迭代变量item

            NSLog(@"%@ = %@",item,map[item]);
        }

        struct person { //这里 定义了一个类型为person的结构  结构中，也可以包含结构类型的变量
            NSString *name;
            NSInteger age;
            NSNumber *sex;
        };
        typedef struct person person;//给structure person类型 取别名 为person

        person xiaoming = {@"张三",18,@1 };

        xiaoming.name = @"小明";

        CGPoint p1 = {6,7};

        NSValue *v1 = [NSValue valueWithPoint:p1];
        //Class c1 = v1;
        
        //[c1 valueWithPoint:p1];
        
        NSLog(@"%@ = %@",xiaoming.name,v1);
        
        BanZhang *banZhang = [[BanZhang alloc] init];
        ZhangSan *zhangSan = [[ZhangSan alloc] init];
        NSLog(@"=========");
        [zhangSan jiaobanfei];

        zhangSan.delegate = banZhang;

        [banZhang jiaobanfei];
        //  = 左边是定义，返回值和函数名 参数类型。 = 右边是函数实现，代码块
        void (^sss)() = ^{
            NSLog(@"最简单的一个block");
        };
        sss();
    }
    return 0;
}
