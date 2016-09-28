//
//  BaseLabel.m
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "BaseLabel.h"

@implementation BaseLabel

+(UILabel *)createLabelFrame:(CGRect)frame backGroundColor:(UIColor *)backGroundcolor text:(NSString *)text textFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines
{
    UILabel *label = [self createLabelBackGroundColor:backGroundcolor text:text textFont:font textColor:textColor textAlignment:textAlignment numberOfLines:numberOfLines];
    label.frame = frame;
    
    return label;
}

+(UILabel *)createLabelBackGroundColor:(UIColor *)backGroundcolor text:(NSString *)text textFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines
{
    UILabel *label = [[UILabel alloc]init];
    
    label.backgroundColor = backGroundcolor;
    
    label.text = text;
    
    label.font = font;
    
    label.textAlignment = textAlignment;
    
    label.textColor = textColor;
    
    label.numberOfLines = numberOfLines;
    
    return label;
}

+(UILabel *)createLabelFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font color:(UIColor *)textColor
{
    return [self createLabelFrame:frame backGroundColor:[UIColor clearColor] text:text textFont:font textColor:textColor textAlignment:NSTextAlignmentCenter numberOfLines:1];
}
@end
