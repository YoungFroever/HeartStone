//
//  UIButton+CustomButton.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CustomButton)

/** 创建Button */
+(UIButton *)buttonWithFrame:(CGRect)frame;
/** 创建Button2 */
+(UIButton *)buttonWithFrame:(CGRect)frame Text:(NSString *)text BackgroundColor:(UIColor *)backgroundColor TextColor:(UIColor *)textColor Target:(id)target Action:(SEL)action;

/** 倒计时按钮(创建按钮方法,使用sender调用),有些问题,全部文字的变动 */
-(void)startTime:(NSInteger )timeout title:(NSString *)tittle waitTittle:(NSString *)waitTittle;

@end
