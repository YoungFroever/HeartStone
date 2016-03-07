//
//  NSUserDefaults+CustomDefaults.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/28.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "NSUserDefaults+CustomDefaults.h"

@implementation NSUserDefaults(CustomDefaults)

+(NSUserDefaults *)userDefaultsCreateByKeywords:(NSString *)key andValue:(NSString *)value{
    NSUserDefaults * userInfo = [NSUserDefaults standardUserDefaults];
    [userInfo setObject:value forKey:key];
    return userInfo;
}

@end
