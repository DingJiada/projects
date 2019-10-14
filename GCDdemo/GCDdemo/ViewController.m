//
//  ViewController.m
//  GCDdemo
//
//  Created by scadmin on 2019/10/14.
//  Copyright © 2019 scadmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property int g;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.g = 9;
    //NSLog(@"%d",self.g);
    NSLog(@"%@",^{
        NSLog(@"%d",self.g);
    });
    
    NSLog(@"%@",[^{
        NSLog(@"%d",self.g);
    } copy]);
    
    void (^myBlock)() = ^{
        NSLog(@"%d",self.g);
    };
    myBlock();
    
    // Do any additional setup after loading the view.
}
-(void)test1 {
    //dispatch_async(dispatch_get_global_queue(<#long identifier#>, <#unsigned long flags#>))
}

@end
