//
//  BanZhang.m
//  FoundationDemo
//
//  Created by Dingjd on 11/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BanZhang.h"

@implementation BanZhang
{
    NSString *name;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        name = @"班长";
    }
    return self;
}

-(void)jiaobanfei{
    NSLog(@"%@交了班费!",name);
}

-(void)zhiri{
    NSLog(@"班长值日!");
}
@end
