//
//  UILable+CustomLabel.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UILable+CustomLabel.h"

@implementation UILabel(CustomLabel)
+(UILabel *)labelWithFrame:(CGRect)frame{
    UILabel * labeloo = [[UILabel alloc]initWithFrame:frame];
    return labeloo;
}
+(UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)Text alignment:(NSTextAlignment)Alignment{
   UILabel * label =  [self labelWithFrame:frame];
   label.text = Text;
    label.textAlignment = Alignment;
    return label;
}
@end
