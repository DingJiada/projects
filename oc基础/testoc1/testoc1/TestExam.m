//
//  TestExam.m
//  testoc1
//
//  Created by Dingjd on 12/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "TestExam.h"

@implementation TestExam

/** 1、
 * @param arr 传入一个整数数组，取个位数，输出对应的结果
 */
-(void)test1:(NSArray *) arr{
    int num;//取到的 个位值
    for(int i = 0; i < arr.count; i++){
        num = [arr[i] integerValue] % 10;
        switch(num){
            case 1:
            case 2:
                NSLog(@"值为1,2");
                break;
            case 3:
            case 6:
            case 9:
                NSLog(@"被3整除？");
                break;
            case 4:
                NSLog(@"10086");
                break;
            case 5:
            case 7:
                NSLog(@"%f",[arr[i] floatValue] * 1.25);
                break;
            case 8:
                NSLog(@"8");
                break;
        }
    }
}

/** 2、
 * @param str 传入给定字符串，输出所有奇数值，所有偶数取反
 * @return NSArray 返回整理后整数数组
 */
-(NSArray *)test2:(NSString *) str{
    NSArray *array = [str componentsSeparatedByString:@"，"];//按，号拆分成数组
    NSMutableArray *mArray = [NSMutableArray array];//整理后的数组
    int (^reverse)(int) = ^(int x){//整数取反算法
        int y = 0;
        while (0 != x)
        {
            y = y * 10 + x % 10;
            x /= 10;
        }
        return y;
    };
    for(int i = 0; i < array.count; i++) {
        int num = [array[i] intValue];
        if(num % 2 == 0){
            num = reverse(num);//偶数取反
        }
        [mArray addObject:[NSNumber numberWithInteger:num]];
        
        NSLog(@"%d",num);
    }
    return mArray;
}

/** 3、
 * 模拟输出9x9乘法表
 */
-(void)test3{
    int result;//乘法表计算的结果
    for(int i = 1; i < 10; i++){
        for(int j = 1; j < 10; j++){
            result = i * j;
            NSLog(@"%d * %d = %d",i,j,result);
        }
    }
}

/** 4、
 * @param arr 传入一个字符串数组 使用block进行排序
 * @return NSArray 返回排序后的字符串数组
 */
-(NSArray *)test4:(NSArray *) arr{
    
    id (^arrSortBlock)(NSArray *) = ^(NSArray *array){
        return [arr sortedArrayUsingSelector:@selector(compare:)];
    };
    
    return arrSortBlock(arr);
}

/** 5、
 * @param pattern 正则表达式（匹配规则）
 * @param checkString 匹配的字符串
 * @return NSUInteger 返回匹配结果
 */
-(NSUInteger)test5:(NSString *)pattern withCheckStr:(NSString *)checkString{
    //将正则表达式设置为OC规则
    NSRegularExpression *regular = [[NSRegularExpression alloc] initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    //利用规则测试字符串获取匹配结果
    NSArray *results = [regular matchesInString:checkString options:0 range:NSMakeRange(0, checkString.length)];
    return results.count;
}

/** 6、
 * @param str 传入一个NSString字符串，计算字符个数
 *            OC中NSString是UTF-16字符编码，即16位unichar字符的序列
 */
-(void)test6:(NSString *)str{
    for(int i=0; i<str.length; i++){
        unichar ch = [str characterAtIndex: i];
        NSLog(@"%hu",ch);
    }
}

/** 7、
 * 定时器
 */
-(void)test7{
    [self getNowDate];//没问题！
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(getNowDate) userInfo:nil repeats:YES];
    
    //[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

/** 7、
 * 输出当前时间
 */
-(void)getNowDate{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];//设置格式化 格式
    
    NSDate *dateNow = [NSDate date];
    
    NSString *nowDate = [formatter stringFromDate:dateNow];//转换为NSString
    
    NSLog(@"当前时间==>%@",nowDate);
    //return nowDate;
}
@end
