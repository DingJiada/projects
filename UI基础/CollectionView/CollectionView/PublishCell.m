//
//  PublishCell.m
//  CollectionView
//
//  Created by Dingjd on 18/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "PublishCell.h"

@implementation PublishCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        NSLog(@" ===== 调用了这个方法");
        self.topImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 70, 70)];
        self.topImage.layer.masksToBounds = YES;
        self.topImage.layer.cornerRadius = 35;
        self.topImage.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.topImage];
        
        self.btmlabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 70, 20)];
        self.btmlabel.textAlignment = NSTextAlignmentCenter;
        self.btmlabel.textColor = [UIColor blackColor];
        self.btmlabel.font = [UIFont fontWithName:@"Verdana-Bold"size:12];
        //self.btmlabel.text = @"1111";
        [self.contentView addSubview:self.btmlabel];
    }
    
    return self;
}

@end
