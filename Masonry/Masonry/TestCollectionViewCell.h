//
//  TestCollectionViewCell.h
//  Masonry
//
//  Created by Dingjd on 26/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCollectionViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIButton *btn1;

-(void)setCells:(NSString *)label withBtn:(NSString *)btnTitle;

@end

NS_ASSUME_NONNULL_END
