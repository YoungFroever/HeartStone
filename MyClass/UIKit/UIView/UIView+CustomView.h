//
//  UIView+CustomView.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/28.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(CustomView)

/** 创建View */
+(UIView *)viewWithFrame:(CGRect)frame;

/** 创建View2 */
+(UIView *)viewWithFrame:(CGRect)frame andColor:(UIColor *)bgColor;
@end
