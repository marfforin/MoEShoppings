//
//  MoEShoppingsViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/18.
//  Copyright © 2016年 dr.m. All rights reserved.
//


#define FWidth [UIScreen mainScreen].bounds.size.width
#define FHeight [UIScreen mainScreen].bounds.size.height

#define kScrollViewUrl @"http://www.maimenghuo.com/v2/channels/preset?gender=1&generation=1"


#import "MoEShoppingsViewController.h"
#import "SelectionViewController.h"
#import "GiftViewController.h"
#import "MOEThingsViewController.h"
#import "DelicousFoodViewController.h"
#import "DigitalViewController.h"
#import "AnimationViewController.h"
#import "StationaryViewController.h"
#import "SportViewController.h"
#import "XLScrollViewer.h"
#import "TopScrollModel.h"

@interface MoEShoppingsViewController ()

@property (nonatomic, strong) NSMutableArray *ViewsArray;
@property (nonatomic, strong) NSMutableArray *itemsNamesArray;


@end

@implementation MoEShoppingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.frame = CGRectMake(0, 0, FWidth, FHeight);
    
    
    UIImage *image = [UIImage imageNamed:@"ic_menu_search"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(searchAction)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:20], NSFontAttributeName, nil, nil]];
    
    // 添加VC
    SelectionViewController *selectionVC = [[SelectionViewController alloc] init];
//    GiftViewController *giftVC = [[GiftViewController alloc] init];
    MOEThingsViewController *moethingsVC = [[MOEThingsViewController alloc] init];
    DelicousFoodViewController *delicousFoodVC = [[DelicousFoodViewController alloc] init];
    DigitalViewController *digitalVC = [[DigitalViewController alloc] init];
    AnimationViewController *animationVC = [[AnimationViewController alloc] init];
//    StationaryViewController *stationaryVC = [[StationaryViewController alloc] init];
    SportViewController *sportVC = [[SportViewController alloc] init];
    
    self.ViewsArray = [NSMutableArray arrayWithObjects:selectionVC.view, moethingsVC.view, delicousFoodVC.view, digitalVC.view, animationVC.view, sportVC.view, nil];
    
//    [self.itemsNamesArray ]
//    self.itemsNamesArray = [self itemsArrayWithUrl:kScrollViewUrl];
//    NSLog(@"itemsNamesArray ~~~~~~~~~~  %@", self.itemsNamesArray);
    self.itemsNamesArray = [NSMutableArray arrayWithObjects:@"精选", @"萌物", @"美食", @"数码", @"动漫", @"运动", nil];
    // 创建头部滚动视图
    self.xlScrollView = [XLScrollViewer scrollWithFrame:self.view.frame withViews:self.ViewsArray withButtonNames:self.itemsNamesArray withThreeAnimation:121];
    self.xlScrollView.xl_topBackColor = [UIColor whiteColor];
    self.xlScrollView.xl_topHeight = 30;
    self.xlScrollView.xl_buttonToSlider = 5;
    self.xlScrollView.xl_buttonFont = 14;
    
    self.xlScrollView.xl_buttonColorSelected = [UIColor colorWithRed:245 / 255.0 green:55 / 255.0 blue:60 /255.0 alpha:1.0];
    self.xlScrollView.xl_sliderColor = [UIColor colorWithRed:245 / 255.0 green:55 / 255.0 blue:60 /255.0 alpha:1.0];
    
    [self.view addSubview:self.xlScrollView];
}


- (void)searchAction
{
    NSLog(@"点我干嘛？？？？？？");
    
    
    
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}












@end
