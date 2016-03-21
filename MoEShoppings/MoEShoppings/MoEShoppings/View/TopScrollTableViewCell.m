//
//  TopScrollTableViewCell.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "TopScrollTableViewCell.h"

@implementation TopScrollTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self allViews];
    }
    return  self;
}

- (void)allViews
{
    UIView *backGroumdView = [[UIView alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 160)];
    backGroumdView.backgroundColor = [UIColor colorWithRed:0.7256 green:0.7221 blue:0.7292 alpha:1.0];
    [self.contentView addSubview:backGroumdView];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 150)];
    scrollView.backgroundColor = [UIColor magentaColor];
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 5, scrollView.frame.size.height);
    [backGroumdView addSubview:scrollView];
    
    UIView *buttonView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMinX(scrollView.frame), CGRectGetMaxY(scrollView.frame), scrollView.frame.size.width, 85)];
//    buttonView.backgroundColor = [UIColor cyanColor];
    [backGroumdView addSubview:buttonView];
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    UIImage *image = [UIImage imageNamed:@"bg_count.9"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    btn1.frame = CGRectMake((buttonView.frame.size.width - 50 *4) / 10,5, 50, 50);
    [btn1 setImage:image forState:UIControlStateNormal];
    [buttonView addSubview:btn1];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn1.frame) + 5, btn1.frame.size.width, 20)];
    label1.text = @"沙卡拉卡";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.font = [UIFont systemFontOfSize:12];
    [buttonView addSubview:label1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(CGRectGetMaxX(btn1.frame) + (buttonView.frame.size.width - 50 *4) / 5, CGRectGetMinY(btn1.frame), 50, 50);
    [btn2 setImage:image forState:UIControlStateNormal];
    [buttonView addSubview:btn2];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(btn2.frame), CGRectGetMaxY(btn2.frame) + 5, btn2.frame.size.width, 20)];
    label2.text = @"沙卡拉卡";
    label2.textAlignment = NSTextAlignmentCenter;
    label2.font = [UIFont systemFontOfSize:12];
    [buttonView addSubview:label2];
    
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame = CGRectMake( CGRectGetMaxX(btn2.frame) + (buttonView.frame.size.width - 50 *4) / 5, CGRectGetMinY(btn2.frame), 50, 50);
    [btn3 setImage:image forState:UIControlStateNormal];
    [buttonView addSubview:btn3];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(btn3.frame), CGRectGetMaxY(btn3.frame) + 5, btn3.frame.size.width, 20)];
    label3.text = @"沙卡拉卡";
    label3.textAlignment = NSTextAlignmentCenter;
    label3.font = [UIFont systemFontOfSize:12];
    [buttonView addSubview:label3];
    
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn4.frame = CGRectMake(CGRectGetMaxX(btn3.frame) + (buttonView.frame.size.width - 50 *4) / 5, CGRectGetMinY(btn3.frame), 50, 50);
    [btn4 setImage:image forState:UIControlStateNormal];
    [buttonView addSubview:btn4];
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(btn4.frame), CGRectGetMaxY(btn4.frame) + 5, btn4.frame.size.width, 20)];
    label4.text = @"沙卡拉卡";
    label4.textAlignment = NSTextAlignmentCenter;
    label4.font = [UIFont systemFontOfSize:12];
    [buttonView addSubview:label4];
    
    
    
}




@end
