//
//  ZhangSan.h
//  demo01
//
//  Created by Dingjd on 11/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


@interface ZhangSan : NSObject<Student>

@property (nonatomic) id <Student> delegate;

@end


