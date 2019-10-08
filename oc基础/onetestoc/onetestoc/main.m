//
//  main.m
//  onetestoc
//
//  Created by Dingjd on 15/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "test/TestExam.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        TestExam *te = [[TestExam alloc] init];
        
        /*  1、随机获取10个整数,取其个位值，若值为1，2 输出“值为1，2”；若为
         3，6，9输出“被3整除？“；若为4 输出'10086' 若为5，7 输出原数值
         的1.25倍，若为8 输出”8“
         */
        NSMutableArray *arr = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            int a=arc4random() % 100;
            [arr addObject:[NSNumber numberWithInteger:a]];
        }
        [te test1:arr];
        
        NSLog(@"===========分割线===========");
        
        /*  2、给定字符串 ：@“35，64，72，103，0，24，18，17，19，21”，
         输入所有奇数值，所有偶数取反，并整理成字整型数组。
         */
        NSMutableString *mStr = [NSMutableString string];
        [mStr appendString:@"35，64，72，103，0，24，18，17，19，21"];
        //整理成字整型数组
        NSArray * arrInt = [te test2:mStr];
        for(id obj in arrInt){
            NSLog(@"==>%@",obj);
        }
        
        NSLog(@"===========分割线===========");
        
        /*  3、模拟输出乘法口诀表
         */
        [te test3];
        NSLog(@"===========分割线===========");
        
        /*  4、用block 实现 字符串数组排序
         */
        NSMutableArray *arr1 = [NSMutableArray arrayWithObjects:@"f",@"d",@"g",@"h",@"bb",@"bbe",@"a",@"j",@"l",@"c",@"k", nil];
        
        NSArray *sortedArray = [te test4:arr1];
        NSLog(@"排序后%@",sortedArray);
        
        NSLog(@"===========分割线===========");
        
        /*  5、用正则判断手机号码是否正确   规则如下：大陆手机号码：+861后接10位数字 澳门电话：+8536后接 7位数字  香港电话：+852后接 8位数字
         */
        NSString *pattern1 = @"^+861[0-9]{10} | ^+8536[0-9]{7} | ^+852[0-9]{8}";
        NSString *checkString = @"+8618166072502";
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern1];
        
        if ([pred evaluateWithObject: checkString]) {
            NSLog(@"OK...");
        }
        
        NSUInteger result = [te test5:pattern1 withCheckStr:checkString];
        NSLog(@"字符串匹配结果==>%ld",result);//15
        
        //BOOL flag = [te regExp:checkString];
        NSLog(@"===========分割线===========");
        
        /* 6.NSString如何计算字符的个数？
         */
        NSString *name = @"aaaaabdddbbcc";
        [te test6:name];
        NSLog(@"===========分割线===========");
        
        /*  7、定时输出当前时间，当接收输入Pa时停止输出。
         */
        [te test7];
        //[te stop:@"Pa"];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
