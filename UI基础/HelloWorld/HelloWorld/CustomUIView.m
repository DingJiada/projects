//
//  CustomUIView.m
//  HelloWorld
//
//  Created by Dingjd on 16/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "CustomUIView.h"

@interface CustomUIView()

@property(nonatomic,weak) UILabel *lable;

@end


@implementation CustomUIView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *lable = [[UILabel alloc] init];//创建子控件lable
        self.lable = lable;
        [self addSubview:lable];//添加到子视图
    }
    return self;
}
//重写layoutSubviews，子控件设置frame
- (void)layoutSubviews {
    [super layoutSubviews];
    CGSize size = self.frame.size;
    self.lable.frame = CGRectMake(0, 0, 100, 100);
}

//子控件赋值


@end
