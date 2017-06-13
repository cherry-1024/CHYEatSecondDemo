//
//  CHYHomeViewController.m
//  CHYEatSecondDemo
//
//  Created by hongyu chen on 2017/6/6.
//  Copyright © 2017年  CSDC All rights reserved.
//
#import "CHYHomeViewController.h"
#import "CHYSortCell.h"
#import "CHYActivityCell.h"
#import "CHYSallerCell.h"
#import "CHYSallerModel.h"
#import "CHYActivityModel.h"
#import "CHYActivityModel.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface CHYHomeViewController ()<UIScrollViewDelegate>
{
    UIImageView *_backView1;
    UIImageView *_backView2;
    UIPageControl *_pageControl;
    NSMutableArray *_sortArray;
    NSArray *_sallerArray;

    CHYActivityModel *activityOne;
    CHYSallerModel *sallerOne;
    CHYSallerModel *sallerTwo;
    CHYSallerModel *sallerThree;
    CHYSallerModel *sallerFour;
    CHYSallerModel *sallerFive;

}


@end

@implementation CHYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";//导航栏标题
    self.view.backgroundColor = [UIColor whiteColor];

    //初始化personalTableView
    personalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT) style:UITableViewStyleGrouped];
    personalTableView.delegate = self;
    personalTableView.dataSource = self;
    _sortArray = [[NSMutableArray alloc]initWithObjects: @{@"image" : @"icon_grain-and-oil", @"title" : @"粮油"},
                  @{@"image" : @"icon_vegetables", @"title" : @"蔬菜"},
                  @{@"image" : @"icon_seasoning", @"title" : @"调料干货"},
                  @{@"image" : @"icon_egg", @"title" : @"肉禽蛋"},
                  @{@"image" : @"icon_fish", @"title" : @"水冻产品"},
                  @{@"image" : @"icon_dishware", @"title" : @"餐具饮料"},
                  @{@"image" : @"icon_drink", @"title" : @"酒水饮料"},
                  @{@"image" : @"icon_fruit", @"title" : @"水果"} , nil];
  
    activityOne = [[CHYActivityModel alloc] init];
    activityOne.leftIcon = [UIImage imageNamed:@"pic_banner1"];
    activityOne.leftTitle = @"特价活动";
    activityOne.leftDescrible = @"爆款、全市最低价";
    activityOne.rightIcon = [UIImage imageNamed:@"pic_banner2"];
    activityOne.rightTitle = @"免配送费";
    activityOne.rightDescrible = @"免费送菜啦";
    
    sallerOne = [[CHYSallerModel alloc] init];
    sallerOne.icon = [UIImage imageNamed:@"fuji"];
    sallerOne.sallerName = @"福记饮料配送";
    sallerOne.distance = @"距您0.72千米";
    sallerOne.deliveryPrice = @"配送费￥50.0";
    
    sallerTwo = [[CHYSallerModel alloc] init];
    sallerTwo.icon = [UIImage imageNamed:@"fuji"];
    sallerTwo.sallerName = @"诚信粮油";
    sallerTwo.distance = @"距您2.24千米";
    sallerTwo.deliveryPrice = @"配送费￥0.0";
    
    sallerThree = [[CHYSallerModel alloc] init];
    sallerThree.icon = [UIImage imageNamed:@"fuji"];
    sallerThree.sallerName = @"新竹市场君益酒店特菜配送";
    sallerThree.distance = @"距您2.24千米";
    sallerThree.deliveryPrice = @"配送费￥20.0";
    
    sallerFour = [[CHYSallerModel alloc] init];
    sallerFour.icon = [UIImage imageNamed:@"fuji"];
    sallerFour.sallerName = @"飞阳鑫诚粮油干货酒店食材";
    sallerFour.distance = @"距您2.72千米";
    sallerFour.deliveryPrice = @"配送费￥30.0";
    
    sallerFive = [[CHYSallerModel alloc] init];
    sallerFive.icon = [UIImage imageNamed:@"fuji"];
    sallerFive.sallerName = @"兴业干调";
    sallerFive.distance = @"距您3.6千米";
    sallerFive.deliveryPrice = @"配送费￥10.0";
    _sallerArray = @[sallerOne , sallerTwo , sallerThree , sallerFour , sallerFive];


    //创建头部视图
    _backView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 160)];
    _backView1.image = [UIImage imageNamed:@"ad1"];
    _backView2 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREENWIDTH, 0, SCREENWIDTH, 160)];
    _backView2.image = [UIImage imageNamed:@"ad2"];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 180)];
    scrollView.contentSize = CGSizeMake(2*SCREENWIDTH, 180);
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    scrollView.showsHorizontalScrollIndicator = NO;
    [scrollView addSubview:_backView1];
    [scrollView addSubview:_backView2];
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(SCREENWIDTH/2-20, 160, 0, 20)];
    _pageControl.currentPage = 0;
    _pageControl.numberOfPages = 2;
    [scrollView addSubview:_pageControl];
    personalTableView.tableHeaderView = scrollView;
    [self.view addSubview:personalTableView];

    }

//显示personalTableView的部分数
- (NSInteger) numberOfSectionsInTableView : (UITableView*) tableView
{
    return 3;
}

//设置每个section的行数
- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection : (NSInteger) section
{
    if (section == 0) {
        return 1;
    }else if (section == 1) {
        return 1;
    }else{
        return _sallerArray.count;
    }
}

//每个分组上边预留的空白高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 5;
}
//每个分组下边预留的空白高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 2) {
        return 20;
    }
    return 10;
}
//每一个分组下对应的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 190;
    } else if (indexPath.section == 1) {
        return 70;
    }
    return 100;
}

//设置每行对应的cell的展示内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    if (indexPath.section == 0) {
        cell = [[CHYSortCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer sortArray:_sortArray];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if(indexPath.section == 1){
        cell = [[CHYActivityCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer addData:activityOne];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;

    }else{
        cell = [[CHYSallerCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer addData:_sallerArray[indexPath.row]];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}



@end
