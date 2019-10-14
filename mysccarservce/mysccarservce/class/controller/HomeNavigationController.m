//
//  HomeNavigationController.m
//  mysccarservce
//
//  Created by scadmin on 2019/10/10.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "HomeNavigationController.h"

@interface HomeNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation HomeNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.navigationBar setShadowImage:[self  imageFromColor:[UIColor colorWithRed:59/255 green:61/255 blue:64/255 alpha:1] withSize:CGSizeMake(20, 0.5)]];
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];//导航栏透明效果
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
    [UIColor whiteColor], NSForegroundColorAttributeName,
    [UIFont systemFontOfSize:20], NSFontAttributeName, nil]];
    //self.interactivePopGestureRecognizer.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    [backItem setTintColor:[UIColor whiteColor]];
    
    viewController.navigationItem.backBarButtonItem = backItem;
    
    [super pushViewController:viewController animated:animated];
    
//    CGRect frame = self.tabBarController.tabBar.frame;
//    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
//    self.tabBarController.tabBar.frame = frame;
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
