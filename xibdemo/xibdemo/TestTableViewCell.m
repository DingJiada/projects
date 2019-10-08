//
//  TestTableViewCell.m
//  xibdemo
//
//  Created by Dingjd on 26/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "TestTableViewCell.h"

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCells:(NSString *)label1 withLab2:(NSString *)label2 {
    self.lab1.text = label1;
    self.lab2.text = label2;
}

@end
