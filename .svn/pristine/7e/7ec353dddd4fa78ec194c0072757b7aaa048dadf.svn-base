//
//  BaseLabel.h
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface BaseLabel : NSObject


/**
 创建Label

 @param frame           frame
 @param backGroundcolor 背景色
 @param text            文字
 @param font            大小
 @param textColor       文字颜色
 @param textAlignment   对其方式
 @param numberOfLines   行数

 @return label
 */
+ (UILabel *)createLabelFrame:(CGRect)frame backGroundColor:(UIColor *)backGroundcolor text:(NSString *)text textFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;


/**
 创建Label暂无frame，适用用第三方布局的情况

 @param backGroundcolor 背景色
 @param text            内容
 @param font            字体font
 @param textColor       字体颜色
 @param textAlignment   对齐方式
 @param numberOfLines   行数

 @return label
 */
+ (UILabel *)createLabelBackGroundColor:(UIColor *)backGroundcolor text:(NSString *)text textFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

/**
 默认一行，居中，背景透明
 
 @param frame     frame
 @param text      内容
 @param font      字体font
 @param textColor 颜色
 
 @return label
 */
+ (UILabel *)createLabelFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font color:(UIColor *)textColor;
@end
