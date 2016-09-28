//
//  FirstViewController.m
//  封装集合
//
//  Created by 周鹏 on 16/9/28.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "FirstViewController.h"
#import "BaseLabel.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"1";
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [BaseLabel createLabelFrame:CGRectMake(0, 64.5, 100, 100) text:@"2" font:[UIFont systemFontOfSize:14.0f] color:[UIColor blackColor]];
    [self.view addSubview:label];
}



@end
