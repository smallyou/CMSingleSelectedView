//
//  CMAnimationTool.h
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/6.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CMAnimationToolDelegate <NSObject>

@required
-(CGFloat)heightForSingleSelectedView;

@end


@interface CMAnimationTool : NSObject

@property(nonatomic,assign) CGRect presentedRect;

@property(nonatomic,assign) NSTimeInterval animationDuration;

@property(nonatomic,weak) id<CMAnimationToolDelegate> delegate;

@end
