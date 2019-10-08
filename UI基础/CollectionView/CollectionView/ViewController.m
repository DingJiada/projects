//
//  ViewController.m
//  CollectionView
//
//  Created by Dingjd on 18/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"
#import "PublishCell.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation ViewController
{
    UICollectionView *mainCollectionView;
    NSInteger count;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.初始化layout(流水布局)
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    // 定义大小（定义每一个单元的大小）
    layout.itemSize = CGSizeMake(90, 100);
    // 设置最小行间距
    //layout.minimumLineSpacing = 2;
    // 设置垂直间距
    //layout.minimumInteritemSpacing = 2;
    // 设置滚动方向（默认垂直滚动）
    //layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //设置collectionView滚动方向
    //    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    //设置headerView的尺寸大小
    //layout.headerReferenceSize = CGSizeMake(self.view.frame.size.width, 100);
    //该方法也可以设置itemSize
    //layout.itemSize =CGSizeMake(90, 110);
    
    //2.初始化collectionView
    mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(50, 50, 300, 400) collectionViewLayout:layout];
    
    mainCollectionView.backgroundColor = [UIColor clearColor];
    
    //3.注册collectionViewCell（单元格）
    //              （Identifier）
    //注意，此处的ReuseIdentifier 必须和 cellForItemAtIndexPath 方法中 一致 均为 cellId
    [mainCollectionView registerClass:[PublishCell class] forCellWithReuseIdentifier:@"cellId"];
    
    //注册headerView  此处的ReuseIdentifier 必须和 cellForItemAtIndexPath 方法中 一致  均为reusableView
    [mainCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView"];
    
    //4.设置代理
    mainCollectionView.delegate = self;
    mainCollectionView.dataSource = self;
    [self.view addSubview:mainCollectionView];
}

#pragma mark collectionView代理方法
//返回section个数
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
//{
//    return 1;
//}

//每个section的item个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSString *tablePList = [[NSBundle mainBundle] pathForResource:@"tableList" ofType:@"plist"];
    //NSArray *tableData = [[NSArray alloc] initWithContentsOfFile:tablePList];

    PublishCell *cell = (PublishCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    
    //这里设置cell的内容
    
    //[cell.topImage setImage:[UIImage imageNamed:tableData[indexPath.row][@"leftImage"]]];
    UIImage *image2 = [UIImage imageNamed:@"omg 2.jpg"];
    [cell.topImage setImage:image2];
    //cell.btmlabel.text = tableData[indexPath.row][@"titleLabel"];
    cell.btmlabel.text = [NSString stringWithFormat:@"笑脸%ld",(long)count++];//每次拖动刷新都会++
    
    return cell;
}

//设置每个item的尺寸
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(90, 90);
}

//footer的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    return CGSizeMake(10, 10);
}

//header的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(10, 30);
}

//设置每个item的UIEdgeInsets
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//{
//    return UIEdgeInsetsMake(20, 20, 20, 20);
//}

//设置每个item水平间距
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 20;
//}


//设置每个item垂直间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 20;
}


//通过设置SupplementaryViewOfKind 来设置头部或者底部的view，其中 ReuseIdentifier 的值必须和 注册是填写的一致，本例都为 “reusableView”
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView" forIndexPath:indexPath];
    headerView.backgroundColor =[UIColor grayColor];
    UILabel *label = [[UILabel alloc] initWithFrame:headerView.bounds];
    //label.text = @"头部";
    label.font = [UIFont systemFontOfSize:20];
    [headerView addSubview:label];
    
    return headerView;
}

//点击item方法
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    PublishCell *cell = (PublishCell *)[collectionView cellForItemAtIndexPath:indexPath];
    NSString *msg = cell.btmlabel.text;
    NSLog(@"%@",msg);
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
