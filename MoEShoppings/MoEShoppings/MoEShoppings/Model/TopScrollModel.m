//
//  TopScrollModel.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/18.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "TopScrollModel.h"

@implementation TopScrollModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.sid = value;
    }
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"editable  == %@  id == %@  name == %@", _editable, _sid, _name];
}

@end
