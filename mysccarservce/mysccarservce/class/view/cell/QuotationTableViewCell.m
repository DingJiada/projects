//
//  QuotationTableViewCell.m
//  mysccarservce
//
//  Created by scadmin on 2019/10/11.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "QuotationTableViewCell.h"

@implementation QuotationTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCells:(QuotationModel *) model {
    self.nameLab.text = model.nameLab;
    
    self.typeLab.text = model.kindLab;
    
    self.modelLab.text = model.modelLab;
    
    self.priceLab.text = model.priceLab;
}
@end
