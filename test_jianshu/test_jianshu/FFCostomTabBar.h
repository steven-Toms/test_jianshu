//
//  FFCostomTabBar.h
//  FFTestCustomTabBar
//
//  Created by mac-Win on 16/8/17.
//  Copyright © 2016年 mac-Win. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFCostomTabBar;
@protocol FFCostomTabBarDelegate <NSObject>

- (void)clickCenterWithTabBarBtn:(FFCostomTabBar *)currentBtn;

@end

@interface FFCostomTabBar : UITabBar

@property (nonatomic, strong) UIButton *centerBtn;
@property (nonatomic, weak) id<FFCostomTabBarDelegate> deleagete;

@end
