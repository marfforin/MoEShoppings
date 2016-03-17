//
//  ToolData.h
//  UI-Lesson-day16-02
//
//  Created by lanou3g on 16/1/20.
//  Copyright © 2016年 wzj. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^RequestDataBlock)(id object);

@interface ToolData : NSObject

+ (void)requestDataWithURL:(NSString *)urlStr withHTTPMethod:(NSString *)methodStr withHTTPBody:(NSString *)bodyStr withRequestDataBlock:(RequestDataBlock)requestDataBlock;

@end
