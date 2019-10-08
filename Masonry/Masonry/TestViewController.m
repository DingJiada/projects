//
//  TestViewController.m
//  Masonry
//
//  Created by Dingjd on 25/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "TestViewController.h"
#import "TestTableViewCell.h"

@interface TestViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tabView;

@property(nonatomic,strong) NSArray *dataArray;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.tabView registerClass:[TestTableViewCell class] forCellReuseIdentifier:@"cell"];
    self.dataArray = @[@"emmmm",@"xib_1",@"xib_2",@"xib_3",@"xib_4",@"xib_5",@"xib_6",@"xib_7",@"xib_8",@"emmmm2"];
    // Do any additional setup after loading the view from its nib.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
//    if(cell == nil){
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellId"];
//    }
    
    
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count / 2;
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
