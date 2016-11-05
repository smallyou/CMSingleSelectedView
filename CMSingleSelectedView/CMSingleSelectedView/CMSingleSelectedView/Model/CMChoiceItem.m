//
//  CMChoiceItem.m
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import "CMChoiceItem.h"

@implementation CMChoiceItem

+(instancetype)itemWithTitle:(NSString *)title titleColor:(UIColor *)titleColor action:(ActionCallback)action
{
    CMChoiceItem *item = [[self alloc]init];
    item.title = title;
    if (titleColor == nil) {
        titleColor = [UIColor blackColor];
    }
    item.titleColor = titleColor;
    item.actionCallback = action;
    return item;
}

@end
