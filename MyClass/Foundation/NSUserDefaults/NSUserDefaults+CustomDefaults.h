//
//  NSUserDefaults+CustomDefaults.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/28.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults(CustomDefaults)

/** 创建NSUserDefaults */
+(NSUserDefaults *)userDefaultsCreateByKeywords:(NSString *)key andValue:(NSString *)value;

@end
