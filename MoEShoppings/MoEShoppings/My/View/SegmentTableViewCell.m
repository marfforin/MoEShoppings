//
//  SegmentTableViewCell.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "SegmentTableViewCell.h"
#import "MyComTableViewController.h"
#import "MySpeTableViewController.h"
@implementation SegmentTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //segment
        NSArray *arr = [NSArray arrayWithObjects:@"喜欢的商品",@"喜欢的专题", nil];
        self.segment = [[UISegmentedControl alloc] initWithItems:arr];
        self.segment.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30);
        [self.segment addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
        
        [self addSubview:self.segment];
    }
    return self;
}

- (void)segmentAction:(id)sender
{
    UISegmentedControl *seg = (UISegmentedControl *)sender;
    if (seg.selectedSegmentIndex == 0) {
//        MyComTableViewController *comTVC = [[MyComTableViewController alloc] init];
        UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.segment.frame),[UIScreen mainScreen].bounds.size.width ,[UIScreen mainScreen].bounds.size.height-CGRectGetMaxY(self.segment.frame)) style:UITableViewStylePlain];
        [self addSubview:tableView1];
        
    }else{
//        MySpeTableViewController *speTVC = [[MySpeTableViewController alloc] init];
        UITableView *tableView2 = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.segment.frame),[UIScreen mainScreen].bounds.size.width ,[UIScreen mainScreen].bounds.size.height-CGRectGetMaxY(self.segment.frame)) style:UITableViewStylePlain];
        [self addSubview:tableView2];
    }
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
