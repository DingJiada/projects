//
//  HomeViewController.h
//  mysccarservce
//
//  Created by sc-057 on 2019/10/9.
//  Copyright © 2019 Dingjd. All rights reserved.
//

//#import <UIKit/UIKit.h>
#import "BaseViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UIButton *createProjectBtn;
@property (weak, nonatomic) IBOutlet UIButton *searchProjectBtn;
@property (weak, nonatomic) IBOutlet UIButton *agencyProjectBtn;
@property (weak, nonatomic) IBOutlet UIButton *quotationBtn;

@end

NS_ASSUME_NONNULL_END
