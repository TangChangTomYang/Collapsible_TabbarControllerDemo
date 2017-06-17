//
//  YRCollapsibleTabBarController.m
//  canadaDemo
//
//  Created by yangrui on 2017/6/17.
//  Copyright © 2017年 TangChangTomYang. All rights reserved.
//

#import "YRCollapsibleTabBarController.h"
#import "YRCollapsibleTabBar.h"

@interface YRCollapsibleTabBarController ()

@end

@implementation YRCollapsibleTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    YRCollapsibleTabBar *tabBar = [[YRCollapsibleTabBar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}


@end
