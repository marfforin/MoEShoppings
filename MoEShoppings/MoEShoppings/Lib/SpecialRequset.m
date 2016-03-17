//
//  SpecialRequset.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/16.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "SpecialRequset.h"
#import "AFNetworking.h"
#import "SpecialModel.h"
@implementation SpecialRequset

//单例方法
+ (instancetype)sharedSpecialRequest
{
    static SpecialRequset *specialRequest = nil;
    static dispatch_once_t t;
    dispatch_once(&t, ^{
        specialRequest = [[SpecialRequset alloc] init];
    });
    return specialRequest;
}
- (void)getDataWithUrlStr:(NSString *)urlStr success:(void(^)(NSMutableArray *array))success
{
    NSMutableArray *modelArr = [NSMutableArray array];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *d = responseObject[@"data"];
        NSArray *d1 = d[@"collections"];
        //遍历字典
            for (NSDictionary *dic in d1) {
                SpecialModel *model = [[SpecialModel alloc] init];
                [model setValuesForKeysWithDictionary:dic];
                [modelArr addObject:model];
                NSLog(@"%@",modelArr);
                success(modelArr.mutableCopy);
            }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}





@end
