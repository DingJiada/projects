//
//  ViewController.m
//  HelloWorld
//
//  Created by Dingjd on 16/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"
#import "controller/MyUIView.h"
#import "controller/MyLable.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIButton *btn1;
    UILabel *lable;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MyUIView *uiView = [[MyUIView alloc] init];
    
    [self.view addSubview:[uiView createUIView]];//UIView
    
    MyLable *myLable = [[MyLable alloc] init];
    lable = [myLable createLable];
    
    [self.view addSubview:lable];//Lable
    
    //1.使用类创建一个按钮对象
     UIButton *headbtn=[[UIButton alloc] initWithFrame:CGRectMake(100 ,100, 100, 100)];
    //设置按钮对象为自定义型
    headbtn=[UIButton buttonWithType:UIButtonTypeCustom];//Custom类型  自定义类型
    
    //2.设置对象的各项属性
    //(1)位置等通用属性设置
    headbtn.frame=CGRectMake(100, 100, 100, 100);//位置大小
    
    //(2)设置普通状态下按钮的属性
    //[headbtn setBackgroundImage:[UIImage imageNamed:@"i"] forState:UIControlStateNormal];
    [headbtn setTitle:@"点我！" forState:UIControlStateNormal];
    [headbtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //(3)设置高亮状态下按钮的属性
    //[headbtn setBackgroundImage:[UIImage imageNamed:@"a"] forState:UIControlStateHighlighted];
    [headbtn setTitle:@"还行吧~" forState:UIControlStateHighlighted];
    [headbtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //3.把对象添加到视图中展现出来
    [self.view addSubview:headbtn];
    //注意点！
    //self.headImageView = headbtn;
    
    btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn1.frame = CGRectMake(100, 500, 100, 100);
    
    [btn1 setTitle:@"按钮btn" forState:UIControlStateNormal];
    
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btn1 addTarget:self action:@selector(pring1) forControlEvents:UIControlEventTouchUpInside];//UIControlEventTouchUpInside 单击事件
    //btn1.backgroundColor = [UIColor blackColor];
     //btn1.showsTouchWhenHighlighted=NO;//没有看到效果。
    
    [self.view addSubview:btn1];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 500, 200, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
//    typedef enum{
//        UITextBorderStyleNone,//无样式边框
//        UITextBorderStyleLine,//直线
//        UITextBorderStyleBezel,//上边框和左边框加重
//        UITextBorderStyleRoundedRect  //圆角
//    } UITextBorderStyle;
    //lable.text = textField.text;//并不能实时响应
    textField.placeholder = @"可以输入内容";
    //textField.secureTextEntry = YES;//密码框！
    //textField.autocorrectionType = UITextAutocorrectionTypeNo;//不自动纠错
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;//不自动首字母大写，默认首字母会大些
    
    [self.view addSubview:textField];
    
}
- (void)pring1 {
    //NSLog(@"%@",btn1.currentTitleColor);
    
    
    if (btn1.isSelected) {
        [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        btn1.selected = NO;
        NSLog(@"if");
    }
    
    else {
        [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn1.selected = YES;
        NSLog(@"else");
    }
    
    NSLog(@"the method is pring1");
}

- (void)viewDidAppear:(BOOL)animated {//页面加载可见后执行
    [super viewDidAppear:animated];
    
    
}
/*以上方法在view加载过程中依次调用。一般在loadView或者viewDidLoad中添加自定义的
 *view，但不能添加过于耗时的操作，以避免界面加载被阻塞导致的卡顿。一般把如网络操作，
 *数据库操作加载viewDidAppear中，界面加载可见之后执行。
 */



@end
