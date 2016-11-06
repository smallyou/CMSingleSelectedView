//
//  CMPresentationController.m
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/6.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import "CMPresentationController.h"

@interface CMPresentationController()

@property(nonatomic,weak) UIView *cover;

@end


@implementation CMPresentationController


-(void)containerViewWillLayoutSubviews
{
    [super containerViewWillLayoutSubviews];
    
    // 添加蒙板
    UIView *cover = [[UIView alloc]init];
    cover.frame = self.containerView.bounds;
    cover.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.4];
    [self.containerView insertSubview:cover atIndex:0];
    cover.userInteractionEnabled = YES;
    self.cover = cover;
    
}


@end
