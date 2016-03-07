//
//  UILable+CustomLabel.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel(CustomLabel)
/** 创建Label */
+(UILabel *)labelWithFrame:(CGRect)frame;

/** 创建Label2 */
+(UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)Text alignment:(NSTextAlignment)ANSTextAlignmentCenterlignment;

@end
