//
//  FF_MessageViewController.m
//  FFTestCustomTabBar
//
//  Created by mac-Win on 16/8/17.
//  Copyright © 2016年 mac-Win. All rights reserved.
//

#import "FF_MessageViewController.h"
#import "Define.h"


@interface FF_MessageViewController ()

@end

@implementation FF_MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavRightItem];
    
    // Do any additional setup after loading the view.
}

- (void)setNavRightItem
{
//    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:MessageNavRightItemImage style:UIBarButtonItemStylePlain target:self action:@selector(clickOnRightItem:)];
    UIButton *rightBarBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [rightBarBtn setImage:MessageNavRightItemImage forState:UIControlStateNormal];
    [rightBarBtn addTarget:self action:@selector(clickOnRightItem:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBarBtnItem = [[UIBarButtonItem alloc]initWithCustomView:rightBarBtn];
    self.navigationItem.rightBarButtonItem = rightBarBtnItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --MessageNavgationRightItemClickEvent

- (void)clickOnRightItem:(UIButton *)clickBtn
{
    NSLog( @"%s", __func__ );
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
