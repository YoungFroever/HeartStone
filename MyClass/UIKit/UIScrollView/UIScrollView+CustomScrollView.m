//
//  UIScrollView+CustomScrollView.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/29.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UIScrollView+CustomScrollView.h"

@implementation UIScrollView(CustomScrollView)

+(UIScrollView *)scrollViewWithFrame:(CGRect)frame andSize:(CGSize)size{
    UIScrollView * sv = [[UIScrollView alloc]initWithFrame:frame];
    sv.showsHorizontalScrollIndicator = NO;
    sv.showsVerticalScrollIndicator = NO;
    sv.pagingEnabled = YES;
    sv.contentSize = size;
    sv.bounces = NO;
    return sv;
}

@end
