//
//  CMSingleSelectedController.m
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import "CMSingleSelectedController.h"
#import "CMSingleSelectedView.h"

#import "CMAnimationTool.h"

#define CMSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define CMSCREEN_WIDHT [UIScreen mainScreen].bounds.size.width

@interface CMSingleSelectedController () <CMAnimationToolDelegate>

/**单选视图*/
@property(nonatomic,weak) CMSingleSelectedView *singleSelectedView;

/**单选视图的高度*/
@property(nonatomic,assign) CGFloat ssv_height;

/**动画代理*/
@property(nonatomic,strong) CMAnimationTool *animationTool;

/**选项*/
@property(nonatomic,strong) NSMutableArray *choices;

@end

@implementation CMSingleSelectedController

#pragma mark - 懒加载
-(CMSingleSelectedView *)singleSelectedView
{
    if (_singleSelectedView == nil) {
        CMSingleSelectedView *singleSelectedView = [[CMSingleSelectedView alloc]init];
        [self.view addSubview:singleSelectedView];
        _singleSelectedView = singleSelectedView;
    }
    return _singleSelectedView;
}

-(CMAnimationTool *)animationTool
{
    if (_animationTool == nil) {
        _animationTool = [[CMAnimationTool alloc]init];
    }
    return _animationTool;
}

-(NSMutableArray *)choices
{
    if (_choices == nil) {
        _choices = [NSMutableArray array];
    }
    return _choices;
}



-(instancetype)init
{
    if (self = [super init]) {
        
        //初始化
        self.animationDuration = 0.25; //默认时间
        self.animationTool.animationDuration = self.animationDuration;

        
        self.modalPresentationStyle = UIModalPresentationCustom;
        self.transitioningDelegate = self.animationTool;
        self.animationTool.delegate = self;
        
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor clearColor];
    
}




-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.singleSelectedView.frame = CGRectMake(0, CMSCREEN_HEIGHT - self.ssv_height, CMSCREEN_WIDHT, self.ssv_height);
}


#pragma mark - ChoiceItem
-(void)addChoiceItem:(CMChoiceItem *)choiceItem
{
    [self.choices addObject:choiceItem];
    self.ssv_height = [self.singleSelectedView updateWithChoice:choiceItem];

}


#pragma mark - CMAnimationToolDelegate
-(CGFloat)heightForSingleSelectedView
{
    return self.ssv_height;
}





@end
