//
//  UserDefaultsTools.m
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "UserDefaultsTools.h"

@implementation UserDefaultsTools
//读取
+(NSString *)localRead:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    return [defaults objectForKey:key];
}
//写入
+(void)localWrite:(NSString *)value key:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:key];
    
    [defaults synchronize];
    
}
+ (NSDictionary *)localDictRead:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    return [defaults objectForKey:key];
    
    
}
+ (void)localDictWrite:(NSDictionary *)value key:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:value forKey:key];
    
    [defaults synchronize];
}
//清除userdefaults
+ (void)clearLoaclData {
    
    NSString *appDomain = [[NSBundle mainBundle]bundleIdentifier];
    [[NSUserDefaults standardUserDefaults]removePersistentDomainForName:appDomain];
    
    
}
+ (void)clearLoaclDataForKey:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:key];
    [defaults synchronize];
    
}
@end
