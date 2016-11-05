//
//  CMSingleSelectedView.m
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import "CMSingleSelectedView.h"
#import "CMChoiceItem.h"

#define CMBUTTON_HEIGHT 40
#define CMSEPARTOR_HEIGHT 1
#define CMSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define CMSCREEN_WIDHT [UIScreen mainScreen].bounds.size.width


@interface CMSingleSelectedView()

@property(nonatomic,strong) NSMutableArray<CMChoiceItem *> *choices;
@property(nonatomic,weak) CMChoiceItem *choiceItem;
@property(nonatomic,assign) CGFloat selectedViewHeight;

@end

@implementation CMSingleSelectedView

-(NSMutableArray<CMChoiceItem *> *)choices
{
    if (_choices == nil) {
        _choices = [NSMutableArray array];
    }
    return _choices;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:1.0];
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = YES;
        self.userInteractionEnabled = YES;
        
        
    }
    return self;
}


-(CGFloat)updateWithChoice:(CMChoiceItem *)choiceItem
{
    [self.choices addObject:choiceItem];
    self.choiceItem = choiceItem;
    return [self addItem:(CMChoiceItem *)choiceItem];
}




-(CGFloat)addItem:(CMChoiceItem *)choiceItem
{
    
    UIView *separtor = [[UIView alloc]initWithFrame:CGRectMake(1, self.selectedViewHeight,CMSCREEN_WIDHT-2, CMSEPARTOR_HEIGHT)];
    separtor.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1.0];
    [self addSubview:separtor];
    self.selectedViewHeight += CMSEPARTOR_HEIGHT ;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    if (choiceItem.titleColor == nil) {
        choiceItem.titleColor = [UIColor blackColor];
    }
    [button setTitleColor:choiceItem.titleColor forState:UIControlStateNormal];
    [button setTitle:choiceItem.title forState:UIControlStateNormal];
    button.tag = self.choices.count - 1;
    [button addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, self.selectedViewHeight, CMSCREEN_WIDHT, CMBUTTON_HEIGHT);
    [self addSubview:button];
    
    self.selectedViewHeight = self.selectedViewHeight + CMBUTTON_HEIGHT;
    
    return self.selectedViewHeight;
}



-(void)buttonDidClick:(UIButton *)button
{
    if (self.choices[button.tag].actionCallback) {
        self.choices[button.tag].actionCallback();
    }
}


@end
