//
//  ClassifyTableViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/14.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "ClassifyTableViewController.h"
#import "ClassifyTableViewCell.h"
#import "Url.h"

#import "SpecialModel.h"
#import "SpecialRequset.h"
@interface ClassifyTableViewController ()

@property(nonatomic,strong) NSMutableArray *arr;

@end

@implementation ClassifyTableViewController
-(NSMutableArray *)arr{
    if(!_arr){
        self.arr = [NSMutableArray array];
    }
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIImage *image = [UIImage imageNamed:@"ic_menu_search"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(searchAction)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:20], NSFontAttributeName, nil, nil]];
    
    //创建单例类
    SpecialRequset *request = [SpecialRequset sharedSpecialRequest];
    //使用单例类请求数据
    [request getDataWithUrlStr:kRequestURL success:^(NSMutableArray *array) {
        [self.arr addObjectsFromArray:array];
        [self.tableView reloadData];
    }];
    
    [self addView];

}

- (void)addView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100)];
    self.scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*3, 100);
    self.scrollView.bounces = NO;
    self.tableView.tableHeaderView = self.scrollView;
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 100, 30)];
    //self.label.backgroundColor = [UIColor blackColor];
    self.label.text = @"专题合集";
    [self.tableView.tableHeaderView addSubview:self.label];
    
    self.button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button1.frame = CGRectMake(10, 40, 100, 50);
    self.button1.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:self.button1];
    
}


- (void)searchAction
{
    NSLog(@"你居然还不死心顶！d=====(￣▽￣*)b");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cell_id = @"cell_id";
    ClassifyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_id];
    if (!cell) {
        cell = [[ClassifyTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell_id];
    }
    SpecialModel *model = self.arr[indexPath.row];
    
    
    return cell;
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
