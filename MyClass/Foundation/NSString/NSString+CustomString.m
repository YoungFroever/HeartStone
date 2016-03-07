//
//  NSString+CustomString.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/3/1.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "NSString+CustomString.h"

@implementation NSString(CustomString)

+(NSString *)stringReplaceOriginStr:(NSString *)str Str:(NSString *)str1 Str:(NSString *)str2{
    NSString * originStr = [str stringByReplacingOccurrencesOfString:str2 withString:str1];
    return originStr;
}
-(NSString *)base64encode{
    NSData * data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}
-(NSString *)base64decode{
    NSData * data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}
@end
