//
//  YRNavigationController.m
//  canadaDemo
//
//  Created by yangrui on 2017/6/17.
//  Copyright © 2017年 TangChangTomYang. All rights reserved.
//

#import "YRNavigationController.h"

@interface YRNavigationController ()

@end

@implementation YRNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    NSLog(@"count: %ld",self.childViewControllers.count);
    
    if(self.childViewControllers.count > 0){
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
