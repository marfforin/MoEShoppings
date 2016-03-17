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
    [self createControllerWithController:MoEVC withNavigationBarBackgroudImage:@"bg_datepicker.9" withNavitionTitle:@"卖萌货" withTabTltle:@"卖萌货" withTabImage:@"ic_tab_home_normal" withTabSelectImage:@"ic_tab_home_selected"];
    
    /*
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
     */
    
    HotCollectionViewController *HotVC = [[HotCollectionViewController alloc] init];
    UINavigationController *HotNC = [[UINavigationController alloc] initWithRootViewController:HotVC];
    [self createControllerWithController:HotVC withNavigationBarBackgroudImage:@"bg_datepicker.9" withNavitionTitle: @"热门" withTabTltle: @"热门" withTabImage:@"ic_tab_select_normal" withTabSelectImage:@"ic_tab_select_selected"];
    
    /*
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
    */
     
    ClassifyTableViewController *ClassifyVC = [[ClassifyTableViewController alloc] init];
    UINavigationController *ClassifyNC = [[UINavigationController alloc] initWithRootViewController:ClassifyVC];
    [self createControllerWithController:ClassifyVC withNavigationBarBackgroudImage:@"bg_datepicker.9" withNavitionTitle:@"分类" withTabTltle:@"分类" withTabImage:@"ic_tab_category_normal" withTabSelectImage:@"ic_tab_category_selected"];
    
    /*
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
    */
     
    MyViewController *MyVC = [[MyViewController alloc] init];
    [self createControllerWithController:MyVC withNavigationBarBackgroudImage:nil withNavitionTitle:nil withTabTltle:@"我" withTabImage:@"ic_tab_profile_normal_male" withTabSelectImage:@"ic_tab_profile_selected_male"];
    
    /*/
    MyVC.tabBarItem.title = @"我";
    [MyVC.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    UIImage *image4 = [UIImage imageNamed:@"ic_tab_profile_normal_male"];
    image4 = [image4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage4 = [UIImage imageNamed:@"ic_tab_profile_selected_male"];
    seImage4 = [seImage4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MyVC.tabBarItem.image = image4;
    MyVC.tabBarItem.selectedImage = seImage4;
    */
    
    self.viewControllers = @[MoENC, HotNC, ClassifyNC, MyVC];
    
}



- (void)createControllerWithController:(UIViewController *)controller withNavigationBarBackgroudImage:(NSString *)image withNavitionTitle:(NSString *)navTitle withTabTltle:(NSString *)tabTitle withTabImage:(NSString *)tabImage withTabSelectImage:(NSString *)selectImage
{
    [controller.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:image] forBarMetrics:UIBarMetricsDefault];
    controller.navigationItem.title = navTitle;
//    [UI]
    controller.tabBarItem.title = tabTitle;
    [controller.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kTabBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    UIImage *image1 = [UIImage imageNamed:tabImage];
    image1 = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *seImage1 = [UIImage imageNamed:selectImage];
    seImage1 = [seImage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.image = image1;
    controller.tabBarItem.selectedImage = seImage1;
    
}



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
