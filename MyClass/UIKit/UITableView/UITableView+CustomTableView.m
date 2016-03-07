//
//  UITableView+CustomTableView.m
//  Htjc_OaSystem_iOS
//
//  Created by htjc-yj on 16/2/26.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "UITableView+CustomTableView.h"

@implementation UITableView(CustomTableView)

+(UITableView *)tableViewWithFrame:(CGRect)frame withDelegate:(id)delegate{
    UITableView * tableView = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    return tableView;
}

@end
