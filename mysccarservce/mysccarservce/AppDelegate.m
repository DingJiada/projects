//
//  AppDelegate.m
//  mysccarservce
//
//  Created by sc-057 on 2019/10/9.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "HomeNavigationController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];

    HomeViewController *homeVC = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    HomeNavigationController *nav = [[HomeNavigationController alloc] initWithRootViewController:homeVC];
    
    self.window.rootViewController = nav;
    
//     [self.window makeKeyAndVisible];
    
    return YES;
}

@end
