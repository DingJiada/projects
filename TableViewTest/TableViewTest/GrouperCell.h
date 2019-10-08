//
//  GrouperCell.h
//  TableViewTest
//
//  Created by yjm on 2019/10/4.
//  Copyright © 2019 yjm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GrouperCell : UITableViewCell//该类继承于UITableViewCell

@property (retain,nonatomic) IBOutlet UILabel * lbl_name;
@property (retain,nonatomic) IBOutlet UILabel * lbl_ID;
@property (retain,nonatomic) IBOutlet UILabel * lbl_gender;
@property (retain,nonatomic) IBOutlet UIImageView * lbl_headPortrait;

@end
