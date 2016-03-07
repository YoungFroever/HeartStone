//
//  UITableView+CustomTableView.h
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView(CustomTableView)

/** 创建TableView */
+(UITableView *)tableViewWithFrame:(CGRect)frame withDelegate:(id)delegate;

@end
