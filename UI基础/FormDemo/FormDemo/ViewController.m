//
//  ViewController.m
//  FormDemo
//
//  Created by Dingjd on 17/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UITextField *userName;
    UITextField *password;
    UIButton *submit;
    UIButton *helpDoc;
    UITextView *textView;
    UIImageView *imgView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(50, 400, 50, 20)];
    lable.text = @"用户名：";
    lable.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:lable];
    
    userName = [[UITextField alloc] initWithFrame:CGRectMake(100, 400, 130, 20)];
    userName.borderStyle = UITextBorderStyleBezel;
    userName.font = [UIFont systemFontOfSize:12];
    userName.autocapitalizationType = UITextAutocapitalizationTypeNone;//不自动首字母大写，默认首字母会大写
    
    UILabel *lable2 = [[UILabel alloc] initWithFrame:CGRectMake(50, 430, 50, 20)];
    lable2.text = @"密  码：";
    lable2.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:lable2];
    
    password = [[UITextField alloc] initWithFrame:CGRectMake(100, 430, 130, 20)];
    password.secureTextEntry = YES;//密码框！
    password.borderStyle = UITextBorderStyleBezel;
    password.font = [UIFont systemFontOfSize:12];
    
    //submit = [[UIButton alloc] initWithFrame:CGRectMake(150, 460, 60, 20)];
    submit = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    submit.backgroundColor = [UIColor brownColor];
    submit.frame = CGRectMake(120, 460, 60, 20);
    [submit setTitle:@"提交" forState:UIControlStateNormal];
    [submit setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [submit addTarget:self action:@selector(clickPrint) forControlEvents:UIControlEventTouchUpInside];
    
    helpDoc = [UIButton buttonWithType:UIButtonTypeCustom];
    helpDoc.frame = CGRectMake(200, 460, 100, 30);
    [helpDoc setTitle:@"服务条款" forState:UIControlStateNormal];
    [helpDoc addTarget:self action:@selector(showTextView) forControlEvents:UIControlEventTouchUpInside];
    [helpDoc setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    helpDoc.titleLabel.font=[UIFont systemFontOfSize:12];//设置按钮字体大小！
    
    textView = [[UITextView alloc] initWithFrame:CGRectMake(180, 500, 100, 80)];
    textView.text = @"服务条款：xxxxxxxxxalsdjlakskdjjsdjdjaksdjalm mm om om o mo  om om om  mom oadlakjsdkacna ask cjaldaksd akc ";
    textView.layer.borderColor = [UIColor blackColor].CGColor;
    textView.layer.borderWidth = 1;
    textView.hidden = YES;//默认隐藏
    
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(120, 300, 80, 80)];
    UIImage *image = [UIImage imageNamed:@"omg.jpg"];
    //UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 4*44+20)  style:UITableViewStylePlain];
    
    //NSLog(@"%@",tableView.style);
    
    
    
    [imgView setImage:image];
    imgView.hidden = YES;
    
    [self.view addSubview:imgView];
    [self.view addSubview:userName];
    [self.view addSubview:password];
    [self.view addSubview:submit];
    [self.view addSubview:helpDoc];
    [self.view addSubview:textView];
}

-(void)clickPrint {
    NSString *userName2 = userName.text;
    NSString *password2 = password.text;
//    if(imgView.hidden == YES){
//        imgView.hidden = NO;
//    }else{
//        imgView.hidden = YES;
//    }
    if([@"dingjiada" isEqualToString:userName2] && [@"123" isEqualToString:password2]) {
        UIImage *image = [UIImage imageNamed:@"omg 2.jpg"];
        
        [imgView setImage:image];
        imgView.hidden = NO;
    }else{
        UIImage *image = [UIImage imageNamed:@"omg.jpg"];
        
        [imgView setImage:image];
        imgView.hidden = NO;
    }
    
    NSLog(@"%@ : %@",userName2,password2);
}
-(void)showTextView {
    if(textView.hidden == YES){
        textView.hidden = NO;
    }else{
        textView.hidden = YES;
    }
    //NSLog(@"ok...");
}

@end
