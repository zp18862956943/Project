//
//  FirstViewController.m
//  封装集合
//
//  Created by 周鹏 on 16/9/28.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"
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
    
    UIButton *langurageBtn = [BaseButton createBtnTitle:@"change\nLangurage" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor grayColor] target:self action:@selector(langurageClick)];
    langurageBtn.frame = CGRectMake(20, 200, 100, 100);
    [self.view addSubview:langurageBtn];
}

-(void)pushClick
{
    ViewController *sec = [[ViewController alloc]init];
    [self.navigationController pushViewController:sec animated:true];
}

-(void)langurageClick
{
    //拿到当前设置语言
    NSString *langurage = [UserDefaultsTools localRead:@"appLanguage"];
   
    if ([langurage hasPrefix:@"zh-Hans"]) {//开头匹配
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
        [[NSUserDefaults standardUserDefaults] synchronize];

    }else{
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
        [[NSUserDefaults standardUserDefaults] synchronize];

    }
    
    
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [app setupHomeViewController];
}


-(UIButton *)set_leftButton
{
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 0, 40, 40);
//    [btn setTitle:@"确定" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    UIButton *btn = [BaseButton createBtnTitle:@"go" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor grayColor] target:nil action:nil];
    btn.frame = CGRectMake(0, 0, 30, 30);
    return btn;
}


-(void)left_button_event:(UIButton *)sender
{
    NSLog(@"dasd");
}

@end
