//
//  UIWebView+CustomWebView.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWebView(CustomWebView)

/** 创建UIWebView */
+(UIWebView *)webViewWithFrame:(CGRect)frame;

/** 创建UIWebView,根据传入的URL字符串加载网站 */
+(UIWebView *)webViewWithFrame:(CGRect)frame urlString:(NSString *)URLString;

/** 创建UIWebView,根据传入的html字符串加载网站 */
+(UIWebView *)webViewWithFrame:(CGRect)frame htmlString:(NSString *)HTMLString;

@end
