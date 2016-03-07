//
//  ZhengZe.m
//  测试都在这儿了
//
//  Created by htjc-yj on 16/3/4.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "ZhengZe.h"

@implementation ZhengZe
#pragma mark - 字符串范围从num-num2(包括num1,num2)
+(BOOL)validateStringLengthStr:(NSString *)str fromNum1:(NSInteger)num1 toNum2:(NSInteger)num2{
    if (str.length >= num1 && str.length <= num2) {
        return YES;
    }
    else{
        return NO;
    }

}
#pragma mark - 字符串不能为空
+(BOOL)validateNonEmptyString:(NSString *)st{
    if (st.length == 0) {
        return NO;
    }
    else{
        return YES;
    }
}
#pragma mark - 判断只有字母或数字
+(BOOL)vaildateNumAndLetter:(NSString *)str{
    NSString * judgeStr = @"^[a-zA-Z0-9]*$";
    NSPredicate * pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",judgeStr];
    return [pre evaluateWithObject:str];
    
}
#pragma mark - 判断纯数字
+(BOOL)validateNum:(NSString *)str{
    NSString * judgeStr = @"^[0-9]*$";
    NSPredicate * pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",judgeStr];
    if ([pre evaluateWithObject:str]) {
        return YES;
    }
    else{
        return NO;
    }
}

@end
