//
//  HomeViewController.m
//  mysccarservce
//
//  Created by sc-057 on 2019/10/9.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "HomeViewController.h"
#import "QuotationViewController.h"
#import "SearchProjectViewController.h"
#import "AgencyProjectViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)newProjectClick:(id)sender {
}
- (IBAction)searchProjectClick:(id)sender {
    SearchProjectViewController *searchProjectVC = [[SearchProjectViewController alloc] initWithNibName:@"SearchProjectViewController" bundle:nil];
    
    [self.navigationController pushViewController:searchProjectVC animated:YES];
    
}
- (IBAction)agencyProjectClick:(id)sender {
    AgencyProjectViewController *agencyProjectVC = [[AgencyProjectViewController alloc] initWithNibName:@"AgencyProjectViewController" bundle:nil];
    
    [self.navigationController pushViewController:agencyProjectVC animated:YES];
}
- (IBAction)quotationClick:(id)sender {
    QuotationViewController *quotationVC = [[QuotationViewController alloc] initWithNibName:@"QuotationViewController" bundle:nil];
    
    [self.navigationController pushViewController:quotationVC animated:YES];
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
