//
//  MyConllectionView.m
//  TableViewDemo
//
//  Created by Dingjd on 18/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//
#import "ViewController.h"
#import "MyConllectionView.h"

@interface MyConllectionView()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *tableView;

@property (nonatomic,strong)NSArray *dataArray;//数据源

@end

@implementation MyConllectionView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.dataArray = @[@"abc",@"bcd",@"qwe",@"xyz",@"djd",@"mini",@"samer",@"abab",@"swift"];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(50, 80, 300, 300) style:UITableViewStylePlain];//常规tableView
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"flash cell !!!");
    static NSString *cellId = @"CMainCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];//列出可重用的cell
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    NSUInteger row = [indexPath row];
    //NSLog(@"%lu",(unsigned long)row);
    cell.textLabel.text = [self.dataArray objectAtIndex:row];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头部";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾部";
}

//- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return @[@"a",@"b",@"c"];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;//section的行数
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;//行高
}

//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    //页面的跳转！
    //ViewController *viewController = [[ViewController alloc] init];
    //返回 pop
    [self.navigationController popViewControllerAnimated:true];
    
    NSLog(@"点击了==> %@",cell.textLabel.text);
}
@end
