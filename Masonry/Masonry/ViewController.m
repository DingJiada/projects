//
//  ViewController.m
//  Masonry
//
//  Created by Dingjd on 25/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"
//#import <Masonry/Masonry.h>
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view1 = [[UIView alloc]init];
    
    view1.backgroundColor = [UIColor blackColor];
    
    view1.layer.borderColor = [UIColor redColor].CGColor;
    
    view1.layer.borderWidth = 1;
    
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc]init];
    
    view2.backgroundColor = [UIColor grayColor];
    
    view2.layer.borderColor = [UIColor redColor].CGColor;
    
    view2.layer.borderWidth = 1;
    
    [self.view addSubview:view2];
    
    UIView *view3 = [[UIView alloc]init];
    
    view3.backgroundColor = [UIColor greenColor];
    
    view3.layer.borderColor = [UIColor redColor].CGColor;
    
    view3.layer.borderWidth = 1;
    
    [self.view addSubview:view3];
    
    CGFloat width = 200;
    CGFloat height = 200;
    CGFloat padding = 10;
    // 一句代码代替上面的多行
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(width,height);
        
        make.left.equalTo(self.view).offset(padding);
        
        make.top.mas_equalTo(100);
        //make.center.equalTo(self.view);
        //make.top.left.bottom.right.equalTo(view1).insets(UIEdgeInsetsMake(-20, -20, -20, -20));
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(view1);//大小与view1相等
        
        // 中心y坐标与黑色view相等,也可以设置top
        make.centerY.equalTo(view1);
        // 左边与黑色view的右边相等,加上20的偏移量
        make.left.equalTo(view1.mas_right).offset(padding);

    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(view1);
        make.left.equalTo(view1);
        make.top.mas_equalTo(view1.mas_bottom).offset(padding);
    }];
}


@end
