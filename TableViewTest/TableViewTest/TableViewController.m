//
//  TableViewController.m
//  TableViewTest
//
//  Created by yjm on 2019/9/27.
//  Copyright © 2019 yjm. All rights reserved.
//

#import "TableViewController.h"
#import "GrouperCell.h"

@interface TableViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

}

//自定义cell
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //重用单元格
    GrouperCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Group_Cell"];
    
    //初始化单元格
    if(cell == nil)
    {
        NSArray * nib = [[NSBundle mainBundle] loadNibNamed:@"GrouperCell" owner:self options:nil];
        //xib文件
        cell = [nib objectAtIndex:0];
    }
    
    //赋值
    cell.lbl_name.text = [NSString stringWithFormat:@"男%li",indexPath.row+1];
    cell.lbl_ID.text = [NSString stringWithFormat:@"%li",indexPath.row+1];
    cell.lbl_gender.text = @"男";
    cell.lbl_headPortrait.image = [UIImage imageNamed:@"photo"];
    return cell;
}

////为tableView的cell赋值
//- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    cell.textLabel.text = [NSString stringWithFormat:@"第%li行",indexPath.row+1];
//    return cell;
//}

//设置table的行数
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

//cell的点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了第%li行",indexPath.row+1);
}

// 设置 cell 是否允许左滑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}

// 设置默认的左滑按钮的title
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"按钮";
}

// 点击左滑出现的按钮时触发
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点击左滑出现的按钮时触发");
}

// 左滑结束时调用(只对默认的左滑按钮有效，自定义按钮时这个方法无效)
-(void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"左滑结束");
}

@end
