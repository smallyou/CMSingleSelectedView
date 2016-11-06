//
//  CMSingleSelectedView.h
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CMChoiceItem;
@interface CMSingleSelectedView : UIView


-(CGFloat)updateWithChoice:(CMChoiceItem *)choiceItem;

@end
