//
//  MyViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/14.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MyViewController.h"
#import "HeaderTableViewCell.h"
#import "SegmentTableViewCell.h"
#import "MyFirstTableViewCell.h"
#import "MyLoginViewController.h"
#import "MySetTableViewController.h"
@interface MyViewController ()<UITableViewDataSource>
@property (nonatomic, strong)MyFirstTableViewCell *firstCell;

@property (nonatomic,strong)NSIndexPath *temp;
@property (nonatomic, assign)CGFloat cgf;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //开启交互
    self.firstCell.imageFuzzy.userInteractionEnabled = YES;
    
    self.temp = [NSIndexPath indexPathForRow:0 inSection:0];
    
    self.navigationController.navigationBar.hidden = YES;
}

// 分区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//cell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        MyFirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if (!cell) {
            cell = [[MyFirstTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            [cell.button1 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
            [cell.button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
            [cell.button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        }
        return cell;
    }else if (indexPath.section == 1){
        HeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if (!cell) {
            cell = [[HeaderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            [cell.button addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        }
        return cell;
    }else{
        SegmentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3"];
        if (!cell) {
            cell = [[SegmentTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
        }
        return cell;
    }
    
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    MyFirstTableViewCell *first = [(UITableView *)scrollView cellForRowAtIndexPath:self.temp];
    HeaderTableViewCell *two = [(UITableView *)scrollView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.temp.row inSection:1]];
    SegmentTableViewCell *seg = [(UITableView *)scrollView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.temp.row inSection:2]];
    //    first.imageFuzzy.transform = CGAffineTransformMakeScale(1,  1 + scrollView.contentOffset.y / [UIScreen mainScreen].bounds.size.height / 3 );
    
    
    //通过滑动的便宜距离重新给图片设置大小
    
    self.cgf = scrollView.contentOffset.y;
    if(self.cgf<150)
    {
        CGRect f= first.imageFuzzy.frame;
        //        f.origin.y= yOffset;
        f.size.height = -self.cgf+[UIScreen mainScreen].bounds.size.height/3;
        first.imageFuzzy.frame = f;
        
        CGRect f1= [self.tableView cellForRowAtIndexPath:self.temp].frame;
        //        f1.origin.y= yOffset;
        f1.size.height = -self.cgf+[UIScreen mainScreen].bounds.size.height/3;
        first.frame = f1;
        
        
        CGRect f2= [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.temp.row inSection:1]].frame;
        f2.origin.y= -self.cgf+[UIScreen mainScreen].bounds.size.height/3;
        f2.size.height =40;
        two.frame = f2;
        
        
        CGRect f3= [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.temp.row inSection:2]].frame;
        f3.origin.y= -self.cgf+[UIScreen mainScreen].bounds.size.height/3+40;
        f3.size.height = 400;
        seg.frame = f3;
        
        
        
    }
    
    
}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (tableView.contentOffset.y != 0) {
            return -self.cgf+[UIScreen mainScreen].bounds.size.height/3;
        }else{
            return [UIScreen mainScreen].bounds.size.height/3;
        }
        
        
    }else if(indexPath.section == 1){
        return 40;
    }else{
        return 400;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }else if (section == 1){
        return 0;
    }else {
        return 0;
    }
}

- (void)button1Action
{
//    NSLog(@"button1");
    MyLoginViewController *login = [[MyLoginViewController alloc] init];
    [self presentViewController:login animated:YES completion:nil];
    
}

- (void)button2Action
{
    NSLog(@"123456");
    MySetTableViewController *set = [[MySetTableViewController alloc] init];
    [self.navigationController pushViewController:set animated:YES];
}

- (void)button3Action
{
//    NSLog(@"button3");
    MyLoginViewController *login = [[MyLoginViewController alloc] init];
    [self presentViewController:login animated:YES completion:nil];
    
}
- (void)button4Action
{
//    NSLog(@"button4");
    MyLoginViewController *login = [[MyLoginViewController alloc] init];
    [self presentViewController:login animated:YES completion:nil];
}


@end
