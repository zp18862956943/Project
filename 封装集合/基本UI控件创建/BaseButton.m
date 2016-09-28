//
//  BaseButton.m
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton
+(UIButton *)createBtnFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor bgImageName:(NSString *)bgImageName backGroundColor:(UIColor *)backGroundColor target:(id)target action:(SEL)action{
    
    UIButton *btn = [self createBtnTitle:title titleColor:titleColor bgImageName:bgImageName backGroundColor:backGroundColor target:target action:action];
    btn.frame = frame;
    return btn;
    
}

+(UIButton *)createBtnTitle:(NSString *)title titleColor:(UIColor *)titleColor bgImageName:(NSString *)bgImageName backGroundColor:(UIColor *)backGroundColor target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    btn.titleLabel.font = CHINESE_SYSTEM(12.0f);
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    
    if (bgImageName.length == 0 ||bgImageName == nil) {
        
        [btn setBackgroundColor:backGroundColor];
        
    }else
    {
        [btn setBackgroundImage:[UIImage imageNamed:bgImageName] forState:UIControlStateNormal];
    }
    
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
@end
