//
//  BasicViewController.m
//  xibdemo
//
//  Created by Dingjd on 04/10/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)click:(id)sender {
    
    if(_textField1.text != NULL && ![@"" isEqualToString:_textField1.text])
        NSLog(@"the input value is %@",_textField1.text);
    
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
