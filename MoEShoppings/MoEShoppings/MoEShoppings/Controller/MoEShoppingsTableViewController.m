//
//  MoEShoppingsTableViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/14.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MoEShoppingsTableViewController.h"
#import "TopScrollTableViewCell.h"
#import "MoeShowTableViewCell.h"

@interface MoEShoppingsTableViewController ()

@end

@implementation MoEShoppingsTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"ic_menu_search"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(searchAction)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:20], NSFontAttributeName, nil, nil]];
    
    
    
    [self addSegmentedControl];
    
    
}


- (void)addSegmentedControl
{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
    //scrollView.backgroundColor = [UIColor orangeColor];
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width * 2, 30);
    scrollView.showsHorizontalScrollIndicator = NO;
    //scrollView.pagingEnabled = YES;
    self.tableView.tableHeaderView = scrollView;
//    self.tableView.tableHeaderView.frame.size.height = 
//    [self.view addSubview:scrollView];
    
    NSArray * itemArray = [NSArray  arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", nil];
    UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:itemArray];
    segControl.frame =  CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width * 2, 30);
    segControl.backgroundColor = [UIColor cyanColor];
    [scrollView addSubview:segControl];
    
    
    
    
}




- (void)searchAction
{
    NSLog(@"点我干嘛？？？？？？");
    
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    } else {
    return 4;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        
        TopScrollTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_top"];
        if (!cell) {
            cell = [[TopScrollTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell_top"];
        }
       
        
        return cell;
    } else {
        
        MoeShowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_id"];
        if (!cell) {
            cell = [[MoeShowTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell_id"];
        }
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        return cell;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 245;
    } else {
        return 130;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    } else {
        return 20;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *string = @"2016-03-15 周二";
    
    return string;
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
