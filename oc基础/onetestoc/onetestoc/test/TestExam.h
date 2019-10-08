//
//  TestExam.h
//  testoc1
//
//  Created by Dingjd on 12/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestExam : NSObject

@property(nonatomic,strong) NSTimer *timer;

-(void)test1:(NSArray *)arr;

-(NSArray *)test2:(NSString *)str;

-(void)test3;

-(NSArray *)test4:(NSArray *)arr;

-(NSUInteger)test5:(NSString *)pattern withCheckStr:(NSString *)checkString;

-(BOOL)regExp:(NSString *)regex;

-(void)test6:(NSString *)str;

-(void)test7;

-(void)stop:(NSString *)pa;
@end

