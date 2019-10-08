//
//  ViewController.m
//  onetestoc
//
//  Created by Dingjd on 15/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSTimer *_timer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //_timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timePrint) userInfo:nil repeats:true];
}

- (void)timePrint{
    NSLog(@"1111");
}
@end
