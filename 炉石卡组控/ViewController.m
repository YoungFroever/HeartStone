//
//  ViewController.m
//  炉石卡组控
//
//  Created by htjc-yj on 16/3/5.
//  Copyright © 2016年 rnd-ios. All rights reserved.
//

#import "ViewController.h"
#import "YJDefine.h"
#import "CustomFoundation.h"
#import "CustomUIKit.h"
#import "Detail_1_ViewController.h"

#define Hunter  @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/hunter/self/1.html?appver=2.3.2&appfrom="
#define Druid   @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/druid/self/1.html?appver=2.3.2&appfrom="
#define Mange   @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/mage/self/1.html?appver=2.3.2&appfrom="
#define Paladin @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/paladin/self/1.html?appver=2.3.2&appfrom="
#define Priest  @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/priest/self/1.html?appver=2.3.2&appfrom="
#define Rogue   @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/rogue/self/1.html?appver=2.3.2&appfrom="
#define Shaman  @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/shaman/self/1.html?appver=2.3.2&appfrom="
#define Warlock @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/warlock/self/1.html?appver=2.3.2&appfrom="
#define Warrior @"http://h5v2.laoyuegou.com/hearthStone/cards/id/61486/class/warrior/self/1.html?appver=2.3.2&appfrom="

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView * myTableView;
@property(nonatomic, strong)NSArray * array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    _myTableView = [UITableView tableViewWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT - 64) withDelegate:self];
    [self.view addSubview:_myTableView];
    _array = @[Hunter,Druid,Mange,Paladin,Priest,Rogue,Shaman,Warlock,Warrior];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * iden = @"iden";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:iden];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
    }
    NSArray * titleArr = @[@"猎人",@"德鲁伊",@"法师",@"圣骑士",@"牧师",@"潜行者",@"萨满",@"术士",@"战士"];
    cell.textLabel.text = titleArr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Detail_1_ViewController * dv = [[Detail_1_ViewController alloc]init];
    dv.urlStr = _array[indexPath.row];
//    [self presentViewController:dv animated:YES completion:nil];
     [tableView deselectRowAtIndexPath:indexPath animated:YES]; 
    [self.navigationController pushViewController:dv animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
