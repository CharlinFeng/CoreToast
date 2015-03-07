//
//  ViewController.m
//  CoreToast
//
//  Created by 沐汐 on 15-3-7.
//  Copyright (c) 2015年 沐汐. All rights reserved.
//

#import "ViewController.h"
#import "CoreToast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    btn.center=self.view.center;
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}



-(void)btnClick:(UIButton *)btn{
    
    NSLog(@"点击了按钮");
    
    [CoreToast showMsgType:CoreToastMsgTypeInfo msg:nil subMsg:@"这个一个子标题" timeInterval:3.0 trigger:btn apperanceBlock:^{
        NSLog(@"begin:%@",[NSThread currentThread]);
    } completionBlock:^{
        NSLog(@"end:%@",[NSThread currentThread]);
    }];
    
    
    
}




@end
