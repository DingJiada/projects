//
//  ZhangSan.h
//  FoundationDemo
//
//  Created by Dingjd on 11/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface ZhangSan : NSObject <Student>

//声明一个指向代理对象的指针变量，遵循Eat协议
@property (nonatomic,retain) id <Student> delegate;

@end

