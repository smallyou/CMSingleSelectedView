//
//  CMChoiceItem.h
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionCallback)();

@interface CMChoiceItem : NSObject

@property(nonatomic,copy) NSString *title;
@property(nonatomic,strong) UIColor *titleColor;
@property(nonatomic,copy) ActionCallback actionCallback;

+(instancetype)itemWithTitle:(NSString *)title titleColor:(UIColor *)titleColor action:(ActionCallback)action;

@end
