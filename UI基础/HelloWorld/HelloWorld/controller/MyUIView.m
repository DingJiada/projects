//
//  MyUIView.m
//  HelloWorld
//
//  Created by Dingjd on 17/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyUIView.h"

@implementation MyUIView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(UIView *)createUIView {
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    
    [firstView setBackgroundColor:[UIColor blueColor]];
 
    return firstView;
}
@end
