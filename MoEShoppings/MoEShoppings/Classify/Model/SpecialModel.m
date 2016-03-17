//
//  SpecialModel.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "SpecialModel.h"

@implementation SpecialModel

//处理异常
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.iid = value;
    }
}
- (id)valueForUndefinedKey:(NSString *)key
{
    return nil;
}

@end
