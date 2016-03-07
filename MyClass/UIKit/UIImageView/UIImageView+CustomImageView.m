//
//  UIImageView+CustomImageView.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UIImageView+CustomImageView.h"

@implementation UIImageView(CustomImageView)

+(UIImageView *)imageViewWithFrame:(CGRect)frame image:(NSString *)imageStr{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageStr];
    return imageView;
}
@end
