//
//  Detail_1_ViewController.m
//  炉石卡组控
//
//  Created by htjc-yj on 16/3/5.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "Detail_1_ViewController.h"
#import "CustomUIKit.h"
#import "YJDefine.h"
#import "Detail_2_ViewController.h"
#import <WebKit/WebKit.h>
@interface Detail_1_ViewController ()<UIWebViewDelegate>{
    UIWebView * web;
}

@end

@implementation Detail_1_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    NSString * url = @"http://h5v2.laoyuegou.com/hearthStone/CardGroup/playerId/61486/groupId/166/self/1/nowUrl/http%253A%252F%252Fh5v2.laoyuegou.com%252FhearthStone%252Fcards%252Fid%252F61486%252Fsort%252F0%252Ftype%252F0%252Fspeed%252F0%252Fclass%252Fhunter%252Fajax%252F0%252Fself%252F1%252FpageNow%252F1.html%253Fappver%253D2.3.2%2526appfrom%253D/ly/0.html?appver=2.3.2&appfrom=";
// <li class="arrow-r" onclick="javascript:location.href='laoyuegou://open?title=蓝白T7猎&&url=http%3A%2F%2Fh5v2.laoyuegou.com%2FhearthStone%2FCardGroup%2FplayerId%2F61486%2FgroupId%2F166%2Fself%2F1%2FnowUrl%2Fhttp%25253A%25252F%25252Fh5v2.laoyuegou.com%25252FhearthStone%25252Fcards%25252Fid%25252F61486%25252Fsort%25252F0%25252Ftype%25252F0%25252Fspeed%25252F0%25252Fclass%25252Fhunter%25252Fajax%25252F0%25252Fself%25252F1%25252FpageNow%25252F1.html%25253Fappver%25253D2p.3.2%252526appfrom%25253D%2Fly%2F0.html%3Fappver%3D2.3.2%26appfrom%3D';">
    /*
     破解
     : %3A
     / %2F
     ? %3F
     = %3D
     & %26
     */
      web = [UIWebView webViewWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT ) urlString:_urlStr];
//    WKWebView * wk = [[WKWebView alloc]initWithFrame:CGRectMake(0, 20, WIDTH, HEIGHT - 20)];
//    [wk loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_urlStr]]];
//    [self.view addSubview:wk];
    web.delegate = self;
    web.userInteractionEnabled = YES;
    [self.view addSubview:web];
}
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSString * requestString = [[request URL]absoluteString];
//    requestString先是整体的,点击后变成部分的
//    NSLog(@"%@",requestString);
    
//    如果前缀为 laoyuegou://open 则进行跳转
    if ([requestString hasPrefix:@"laoyuegou://open"]) {
        Detail_2_ViewController * d2v = [[Detail_2_ViewController alloc]init];
        d2v.urlStr = requestString;
        [self.navigationController pushViewController:d2v animated:YES];
        return YES;

    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
