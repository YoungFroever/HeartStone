//
//  NSString+CustomString.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/3/1.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(CustomString)

/** 用str1代替str2 */
+(NSString *)stringReplaceOriginStr:(NSString *)str  Str:(NSString *)str1 Str:(NSString *)str2;

/** 加密 */
-(NSString *)base64encode;
/** 解密 */
-(NSString *)base64decode;

@end
