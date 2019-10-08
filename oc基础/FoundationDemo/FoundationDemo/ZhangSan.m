//
//  ZhangSan.m
//  FoundationDemo
//
//  Created by Dingjd on 11/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ZhangSan.h"

@implementation ZhangSan

    NSString *name;


- (instancetype)init
{
    self = [super init];
    if (self) {
        name = @"张三";
    }
    return self;
}

-(void)jiaobanfei{
    NSLog(@"%@交了班费！",name);
}

-(void)zhiri{
    NSLog(@"张三值日！");
}

@end
