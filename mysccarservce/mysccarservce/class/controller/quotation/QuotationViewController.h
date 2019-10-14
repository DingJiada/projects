//
//  QuotationViewController.h
//  mysccarservce
//
//  Created by sc-057 on 2019/10/10.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuotationViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *brandTextField;
@property (weak, nonatomic) IBOutlet UITextField *typeTextField;

@end

NS_ASSUME_NONNULL_END
