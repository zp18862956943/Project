//
//  FifthViewController.m
//  封装集合
//
//  Created by 周鹏 on 16/10/8.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
    [self set_Title:str];
    //不能换行，而且拿不到点击事件
//    [self setTitle:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIButton *)set_rightButton
{
    UIButton *btn = [BaseButton createBtnTitle:@"go" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor grayColor] target:nil action:nil];
    btn.frame = CGRectMake(0, 0, 30, 30);
    return btn;
}


/**
 拦截右按钮事件

 @param sender 按钮
 */
-(void)right_button_event:(UIButton *)sender
{
    NSLog(@"点击了右边");
}

/**
 拦截标题事件

 @param sender view
 */
-(void)title_click_event:(UIView *)sender
{
    NSLog(@"点击了标题");
}


@end
