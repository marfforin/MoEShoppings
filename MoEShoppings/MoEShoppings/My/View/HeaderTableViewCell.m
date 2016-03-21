//
//  HeaderTableViewCell.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "HeaderTableViewCell.h"

@implementation HeaderTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //button
        self.button = [UIButton buttonWithType:UIButtonTypeSystem];
        self.button.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30);
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.button.frame.size.width, self.button.frame.size.height)];
        [self.button addSubview:self.label];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_more_credit"]];
        imageView.frame = CGRectMake(10, 5, 30, 30);
        [self.label addSubview:imageView];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame)+10, 5, 70, 30)];
        label.text = @"我的积分";
        [self.label addSubview:label];
        
        UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_chevron"]];
        imageView1.frame = CGRectMake(self.label.frame.size.width-40, 5, 30, 30);
        [self.label addSubview:imageView1];
        
        [self.button addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];

    }
    self.userInteractionEnabled = YES;
    return self;
}


- (void)button4Action
{
    NSLog(@"button4");
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
