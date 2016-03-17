//
//  HotCollectionViewCell.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/15.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "HotCollectionViewCell.h"

@implementation HotCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self allViews];
    }
    return self;
}
- (void)allViews{
    
    //实例化属性imageView(和item的内容视图等大)
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.contentView.bounds.origin.x, self.contentView.bounds.origin.y, self.contentView.bounds.size.width, self.contentView.bounds.size.height - 80)];
    
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(kContentViewX + 5, kContentViewY + 165, kContentViewWidth-5, 55)];
    //self.titleLabel.backgroundColor = [UIColor cyanColor];
    self.titleLabel.numberOfLines = 0;
    //自动折行设置
    //self.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
 
    self.priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(kContentViewX + 5, kContentViewY + 220, 60, 20)];
    //self.priceLabel.backgroundColor = [UIColor redColor];
    self.priceLabel.textColor = [UIColor redColor];
    
    self.favoriteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.favoriteBtn.frame = CGRectMake(kContentViewX + 140, kContentViewY + 220, 20, 20);
    [self.favoriteBtn setImage:[UIImage imageNamed:@"ic_small_heart_normal.png"] forState:UIControlStateNormal];
    
    
    //self.contentView.backgroundColor = [UIColor grayColor];
    //添加到contentView上
    [self.contentView addSubview:self.imageView];
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.priceLabel];
    [self.contentView addSubview:self.favoriteBtn];
    
    
    self.contentView.backgroundColor = [UIColor whiteColor];
    self.contentView.layer.cornerRadius = 5;
    self.contentView.layer.masksToBounds = YES;
    
}
//布局改变时会执行的方法
//-(void)layoutSubviews{
//    [super layoutSubviews];
//    self.imageView.frame = CGRectMake(self.contentView.bounds.origin.x, self.contentView.bounds.origin.y, self.contentView.bounds.size.width, self.contentView.bounds.size.height - 50);
//}


@end
