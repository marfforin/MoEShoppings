//
//  ScrollButtonTableViewCell.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/18.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#define FWidth [UIScreen mainScreen].bounds.size.width
#define FHeight [UIScreen mainScreen].bounds.size.height

#import "ScrollButtonTableViewCell.h"

@implementation ScrollButtonTableViewCell

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
    UIImageView *cellBackGroundView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, FWidth, 80)];
    [self.contentView addSubview:cellBackGroundView];
    
    
    
    
    
    
    
}





- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
