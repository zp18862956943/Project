//
//  AppDelegate.m
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "GVUserDefaults+BBProperties.h"
#import "introductoryPagesHelper.h"
#import "BaseTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //第一次运行获取本地语言，进行设置
    if (![[NSUserDefaults standardUserDefaults]objectForKey:@"appLanguage"]) {
        
        NSArray *languages = [NSLocale preferredLanguages];
        
        NSString *language = [languages objectAtIndex:0];
        
        if ([language hasPrefix:@"zh-Hans"]) {//开头匹配
            
            [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
            
        }else{
            
            [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
            
        }
        
    }
    
    //加载页面
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupHomeViewController];
    
    //引导页面加载
    [self setupIntroductoryPage];
    
    [self.window makeKeyAndVisible];

    
    return YES;
}

//首页
-(void)setupHomeViewController
{
    BaseTabBarController *tabBarController = [[BaseTabBarController alloc] init];
    [self.window setRootViewController:tabBarController];
//    self.window.backgroundColor = [UIColor whiteColor];
}

-(void)setupIntroductoryPage
{
    if (BBUserDefault.isNoFirstLaunch)
    {
        return;
    }
    BBUserDefault.isNoFirstLaunch=YES;
    NSArray *images=@[@"introductoryPage1",@"introductoryPage2",@"introductoryPage3",@"introductoryPage4"];
    [introductoryPagesHelper showIntroductoryPageView:images];
}



@end
