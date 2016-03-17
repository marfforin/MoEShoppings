//
//  HotCollectionViewCell.h
//  MoEShoppings
//
//  Created by lanou3g on 16/3/15.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotCollectionViewCell : UICollectionViewCell


@property(nonatomic,strong)UIImageView *imageView;


@property(nonatomic,strong)UILabel *titleLabel;

@property(nonatomic,strong)UILabel *priceLabel;

@property(nonatomic,strong)UILabel *favoritesLab;//收藏数

@property(nonatomic,strong)UIButton *favoriteBtn;//收藏按钮



@end
