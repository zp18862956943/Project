//
//  FirstViewController.m
//  封装集合
//
//  Created by 周鹏 on 16/9/28.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"1";
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [BaseLabel createLabelFrame:CGRectMake(0, 64.5, 100, 100) text:@"2" font:[UIFont systemFontOfSize:14.0f] color:[UIColor blackColor]];
    [self.view addSubview:label];
    
    UIButton *btn = [BaseButton createBtnTitle:@"push" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor grayColor] target:self action:@selector(pushClick)];
    btn.frame = CGRectMake(20, 80, 100, 100);
    [self.view addSubview:btn];
}

-(void)pushClick
{
    ViewController *sec = [[ViewController alloc]init];
    [self.navigationController pushViewController:sec animated:true];
}

@end
