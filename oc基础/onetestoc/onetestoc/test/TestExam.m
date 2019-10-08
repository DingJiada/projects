//
//  TestExam.m
//  testoc1
//
//  Created by Dingjd on 12/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "TestExam.h"

@implementation TestExam
{
    int count;// 7.记录get次数
}

/** 1、
 * @param arr 传入一个整数数组，取个位数，输出对应的结果
 */
-(void)test1:(NSArray *) arr {
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
-(NSArray *)test2:(NSString *) str {
    NSArray *array = [str componentsSeparatedByString:@"，"];//按，号拆分成数组
    NSMutableArray *mArray = [NSMutableArray array];//整理后的数组
//    int (^reverse)(int) = ^(int x){//整数取反算法
//        int y = 0;
//        while (0 != x)
//        {
//            y = y * 10 + x % 10;
//            x /= 10;
//        }
//        return y;
//    };
    for(int i = 0; i < array.count; i++) {
        int num = [array[i] intValue];
        if(num % 2 == 0){
            num = ~ num + 1;//偶数按位取反
        }
        [mArray addObject:[NSNumber numberWithInteger:num]];
        
        NSLog(@"%d",num);
    }
    return mArray;
}

/** 3、
 * 模拟输出9x9乘法表
 */
-(void)test3 {
    int result;//乘法表计算的结果
    for(int i = 1; i <= 9; i++){
        for(int j = 1; j <= i; j++){
            result = i * j;
            printf("%d * %d = %d ",j,i,result);
        }
        printf("\n");
    }
}

/** 4、
 * @param arr 传入一个字符串数组 使用block进行排序
 * @return NSArray 返回排序后的字符串数组
 */
-(NSArray *)test4:(NSArray *) arr {
    
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
-(NSUInteger)test5:(NSString *)pattern withCheckStr:(NSString *)checkString {
    //将正则表达式设置为OC规则
    NSRegularExpression *regular = [[NSRegularExpression alloc] initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    //利用规则测试字符串获取匹配结果
    NSArray *results = [regular matchesInString:checkString options:0 range:NSMakeRange(0, checkString.length)];
    return results.count;
}

-(BOOL)regExp:(NSString *)regex {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/** 6、
 * @param str 传入一个NSString字符串，统计字符个数
 */
-(void)test6:(NSString *)str {
    //保存每种字符出现的次数  key是字符  value 是字符出现的次数
    NSMutableDictionary *resultDic = [NSMutableDictionary dictionaryWithCapacity:0];
    for (int i = 0; i < str.length; i++) {
        //取出i位置的字符
        NSString *charStr = [self indexCharForStr:str index:i];
        if (charStr == nil) {
            continue;
        }
        //获取所有的key
        NSArray *resultKeys = resultDic.allKeys;
        //判断字符是否在里面
        if ([resultKeys containsObject:charStr]) {
            //存在 取出该字符出现的次数 加1再重新设置
            NSInteger count = [[resultDic objectForKey:charStr] integerValue];
            [resultDic setValue:@(count + 1) forKey:charStr];
        }else{
            //不存在 将该字符存到resultDic中
            [resultDic setValue:@(1) forKey:charStr];
        }
    }
    NSMutableString *resultStr = [NSMutableString string];
    [resultDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [resultStr appendFormat:@"%@%@",key,obj];
    }];
    NSLog(@"%@",resultStr);
    
}
/** 取出对应位置的字符
 * @param aimStr 字符串
 * @param index 要取的下标位置
 * @return NSString 取出的字符
 */
-(NSString *)indexCharForStr:(NSString *)aimStr index:(NSInteger)index {
    if (index >= aimStr.length) {
        return nil;
    }
    if (index > 0) {
        NSString * subToStr = [aimStr substringToIndex:index+1];
        return [subToStr substringFromIndex:index];
    }else{
        return [aimStr substringToIndex:1];
    }
    return nil;
}

/** 7、
 * 定时器
 */
-(void)test7 {
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(getNowDate) userInfo:nil repeats:YES];
    
}

/** 7、输出当前时间
 * @return NSString 返回当前时间
 */
-(NSString *)getNowDate {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];//设置格式化 格式
    
    NSDate *dateNow = [NSDate date];
    
    NSString *nowDate = [formatter stringFromDate:dateNow];//转换为NSString
    
    NSLog(@"当前时间==>%@",nowDate);
    
    count++;//统计每次调用次数
    
    if(count == 5){ // 设置停止
        NSLog(@"Pa");
        [_timer invalidate];
        _timer = nil;
    }
    
    return nowDate;
}

/**
 * @param pa 当接收Pa时停止
 */
-(void)stop:(NSString *)pa {
    //[NSThread sleepForTimeInterval:5];
    if([@"Pa" isEqualToString:pa]){
        
    }
}
@end
