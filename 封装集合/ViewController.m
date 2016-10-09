//
//  ViewController.m
//  封装集合
//
//  Created by 周鹏 on 16/9/27.
//  Copyright © 2016年 周鹏. All rights reserved.
//

#import "ViewController.h"
#import "CityModel.h"
#import "UIImage+Color.h"
#import "NetWorkingManager.h"
#import "FifthViewController.h"
#import "UIView+Animation.h"

typedef NS_ENUM(NSInteger, Deviation) {
    //以下是枚举成员
    DeviationTrue = 0,
    DeviationFalse = 1

};

@interface ViewController ()
{
    //记录是否偏移
    Deviation devation;
    //存储要偏移的点
    CGPoint point;
}
@property(weak,nonatomic)UIButton *gETBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    devation = DeviationFalse;
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:@"嘻嘻"];
    [self set_Title:str];
    

    UILabel *label = [BaseLabel createLabelFrame:CGRectMake(0, 65, 320, 60) text:@"234234234234234444443333333333333333333333333333333333333333333333333333333333332``" font:[UIFont systemFontOfSize:14.0f] color:[UIColor blackColor]];
    [self.view addSubview:label];
    
    UIButton *GETBtn = [BaseButton createBtnTitle:@"Get" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor redColor] target:self action:@selector(clickGet)];
    GETBtn.frame = CGRectMake(20, 60 + 65, 100, 20);
    [self.view addSubview:GETBtn];
    
    self.gETBtn = GETBtn;
    
    
    UIButton *POSTBtn = [BaseButton createBtnTitle:@"POST" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor redColor] target:self action:@selector(clickPOST)];
    POSTBtn.frame = CGRectMake(160, 60 + 65, 100, 20);
    [self.view addSubview:POSTBtn];
    
    UIButton *PUSHBtn = [BaseButton createBtnTitle:@"PUSH" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor redColor] target:self action:@selector(clickPUSH)];
    PUSHBtn.frame = CGRectMake(100, 160 , 100, 20);
    [self.view addSubview:PUSHBtn];
    
    UIButton *AnimationBtn = [BaseButton createBtnTitle:@"Animation" titleColor:[UIColor blackColor] bgImageName:nil backGroundColor:[UIColor redColor] target:self action:@selector(clickAnimation)];
    AnimationBtn.frame = CGRectMake(100, 200 , 100, 20);
    [self.view addSubview:AnimationBtn];
    
    
    
    
//NSUserDefault
//    [self test3];
    
}
-(UIColor *)set_colorBackground
{
    return [UIColor redColor];
}

-(void)clickGet
{
#pragma mark - GET请求
    [NetWorkingManager requestGETDataWithPath:@"http://192.168.20.25:8044/City/getcitylist" withParamters:nil withProgress:^(float progress) {
        
    } success:^(BOOL isSuccess, id responseObject) {
        NSArray *cityDicArr = [responseObject objectForKey:@"data"];
        
        //转
        [self dicArrToModelArr:cityDicArr];
//        NSLog(@"%@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"这是重写的%@",error);
    }];
}


#pragma mark - 网络请求封装使用

-(void)clickPOST
{
#pragma mark - POST传图片数组
    UIImage *image1 = [UIImage imageNamed:@"no_goodsBuy"];
    UIImage *image2 = [UIImage imageNamed:@"no_network"];
    UIImage *image3 = [UIImage imageNamed:@"no_orders"];
    NSArray *imageArr = [NSArray arrayWithObjects:image1,image2,image3, nil];
    [NetWorkingManager sendPOSTImageWithPath:@"http://192.168.20.25:8044/User/upload" withParamters:nil withImageArray:imageArr withtargetWidth:320.0f withProgress:^(float progress) {
        
    } success:^(BOOL isSuccess, id responseObject) {
        NSLog(@"成功");
   
        
    } failure:^(NSError *error) {
        
    }];
}



-(void)clickPUSH
{
    FifthViewController *five = [[FifthViewController alloc]init];
    [self.navigationController pushViewController:five animated:true];
}
#pragma mark - NSUserDefault操作
-(void)test3
{
    //存
    [UserDefaultsTools localWrite:@"value" key:@"key"];
    //取
    NSString *str = [NSString stringWithFormat:@"%@",[UserDefaultsTools localRead:@"key"]];
    NSLog(@"%@",str);
    
}

-(void)dicArrToModelArr:(NSArray *)dicArr
{
    NSArray *modelArr = [CityModel mj_objectArrayWithKeyValuesArray:dicArr];
    for (CityModel *model in modelArr) {
        NSLog(@"\ncityId=%@\ncityPic=%@\ncityName=%@\ncityStatue=%@",model.cityId,model.cityPic,model.cityName,model.cityStatue);
    }
}

/**
 离开页面导航栏颜色恢复

 @param animated 动画效果
 */
-(void)viewWillDisappear:(BOOL)animated
{
    UIImage *bgimage = [UIImage imageWithColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setBackgroundImage:bgimage forBarMetrics:UIBarMetricsDefault];
}

/**
 拦截标题事件
 
 @param sender view
 */
-(void)title_click_event:(UIView *)sender
{
    NSLog(@"点击了标题");
}


-(void)clickAnimation
{
    if (devation == DeviationFalse) {
        devation = DeviationTrue;
        point = CGPointMake(200, 200);
    }else
    {
        devation = DeviationFalse;
         point = CGPointMake(20, 125);
    }
    
    
#pragma mark-移动
    [self.gETBtn moveTo:point duration:0.5 option:0];
    //withSnapBack 回弹
//    [self.gETBtn raceTo:point withSnapBack:NO];
#pragma mark- 伸缩
//    [self.gETBtn scale:0.5 x:200 y:200 delegate:nil callback:nil];
#pragma mark -绕中心点转动 方向
//    [self.gETBtn spinClockwise:0.5];
//    [self.gETBtn spinCounterClockwise:0.5];
#pragma 旋转后删除
//    [self.gETBtn drainAway:1.0];
#pragma 视图变透明
//    [self.gETBtn changeAlpha:0.1 secs:0.5];
#pragma 闪一下，是否连续
//    [self.gETBtn pulse:0.5 continuously:NO];
//    [self.gETBtn addSubviewWithFadeAnimation:self.view];
    
    
}

@end
