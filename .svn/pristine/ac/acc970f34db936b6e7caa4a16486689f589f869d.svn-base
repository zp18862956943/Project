//
//  BaseButton.h
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface BaseButton : NSObject


/**
 创建Button

 @param frame       frame
 @param title       内容
 @param titleColor  按钮字体颜色
 @param bgImageName 背景图片
 @param backGroundColor 背景色
 @param target      处理对象
 @param action      事件

 @return button
 */
+ (UIButton *)createBtnFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor bgImageName:(NSString *)bgImageName backGroundColor:(UIColor *)backGroundColor target:(id)target action:(SEL)action;

/**
 创建button，初始化不给frame，适用之后用第三方布局

 @param title           title
 @param titleColor      titleColor
 @param bgImageName     bgImageName
 @param backGroundColor backGroundColor
 @param target          target
 @param action          action

 @return button
 */
+ (UIButton *)createBtnTitle:(NSString *)title titleColor:(UIColor *)titleColor bgImageName:(NSString *)bgImageName backGroundColor:(UIColor *)backGroundColor target:(id)target action:(SEL)action;

@end
