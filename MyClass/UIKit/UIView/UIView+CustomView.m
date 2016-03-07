//
//  UIView+CustomView.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/28.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UIView+CustomView.h"

@implementation UIView(CustomView)

+(UIView *)viewWithFrame:(CGRect)frame{
    UIView * uv = [[UIView alloc]initWithFrame:frame];
    return uv;
}
+(UIView *)viewWithFrame:(CGRect)frame andColor:(UIColor *)bgColor{
    UIView * uv = [self viewWithFrame:frame];
    uv.backgroundColor = bgColor;
    return uv;
}
@end
