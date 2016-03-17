//
//  Model.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/15.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "Model.h"

@implementation Model

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,ID = %@,price = %@,favorites_count = %@,cover_image_url = %@,url = %@, purchase_url = %@", self.name,self.iid,self.price,self.favorites_count,self.cover_image_url,self.url,self.purchase_url];
}
/*
 @property(nonatomic,strong)NSString *cover_image_url;//cell缩略图URL
 @property(nonatomic,strong)NSString *iid;//ID编号
 @property(nonatomic,strong)NSString *name;//标题
 @property(nonatomic,strong)NSString *price;//价格
 @property(nonatomic,strong)NSString *favorites_count;//收藏数
 @property(nonatomic,strong)NSString *purchase_url;//淘宝链接
 @property(nonatomic,strong)NSString *url;//详情链接
 
 */

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
    if([key isEqualToString:@"id"])
        self.iid = value;
}

- (id)valueForUndefinedKey:(NSString *)key{
    return nil;
}



@end
