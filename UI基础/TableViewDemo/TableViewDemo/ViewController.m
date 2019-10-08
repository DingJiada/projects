//
//  ViewController.m
//  TableViewDemo
//
//  Created by Dingjd on 17/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"
#import "MyConllectionView.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

#pragma mark - 表格
@property (nonatomic,strong)UITableView *tableView;
#pragma mark - 数组
@property (nonatomic,strong)NSArray *dataArray;

@property (nonatomic,strong)NSArray *dataArray2;

@property (nonatomic) NSUInteger rowDataIndex;

@end

@implementation ViewController

//为表视图单元格提供数据，必须实现
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    //static NSString *CMainCell = @"CMainCell";
    NSLog(@"flash cell 1111 1111");
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];//列出可重用的cell
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    //NSUInteger row = [indexPath row];
    //NSLog(@"%lu",(unsigned long)row);
    //NSDictionary *rowDict = [self.dataArray objectAtIndex:row];
    if(_rowDataIndex < _dataArray.count){
        cell.textLabel.text = [self.dataArray objectAtIndex:_rowDataIndex];
        _rowDataIndex++;
    }
    //cell.textLabel.text = @"aaa";
    //cell.accessoryType = UITableViewCellStyleDefault;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头部";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾部";
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return @[@"a",@"b",@"c"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;//section显示的行数
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;//行高
}

//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    MyConllectionView *myVC = [[MyConllectionView alloc] init];
    [self.navigationController pushViewController:myVC animated:YES];
    
    
    NSLog(@"====> %@",cell.textLabel.text);
}

//分节
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.dataArray = @[@"abc",@"bcd",@"qwe",@"xyz",@"djd",@"mini",@"samer",@"abab",@"swift"];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(32, 38, 350, 350)  style:UITableViewStyleGrouped];
    
    //_tableView.prefetchDataSource = self;
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView=[UIView new];
    [self.view addSubview:self.tableView];
}


@end
