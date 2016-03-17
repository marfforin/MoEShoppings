//
//  MainTabBarController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/14.
//  Copyright © 2016年 dr.m. All rights reserved.
//


#define kTabBarColor [UIColor colorWithRed:255 / 255.0 green:55 / 255.0 blue:66 / 255.0 alpha:1.0]


#import "MainTabBarController.h"
#import "MoEShoppingsTableViewController.h"
#import "HotCollectionViewController.h"
#import "ClassifyTableViewController.h"
#import "MyViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    MoEShoppingsTableViewController *MoEVC = [[MoEShoppingsTableViewController alloc] init];
    UINavigationController *MoENC = [[UINavigationController alloc] initWithRootViewController:MoEVC];
    [MoEVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_datepicker.9"] forBarMetrics:UIBarMetricsDefault];
    MoEVC.navigationItem.title = @"卖萌货";
    
    MoEVC.tabBarItem.title = @"卖萌货";
    [MoEVC.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    MoEVC.view.backgroundColor = [UIColor magentaColor];
    UIImage *image1 = [UIImage imageNamed:@"ic_tab_home_normal"];
    image1 = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage1 = [UIImage imageNamed:@"ic_tab_home_selected"];
    seImage1 = [seImage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MoEVC.tabBarItem.image = image1;
    MoEVC.tabBarItem.selectedImage = seImage1;
    
    HotCollectionViewController *HotVC = [[HotCollectionViewController alloc] init];
    UINavigationController *HotNC = [[UINavigationController alloc] initWithRootViewController:HotVC];
    [HotVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_datepicker.9"] forBarMetrics:UIBarMetricsDefault];
    HotVC.navigationItem.title = @"热门";
    HotVC.tabBarItem.title = @"热门";
    [HotVC.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    HotVC.view.backgroundColor = [UIColor cyanColor];
    UIImage *image2 = [UIImage imageNamed:@"ic_tab_select_normal"];
    image2 = [image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage2 = [UIImage imageNamed:@"ic_tab_select_selected"];
    seImage2 = [seImage2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    HotVC.tabBarItem.image = image2;
    HotVC.tabBarItem.selectedImage = seImage2;
    
    ClassifyTableViewController *ClassifyVC = [[ClassifyTableViewController alloc] init];
    UINavigationController *ClassifyNC = [[UINavigationController alloc] initWithRootViewController:ClassifyVC];
    [ClassifyVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_datepicker.9"] forBarMetrics:UIBarMetricsDefault];
    ClassifyVC.navigationItem.title = @"分类";
    ClassifyVC.tabBarItem.title = @"分类";
    [ClassifyVC.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    ClassifyVC.view.backgroundColor = [UIColor orangeColor];
    UIImage *image3 = [UIImage imageNamed:@"ic_tab_category_normal"];
    image3 = [image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage3 = [UIImage imageNamed:@"ic_tab_category_selected"];
    seImage3 = [seImage3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    ClassifyVC.tabBarItem.image = image3;
    ClassifyVC.tabBarItem.selectedImage = seImage3;
    
    MyViewController *MyVC = [[MyViewController alloc] init];
//    MyVC.view.backgroundColor = [UIColor blackColor];
    MyVC.tabBarItem.title = @"我";
    [MyVC.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    UIImage *image4 = [UIImage imageNamed:@"ic_tab_profile_normal_male"];
    image4 = [image4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage4 = [UIImage imageNamed:@"ic_tab_profile_selected_male"];
    seImage4 = [seImage4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MyVC.tabBarItem.image = image4;
    MyVC.tabBarItem.selectedImage = seImage4;
    
    
    self.viewControllers = @[MoENC, HotNC, ClassifyNC, MyVC];
    
}


/*
- (void)createControllerWithController:(id)controller withNavigationBarBackgroudImage:(NSString *)image withNavitionTitle:(NSString *)navTitle withTabTltle:(NSString *)tabTitle withTabImage:(NSString *)tabImage withTabSelectImage:(NSString *)selectImag
{
    
    MoEShoppingsTableViewController *MoEVC = [[MoEShoppingsTableViewController alloc] init];
    UINavigationController *MoENC = [[UINavigationController alloc] initWithRootViewController:MoEVC];
    [MoEVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_datepicker.9"] forBarMetrics:UIBarMetricsDefault];
    MoEVC.navigationItem.title = @"卖萌货";
    MoEVC.tabBarItem.title = @"卖萌货";
    MoEVC.navigationController.navigationBar.tintColor = kTabBarColor;
    MoEVC.view.backgroundColor = [UIColor magentaColor];
    UIImage *image1 = [UIImage imageNamed:@"ic_tab_home_normal"];
    image1 = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage1 = [UIImage imageNamed:@"ic_tab_home_selected"];
    seImage1 = [seImage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MoEVC.tabBarItem.image = image1;
    MoEVC.tabBarItem.selectedImage = seImage1;
    
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
