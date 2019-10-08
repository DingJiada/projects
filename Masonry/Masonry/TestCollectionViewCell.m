//
//  TestCollectionViewCell.m
//  Masonry
//
//  Created by Dingjd on 26/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "TestCollectionViewCell.h"

@implementation TestCollectionViewCell

-(void)setCells:(NSString *)label withBtn:(NSString *)btnTitle {
    self.title.text = label;
    //[self.btn1 setTitle:btnTitle forState:UIControlStateNormal];
}
@end
