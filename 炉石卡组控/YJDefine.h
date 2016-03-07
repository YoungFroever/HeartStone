//
//  YJDefine.h
//  
//
//  Created by YJ on 16/1/4.
//  Copyright © 2016年 YJ. All rights reserved.
//

#ifndef YJDefine_h
#define YJDefine_h

/** RGB */
#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
/** RGB+alpha */
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

/** Font */
#define font(a)     [UIFont systemFontOfSize:a]
#define fontbold(b) [UIFont boldSystemFontOfSize:b]


/** 弧度转度数 */
#define RADIANS_TO_DEGREES(x) ((x)/M_PI*180.0)
/** 度数转弧度 */
#define DEGREES_TO_RADIANS(x) ((x)/180.0*M_PI)

/** 主屏幕宽 */
#define WIDTH [[UIScreen mainScreen] bounds].size.width
/** 主屏幕高 */
#define HEIGHT [[UIScreen mainScreen] bounds].size.height

/** 第一种注释 */
#ifdef DEBUG
#   define YJLog(yjStr, ...) NSLog((@"%s [Line %d] " yjStr), __PRETTY_FUNCTION__, __LINE__, ## __VA_ARGS__);
#else
#   define YJLog(...)
#endif

/** 第二种注释 */
#ifdef DEBUG
#define YJAppLog(s, ... ) NSLog( @"[%@：in line: %d]-->[message: %@]", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define YJAppLog(s, ... )
#endif

#endif /* YJDefine_h */
