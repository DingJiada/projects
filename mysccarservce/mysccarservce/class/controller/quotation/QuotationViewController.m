//
//  QuotationViewController.m
//  mysccarservce
//
//  Created by sc-057 on 2019/10/10.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "QuotationViewController.h"
#import "QuotationTableViewCell.h"
#import "QuotationModel.h"
#import "QuotationDetailViewController.h"

@interface QuotationViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation QuotationViewController
{
    NSArray *dataSource;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"QuotationTableViewCell" bundle:nil] forCellReuseIdentifier:@"QuotationTableViewCell"];
    //self.tableView.tableFooterView = [UIView new];
    self.title = @"报价单";
    
    self.tableView.hidden = YES;
    QuotationModel *q1 = [[QuotationModel alloc] init];
    q1.nameLab = @"手机";
    q1.kindLab = @"锤子";
    q1.modelLab = @"锤子2代";
    q1.priceLab = @"120RMB";
    
    QuotationModel *q2 = [[QuotationModel alloc] init];
    q2.nameLab = @"音响";
    q2.kindLab = @"BOOM";
    q2.modelLab = @"1XR";
    q2.priceLab = @"43RMB";
    
    QuotationModel *q3 = [[QuotationModel alloc] init];
    q3.nameLab = @"轮胎";
    q3.kindLab = @"本田";
    q3.modelLab = @"白金";
    q3.priceLab = @"33RMB";
    
    dataSource = @[q1,q2,q3,q1,q2,q3,q1,q2,q3,q1,q2,q3,q1,q2,q3,q1,q2,q3,q1,q2,q3,q1,q2,q3];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)queryClick:(id)sender {
    if(dataSource != nil)
        if(self.tableView.hidden == YES)
            self.tableView.hidden = NO;
    
    
    
}
- (IBAction)resetClick:(id)sender {
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    QuotationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuotationTableViewCell" forIndexPath:indexPath];
    if (cell ==nil) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"QuotationTableViewCell" owner:self options:nil] lastObject];
    }
    [cell setCells:[dataSource objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    QuotationTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    QuotationDetailViewController *qdVC = [[QuotationDetailViewController alloc] initWithCell:cell];
    
    [self.navigationController pushViewController:qdVC animated:YES];
    
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
