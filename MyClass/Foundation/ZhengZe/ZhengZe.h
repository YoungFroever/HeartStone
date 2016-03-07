//
//  ZhengZe.h
//  测试都在这儿了
//
//  Created by htjc-yj on 16/3/4.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZhengZe : NSObject

/** 字符串范围从num-num2(包括num1,num2) */
+(BOOL)validateStringLengthStr:(NSString*)str fromNum1:(NSInteger)num1 toNum2:(NSInteger)num2;

/** 字符串不能为空 */
+(BOOL)validateNonEmptyString:(NSString *)st;

/** 判断只包含字母和数字 */
+(BOOL)vaildateNumAndLetter:(NSString *)str;

/** 判断纯数字 */
+(BOOL)validateNum:(NSString *)str;
@end
