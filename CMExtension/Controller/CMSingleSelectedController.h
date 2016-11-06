//
//  CMSingleSelectedController.h
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMChoiceItem.h"


@interface CMSingleSelectedController : UIViewController

@property(nonatomic,assign) NSTimeInterval animationDuration;

-(void)addChoiceItem:(CMChoiceItem *)choiceItem;

@end
