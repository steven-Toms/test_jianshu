//
//  FFCostomTabBar.m
//  FFTestCustomTabBar
//
//  Created by mac-Win on 16/8/17.
//  Copyright © 2016年 mac-Win. All rights reserved.
//

#import "FFCostomTabBar.h"

@interface FFCostomTabBar()

@property (nonatomic) CGSize size;

@end

@implementation FFCostomTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if( self ){
        UIButton *currentBtn = [[UIButton alloc]init];
        [currentBtn setImage:[UIImage imageNamed:@"button_write_55x40_"] forState:UIControlStateNormal];
        [currentBtn addTarget:self action:@selector(clickOnCenterBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:currentBtn];
        _size = currentBtn.currentImage.size;
        self.centerBtn = currentBtn;
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if( self )
    {
        UIButton *currentBtn = [[UIButton alloc]init];
        [currentBtn setImage:[UIImage imageNamed:@"button_write_55x40_"] forState:UIControlStateNormal];
        [currentBtn addTarget:self action:@selector(clickOnCenterBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:currentBtn];
        self.centerBtn = currentBtn;
    }
    return self;
}


- (void)clickOnCenterBtn:(UIButton *)clickBtn
{
    [_deleagete clickCenterWithTabBarBtn:self];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat centerX = self.frame.size.width * 0.5;
    CGFloat centerY = self.frame.size.height * 0.5;
    self.centerBtn.center = CGPointMake(centerX, centerY);
    self.centerBtn.bounds = CGRectMake(0, 0, _size.width, _size.height);
    
    CGFloat singleBarWidth = self.frame.size.width / 5;
    CGFloat tabBarCurrentIndex = 0;
    
    for ( UIView *view in self.subviews ) {
        Class class = NSClassFromString(@"UITabBarButton");
        if( [view isKindOfClass:class] )
        {
            CGFloat x = tabBarCurrentIndex * singleBarWidth;
            view.frame = CGRectMake( x, view.frame.origin.y, singleBarWidth, view.frame.size.height );
            tabBarCurrentIndex++;
            if( tabBarCurrentIndex == 2 )
                tabBarCurrentIndex++;
        }
    }
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
@end
