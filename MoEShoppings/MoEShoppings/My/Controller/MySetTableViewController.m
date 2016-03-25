//
//  MySetTableViewController.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/23.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MySetTableViewController.h"

@interface MySetTableViewController ()
@property (nonatomic, strong)NSMutableArray *array;


@end

@implementation MySetTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.navigationController.navigationBar.hidden = NO;
    self.title = @"更多";
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"com_taobao_tae_sdk_web_view_title_bar_back.9"] style:UIBarButtonItemStyleDone target:self action:@selector(leftAction)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(leftAction)];
//    self.navigationItem.backBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction)];
//    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"邀请好友使用卖萌货",@"给我们评分吧",@"意见反馈", nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@"我的身份",@"接收消息提醒",@"清除缓存", nil];
    NSMutableArray *array3 = [NSMutableArray arrayWithObjects:@"关于卖萌货", nil];
    self.array = [NSMutableArray arrayWithObjects:array1,array2,array3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.array.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.array[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    // Configure the cell...
    cell.textLabel.text = self.array[indexPath.section][indexPath.row];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"ic_action_share_pressed"];
        }else if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"more_icon_score"];
        }else {
            cell.imageView.image = [UIImage imageNamed:@"ic_more_feedback"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
    }else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"checkusertype_icon_identity"];
        }else if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"ic_more_notification"];
        }else {
            cell.imageView.image = [UIImage imageNamed:@"ic_more_action_clean_cache"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
    }else if (indexPath.section == 2) {
        cell.imageView.image = [UIImage imageNamed:@"ic_more_about"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    
    return cell;
}

- (void)leftAction
{
    self.navigationController.navigationBar.hidden = YES;
    [self.navigationController popViewControllerAnimated:YES];
}
//分区头 的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            
        }else if (indexPath.row == 1) {
            
        }else {
            
        }
    }else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            
        }else if (indexPath.row == 1) {
            
        }else {
            
        }
    }else if (indexPath.section == 2) {
        UIViewController *viewC = [[UIViewController alloc] init];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, [UIScreen mainScreen].bounds.size.width, 200)];
        label.text = @"本APP不严谨,谨慎使用";
        [viewC.view addSubview:label];
        viewC.title = @"关于";
        [self.navigationController pushViewController:viewC animated:YES];
    }
    
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
