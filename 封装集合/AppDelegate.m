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
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //加载页面
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupLoginViewController];
    
    //引导页面加载
    [self setupIntroductoryPage];
    
    return YES;
}

-(void)setupLoginViewController
{
    ViewController *logInVc = [[ViewController alloc]init];
    self.window.rootViewController = logInVc;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
