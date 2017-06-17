//
//  YRTabBarController.m
//  canadaDemo
//
//  Created by yangrui on 2017/6/17.
//  Copyright © 2017年 TangChangTomYang. All rights reserved.
//

#import "YRTabBarController.h"
#import "YRTabBar.h"

@interface YRTabBarController ()

@end

@implementation YRTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    YRTabBar *tabBar = [[YRTabBar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}


@end
