//
//  BaseViewController.m
//  mysccarservce
//
//  Created by sc-057 on 2019/10/9.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_bg"]];
    [self.view insertSubview:self.background atIndex:0];
    // Do any additional setup after loading the view.
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
