//
//  QuotationDetailViewController.m
//  mysccarservce
//
//  Created by scadmin on 2019/10/11.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "QuotationDetailViewController.h"

@interface QuotationDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabInfo;
@property (weak, nonatomic) IBOutlet UILabel *brandLabInfo;
@property (weak, nonatomic) IBOutlet UILabel *modelLabInfo;
@property (weak, nonatomic) IBOutlet UILabel *priceLabInfo;
@property (weak, nonatomic) IBOutlet UILabel *detailLabInfo;

@end

@implementation QuotationDetailViewController

- (instancetype)initWithCell:(QuotationTableViewCell *)cell{
    self = [super init];
    if(self){
        self.cell = cell;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(self.cell != nil){
        self.title = self.cell.nameLab.text;
        self.nameLabInfo.text = self.cell.nameLab.text;
        self.brandLabInfo.text = self.cell.typeLab.text;
        self.modelLabInfo.text = self.cell.modelLab.text;
        self.priceLabInfo.text = self.cell.priceLab.text;
    }
    
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
