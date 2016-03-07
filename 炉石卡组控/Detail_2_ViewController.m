//
//  Detail_2_ViewController.m
//  炉石卡组控
//
//  Created by htjc-yj on 16/3/7.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "Detail_2_ViewController.h"
#import "CustomUIKit.h"
#import "CustomFoundation.h"
@interface Detail_2_ViewController ()

@end

@implementation Detail_2_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = self.view.bounds;
    frame.origin.y = 0;
    frame.size.height -= 0;
    // <li class="arrow-r" onclick="javascript:location.href='laoyuegou://open?title=蓝白T7猎&&url=http%3A%2F%2Fh5v2.laoyuegou.com%2FhearthStone%2FCardGroup%2FplayerId%2F61486%2FgroupId%2F166%2Fself%2F1%2FnowUrl%2Fhttp%25253A%25252F%25252Fh5v2.laoyuegou.com%25252FhearthStone%25252Fcards%25252Fid%25252F61486%25252Fsort%25252F0%25252Ftype%25252F0%25252Fspeed%25252F0%25252Fclass%25252Fhunter%25252Fajax%25252F0%25252Fself%25252F1%25252FpageNow%25252F1.html%25253Fappver%25253D2p.3.2%252526appfrom%25253D%2Fly%2F0.html%3Fappver%3D2.3.2%26appfrom%3D';">
    /*
     破解
     : %3A
     / %2F
     ? %3F
     = %3D
     & %26
     */
    /*
     laoyuegou://open?title=%E5%AE%87%E5%AE%99%E6%9A%97%E7%89%A7&&url=http%3A%2F%2Fh5v2.laoyuegou.com%2FhearthStone%2FCardGroup%2FplayerId%2F61486%2FgroupId%2F161%2Fself%2F1%2FnowUrl%2Fhttp%25253A%25252F%25252Fh5v2.laoyuegou.com%25252FhearthStone%25252Fcards%25252Fid%25252F61486%25252Fsort%25252F0%25252Ftype%25252F0%25252Fspeed%25252F0%25252Fclass%25252Fpriest%25252Fajax%252
     */
    
    NSString * str = _urlStr;
//    _urlStr 形式为 如上
//    NSLog(@"%@",str);
    NSString * keyStr = @"url=";
//    NSLog(@"%lu",(unsigned long)[str rangeOfString:keyStr].location);
    NSString * str0 = [str substringFromIndex:[str rangeOfString:keyStr].location];
//    NSLog(@"%@",newStr);
    
//    去除歧义字符
    NSString * str1 = [NSString stringReplaceOriginStr:str0 Str:@":" Str:@"%3A"];
    NSString * str2 = [NSString stringReplaceOriginStr:str1 Str:@"/" Str:@"%2F"];
    NSString * str3 = [NSString stringReplaceOriginStr:str2 Str:@"?" Str:@"%3F"];
    NSString * str4 = [NSString stringReplaceOriginStr:str3 Str:@"=" Str:@"%3D"];
    NSString * str5 = [NSString stringReplaceOriginStr:str4 Str:@"&" Str:@"%26"];
//    NSLog(@"%@",str5);
    
//   此时 str5是以 url=真实网址 的字符串
//    去掉 url=
    NSString * trueURL = [str5 substringFromIndex:4];
    NSLog(@"%@",trueURL);
    
    UIWebView * web = [UIWebView webViewWithFrame:frame urlString:trueURL];
    [self.view addSubview:web];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
