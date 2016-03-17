//
//  Model.h
//  MoEShoppings
//
//  Created by lanou3g on 16/3/15.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Model : NSObject




@property(nonatomic,strong)NSString *cover_image_url;//cell缩略图URL

@property(nonatomic,strong)NSString *iid;//ID编号

@property(nonatomic,strong)NSString *name;//标题
@property(nonatomic,strong)NSString *price;//价格
@property(nonatomic,strong)NSString *favorites_count;//收藏数

@property(nonatomic,strong)NSString *purchase_url;//淘宝链接

@property(nonatomic,strong)NSString *url;//详情链接


@property(nonatomic,strong)UIImage  *myImage;//请求获取到image对象

@property (nonatomic, assign) BOOL isLoading;//判断是否加载完成



@end
