//
//  FFCostomViewController.m
//  FFTestCustomTabBar
//
//  Created by mac-Win on 16/8/17.
//  Copyright © 2016年 mac-Win. All rights reserved.
//

#import "FFCostomViewController.h"
#import "FF_FindViewController.h"
#import "FF_CareViewController.h"
#import "FF_WriteViewController.h"
#import "FF_MessageViewController.h"
#import "FF_MeViewController.h"
#import "FFCostomTabBar.h"

@interface FFCostomViewController ()<FFCostomTabBarDelegate>

@end

@implementation FFCostomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FF_FindViewController *FF_FindVC = [[FF_FindViewController alloc]init];
    FF_CareViewController *FF_CareVC = [[FF_CareViewController alloc]init];
    FF_MessageViewController *FF_MessageVC = [[FF_MessageViewController alloc]init];
    FF_MeViewController *FF_MeVC = [[FF_MeViewController alloc]init];
    
    [self addChildVC:FF_FindVC WithTitle:@"发现" WithCurrentImg:[UIImage imageNamed:@"icon_tabbar_home_25x25_"] WithSelectedImg:[UIImage imageNamed:@"icon_tabbar_home_active_25x25_"]];
    [self addChildVC:FF_CareVC WithTitle:@"关注" WithCurrentImg:[UIImage imageNamed:@"icon_tabbar_subscription_25x25_"] WithSelectedImg:[UIImage imageNamed:@"icon_tabbar_subscription_active_25x25_"]];
    [self addChildVC:FF_MessageVC WithTitle:@"消息" WithCurrentImg:[UIImage imageNamed:@"icon_tabbar_notification_25x25_"] WithSelectedImg:[UIImage imageNamed:@"icon_tabbar_notification_active_25x25_"]];
    [self addChildVC:FF_MeVC WithTitle:@"我的" WithCurrentImg:[UIImage imageNamed:@"icon_tabbar_me_25x25_"] WithSelectedImg:[UIImage imageNamed:@"icon_tabbar_me_active_25x25_"]];
    
    FFCostomTabBar *costomTabBar = [[FFCostomTabBar alloc]init];
    costomTabBar.deleagete = self;
    [self setValue:costomTabBar forKey:@"tabBar"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addChildVC:(UIViewController *)childVC WithTitle:(NSString *)title WithCurrentImg:(UIImage *)currentImg WithSelectedImg:(UIImage *)selectedImg
{
    childVC.title = title;
    childVC.tabBarItem.image = currentImg;
    childVC.tabBarItem.selectedImage = [selectedImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:childVC];
    [self addChildViewController:nav];
}

- (void)clickCenterWithTabBarBtn:(FFCostomTabBar *)currentBtn
{
    FF_WriteViewController *FF_WriteVC = [[FF_WriteViewController alloc]init];
    [self presentViewController:FF_WriteVC animated:YES completion:^{
        
    }];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
