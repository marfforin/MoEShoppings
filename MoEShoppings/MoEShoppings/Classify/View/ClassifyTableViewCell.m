//
//  ClassifyTableViewCell.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "ClassifyTableViewCell.h"

@implementation ClassifyTableViewCell

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
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 30)];
    self.label.backgroundColor = [UIColor yellowColor];
    [self.contentView addSubview:self.label];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
