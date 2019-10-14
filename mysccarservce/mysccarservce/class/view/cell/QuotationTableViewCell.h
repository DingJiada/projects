//
//  QuotationTableViewCell.h
//  mysccarservce
//
//  Created by scadmin on 2019/10/11.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuotationModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuotationTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *typeLab;
@property (weak, nonatomic) IBOutlet UILabel *modelLab;
@property (weak, nonatomic) IBOutlet UILabel *priceLab;

-(void)setCells:(QuotationModel *) model;
@end

NS_ASSUME_NONNULL_END
