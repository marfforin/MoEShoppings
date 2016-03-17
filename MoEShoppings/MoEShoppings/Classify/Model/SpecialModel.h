//
//  SpecialModel.h
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SpecialModel : NSObject

@property(nonatomic,strong) NSString *iid;
@property(nonatomic,strong) NSString *banner_image_url;//图片地址
@property(nonatomic,strong) NSString *subtitle;
@property(nonatomic,strong) NSString *title;

@property(nonatomic,strong) UIImage *myImage;
@property(nonatomic,assign) BOOL isLoading;


@end
