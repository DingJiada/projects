//
//  main.m
//  TestOC
//
//  Created by Dingjd on 12/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = @[@12,@43,@2345,@457,@88,@39,@6,@35,@2234];
        
        int num;//取到的 个位值
        
        for(int i =0 ; i< arr.count ; i++){
            num = [arr[i] integerValue] % 10;
            switch(num){
                case 1:
                case 2:
                    NSLog(@"值为1,2");
                    break;
                case 3:
                case 6:
                case 9:
                    NSLog(@"被3整除？");
                    break;
                case 4:
                    NSLog(@"10086");
                    break;
                case 5:
                case 7:
                    NSLog(@"%f",[arr[i] integerValue] * 1.25);
                    break;
                case 8:
                    NSLog(@"8");
                    break;
            }
            
        }
        
        
        NSString *str = @"35，64，72，103，0，24，18，17，19，21";
        
        
        int result;//乘法表计算的结果
        for(int i= 1; i < 10; i++){
            for(int j = 1; j < 10; j++){
                result = i * j;
                NSLog(@"%d * %d = %d",i,j,result);
            }
        }
        
        NSArray *arr2 = @[@"asdas",@"fashj",@"oasks",@"asdf",@"zasdh"];
        
        
        NSString *checkStr = @"^";
        
    }
    return 0;
}
