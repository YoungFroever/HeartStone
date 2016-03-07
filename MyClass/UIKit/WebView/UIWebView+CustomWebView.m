//
//  UIWebView+CustomWebView.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UIWebView+CustomWebView.h"

@implementation UIWebView(CustomWebView)
+(UIWebView *)webViewWithFrame:(CGRect)frame{
    UIWebView * web = [[UIWebView alloc]initWithFrame:frame];
    return web;
}
+(UIWebView *)webViewWithFrame:(CGRect)frame urlString:(NSString *)URLString{
    UIWebView * web = [self webViewWithFrame:frame];
    NSURL * url = [NSURL URLWithString:URLString];
    NSURLRequest * req = [NSURLRequest requestWithURL:url];
    [web loadRequest:req];
    return web;
}
+(UIWebView *)webViewWithFrame:(CGRect)frame htmlString:(NSString *)HTMLString{
    UIWebView * web = [self webViewWithFrame:frame];
    [web loadHTMLString:HTMLString baseURL:nil];
    return web;
}
@end
