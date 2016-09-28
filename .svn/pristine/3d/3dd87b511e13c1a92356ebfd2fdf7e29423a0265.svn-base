//
//  UserDefaultsTools.h
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsTools : NSObject
//写userdefault 文件
//***************************************************************
/**
 *  NSUserDefaults可以存储的数据类型包括：NSData、NSString、NSNumber、NSDate、NSArray、NSDictionary。如果要存储其他类型，则需要转换为前面的类型，才能用NSUserDefaults存储。具体实现为：
 */
+ (NSString *)localRead:(NSString *)key;
+ (void)localWrite:(NSString *)value key:(NSString *)key;
+ (NSDictionary *)localDictRead:(NSString *)key;
+ (void)localDictWrite:(NSDictionary *)value key:(NSString *)key;
+ (void)clearLoaclData; //全部清除
+ (void)clearLoaclDataForKey:(NSString *)key;//清除某一个
//***************************************************************
@end
