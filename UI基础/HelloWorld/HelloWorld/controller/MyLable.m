//
//  MyLable.m
//  HelloWorld
//
//  Created by Dingjd on 17/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyLable.h"

@implementation MyLable

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(UILabel *)createLable {
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 35, 200, 100)];
    
    lable.text = @"你好！";
    lable.layer.borderColor = [UIColor redColor].CGColor;//边框颜色
    lable.layer.borderWidth = 1;//边框
    
    return lable;
}
@end
