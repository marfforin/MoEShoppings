//
//  SpecialRequset.h
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SpecialRequset : NSObject

//单例方法
+ (instancetype)sharedSpecialRequest;


- (void)getDataWithUrlStr:(NSString *)urlStr success:(void(^)(NSMutableArray *array))success;


@end
