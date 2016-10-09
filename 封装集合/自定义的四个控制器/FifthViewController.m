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
    
    [self setViewFrame];
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

-(void)setViewFrame
{
    int padding = 10;
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
    
    
    UIView *view0 = [[UIView alloc]init];
    view0.backgroundColor = [UIColor yellowColor];
    [view addSubview:view0];
    
    
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor redColor];
    [view addSubview:view1];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake( 65 + padding, padding, padding, padding));
    }];
    
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.insets(UIEdgeInsetsMake(3 * padding, 3 * padding, 3 * padding, 3 * padding));
//        make.centerY.mas_equalTo(view.mas_centerY);
        make.top.offset(padding);
        make.left.equalTo(view.mas_left).with.offset(padding);
        make.right.equalTo(view1.mas_left).with.offset(-padding);
        make.height.mas_equalTo(@150);
        make.width.equalTo(view1);
        
    }];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(view.mas_centerY);
        make.top.equalTo(view0);
        make.left.equalTo(view0.mas_right).with.offset(padding);
        make.right.equalTo(view.mas_right).with.offset(-padding);
        make.height.mas_equalTo(@150);
//        make.width.equalTo(view0);
    }];
    
//    [view mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(200, 200));
//    }];
}
@end
