//
//  UITextField+CustomTextField.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UITextField+CustomTextField.h"

@implementation UITextField(CustomTextField)
+(UITextField *)textFieldWithFrame:(CGRect)frame{
    UITextField * TF = [[UITextField alloc]initWithFrame:frame];
    
    TF.autocapitalizationType = UITextAutocapitalizationTypeNone;
    TF.autocorrectionType = UITextAutocorrectionTypeNo;
    return TF;
}

@end
