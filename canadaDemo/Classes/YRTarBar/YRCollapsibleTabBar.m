//
//  YRCollapsibleTabBar.m
//  canadaDemo
//
//  Created by yangrui on 2017/6/17.
//  Copyright © 2017年 TangChangTomYang. All rights reserved.
//

#define FolderDuration 0.5
#import "YRCollapsibleTabBar.h"


@interface YRCollapsibleTabBar ()

@property(nonatomic, strong)UIButton *topFolderBtn;
@property(nonatomic, assign,readonly)BOOL isFold;
@property(nonatomic, assign)BOOL isDown;
@end
@implementation YRCollapsibleTabBar


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addTopFolderBtn];
        _isFold = NO;
        self.isDown = NO;
    }
    return self;
}

-(void)addTopFolderBtn{
    UIButton *topFolderBtn = [[UIButton alloc]init];
    [topFolderBtn setImage:[UIImage imageNamed:@"folder"] forState:UIControlStateNormal];
    [topFolderBtn addTarget:self action:@selector(topFolderBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    topFolderBtn.layer.borderColor = [UIColor orangeColor].CGColor;
//    topFolderBtn.layer.borderWidth = 2.0;
    [self addSubview:topFolderBtn];
    self.topFolderBtn = topFolderBtn;

}


-(void)layoutSubviews{
    [super layoutSubviews];
    
    for (UIView *subView in self.subviews) {
        if ([subView isEqual:self.topFolderBtn]) {
            CGFloat widht = 150;
            CGFloat height = 40;
            CGFloat x = ([UIScreen mainScreen].bounds.size.width - widht) * 0.5;
            CGFloat y = - height ;
            
            CGRect frame =  CGRectMake(x, y, widht, height);
            
            self.topFolderBtn.frame = frame;
        }
    }
}

-(void)topFolderBtnClick:(UIButton *)topFolderBtn{
    if(_isFold == YES){
        _isFold = NO;
        
        CGFloat y = [UIScreen mainScreen].bounds.size.height  - 49.0;
        CGFloat widht = [UIScreen mainScreen].bounds.size.width;
        CGRect frame =  CGRectMake(0, y, widht, 49);
        [UIView animateWithDuration:FolderDuration animations:^{
            self.frame = frame;
        } completion:^(BOOL finished) {
            if (finished == YES) {
                
                
            }
        }];
    }
    else{
        _isFold = YES;
        CGFloat y = [UIScreen mainScreen].bounds.size.height;
        CGFloat widht = [UIScreen mainScreen].bounds.size.width;
        CGRect frame =  CGRectMake(0, y, widht, 49);
        [UIView animateWithDuration:FolderDuration animations:^{
            self.frame = frame;
        } completion:^(BOOL finished) {
            if (finished == YES) {
                
            }
        }];
    
    }
    
}

-(void)setFrame:(CGRect)frame{
    if (self.isFold == YES) {
        CGFloat y = [UIScreen mainScreen].bounds.size.height;
        CGFloat widht = [UIScreen mainScreen].bounds.size.width;
        [super setFrame:CGRectMake(0, y, widht, 49)];
    }
    else{
        [super setFrame:frame];
     
    }
}


-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    if (CGRectContainsPoint(self.topFolderBtn.frame, point)) {
        
        // 需要添加到某一点的距离 <=  x
        return YES;
    }
   return [super pointInside:point withEvent:event];
    
}



@end
