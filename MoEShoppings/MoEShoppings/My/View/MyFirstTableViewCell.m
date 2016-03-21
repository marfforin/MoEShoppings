//
//  MyFirstTableViewCell.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MyFirstTableViewCell.h"

@implementation MyFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imageFuzzy = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_profile"]];
        self.imageFuzzy.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height / 3);
        [self.contentView addSubview:self.imageFuzzy];
        
        UIImageView *imageLanding = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"me_avatar_boy"]];
        CGPoint point = CGPointMake(self.imageFuzzy.bounds.size.width / 2, self.imageFuzzy.bounds.size.height/2);
        imageLanding.center = point;
        [self.imageFuzzy addSubview:imageLanding];
        //buttuon
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        button1.frame = CGRectMake(20, 30, 20, 20);
        [button1 setBackgroundImage:[UIImage imageNamed:@"me_giftmessage"] forState:UIControlStateNormal];
        [button1 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
        button2.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 40, 30, 20, 20);
        [button2 setBackgroundImage:[UIImage imageNamed:@"me_settings"] forState:UIControlStateNormal];
        [button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        button3.frame = CGRectMake(CGRectGetMinX(imageLanding.frame), CGRectGetMaxY(imageLanding.frame)+10, imageLanding.frame.size.width, 20);
        [button3 setTitle:@"登录" forState:UIControlStateNormal];
        button3.titleLabel.font = [UIFont fontWithName:@"Arial-Bold" size:12];
        [button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        [self.imageFuzzy addSubview:button1];
        [self.imageFuzzy addSubview:button2];
        [self.imageFuzzy addSubview:button3];
        
    }
    self.imageFuzzy.userInteractionEnabled = YES;
    return self;
}

- (void)button1Action
{
    NSLog(@"button1");
}

- (void)button2Action
{
    NSLog(@"button2");
}

- (void)button3Action
{
    NSLog(@"button3");
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
