//
//  SelectionViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/18.
//  Copyright © 2016年 dr.m. All rights reserved.
//


#define kScreenWith [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

#import "SelectionViewController.h"
#import "TopScrollModel.h"

@interface SelectionViewController ()

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *imagesArray;
@property (nonatomic, strong) NSMutableArray *cellDataArray;
@property (nonatomic, strong) UITableView *tableView;


@end

@implementation SelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.imagesArray = [NSMutableArray array];
    
    
    [self layoutTableView];
    
}

- (void)layoutTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenWith, kScreenHeight) style:UITableViewStylePlain];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.rowHeight = 60;
    
    [self.view addSubview:self.tableView];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cell_id = @"cell_top";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_id];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cell_id];
    }
    
    cell.textLabel.text = @"哇咔咔~~~！！！";
    cell.detailTextLabel.text = @"噢呦。。。。。。";
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 50;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}






/*
-(void)itemsArrayWithUrl:(NSString *)string
{
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *error1 = nil;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error1];
        if (error == nil) {
            NSDictionary *d = dict[@"data"];
            NSArray *arr1 = d[@"candidates"];
            self.dataArray = [NSMutableArray array];
            for (NSDictionary *dict1 in arr1) {
                NSLog(@"dict1   =======   %@", dict1);
                TopScrollModel *model = [[TopScrollModel alloc] init];
                [model setValuesForKeysWithDictionary:dict1];
                NSLog(@" model  888888888   %@", model);
                [self.dataArray addObject:model];
//                NSLog(@"self.dataArray  +++++++ %@", self.dataArray);
            }
        }
        
        NSLog(@"Error   =========  %@", error);
    }];
    
    
    [task resume];
    
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
