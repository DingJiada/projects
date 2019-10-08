//
//  GrouperCell.m
//  TableViewTest
//
//  Created by yjm on 2019/10/4.
//  Copyright © 2019 yjm. All rights reserved.
//

#import "GrouperCell.h"

@implementation GrouperCell

@synthesize lbl_ID,lbl_name,lbl_gender;

-(id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        
    }
    return self;
}

-(void) setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
