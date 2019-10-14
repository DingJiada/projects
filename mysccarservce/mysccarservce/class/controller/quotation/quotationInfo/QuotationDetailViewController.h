//
//  QuotationDetailViewController.h
//  mysccarservce
//
//  Created by scadmin on 2019/10/11.
//  Copyright © 2019 Dingjd. All rights reserved.
//
#import "QuotationTableViewCell.h"
#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuotationDetailViewController : BaseViewController

@property (nonatomic,strong) QuotationTableViewCell *cell;

- (instancetype)initWithCell:(QuotationTableViewCell *)cell;

@end

NS_ASSUME_NONNULL_END
