//
//  TestTableViewCell.h
//  xibdemo
//
//  Created by Dingjd on 26/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lab1;
@property (weak, nonatomic) IBOutlet UILabel *lab2;

-(void)setCells:(NSString *)label1 withLab2:(NSString *)label2;
@end

NS_ASSUME_NONNULL_END
