//
//  Student.h
//  FoundationDemo
//
//  Created by Dingjd on 11/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 新建了一个名为Eat的协议。继承自NSObject协议
 */
@protocol Student <NSObject>

@required//必须实现的方法
-(void)jiaobanfei;
//通过协议实现delegate（代理）

@optional//可选是否实现的方法
-(void)zhiri;

@end


