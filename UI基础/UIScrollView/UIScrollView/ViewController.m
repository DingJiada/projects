//
//  ViewController.m
//  UIScrollView
//
//  Created by Dingjd on 19/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(40, 35, 300, 400)];
    self.scrollView.contentSize = CGSizeMake(300, 800);//内容大小
    //contentSize一般比scrollView的CGSize更大 scrollView实现滚动显示
    for (int i = 0; i < 4; i++)
    {
        UIImageView *imgV=[[UIImageView alloc]initWithFrame:CGRectMake(0, i * 200, 300, 200)];
        //创建图片名称
        UIImage *image = [UIImage imageNamed:@"xiaoyu.jpg"];
        
        //添加图片
        [imgV setImage:image];
        //添加图片视图到滚动视图上
        [self.scrollView addSubview:imgV];
        
    }
    //self.scrollView.contentOffset = CGPointMake(0, 200);//相对原点偏移量
    [self.scrollView setContentOffset:CGPointMake(0, 300) animated:YES];//YES可以设置偏移的同时，出现动画效果（动画效果没有...）
    
    [self.view addSubview:self.scrollView];
}


@end
