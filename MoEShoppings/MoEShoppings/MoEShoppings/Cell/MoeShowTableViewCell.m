//
//  MoeShowTableViewCell.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MoeShowTableViewCell.h"

@implementation MoeShowTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self allViews];
    }
    return self;
}


- (void)allViews
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"aaaa"]];
    imageView.frame = CGRectMake(10, 0, [[UIScreen mainScreen] bounds].size.width - 2 *10, 180);
    [self.contentView addSubview:imageView];
    
    UIImageView *blowImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ig_marker_fresh"]];
    blowImage.frame = CGRectMake(0, 0, 50, 50);
    [imageView addSubview:blowImage];
    
    
    self.layer.cornerRadius = 20;
    self.layer.masksToBounds = YES;
    
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.y += 10;
    frame.size.height += 10;
}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
