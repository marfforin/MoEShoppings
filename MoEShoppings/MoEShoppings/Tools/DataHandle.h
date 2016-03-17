//
//  DataHandle.h
//  UI-Lesson-day16-02
//
//  Created by lanou3g on 16/1/19.
//  Copyright © 2016年 wzj. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ReloadDataBlock)();
typedef void(^PassvalueBlock) (id object);

@interface DataHandle : NSObject

//首页数据数组
@property(nonatomic,strong)NSMutableArray *dataArray;
//轮播图数据
@property(nonatomic,strong)NSMutableArray *runArray;

@property(nonatomic,strong)NSDictionary *dataDic;

//

@property(nonatomic,strong)PassvalueBlock passvalueBlock;

//单例实例方法
+(DataHandle *)sharedDataHandle;

//请求数据
- (void)aychronDataWithReloadDataBlock:(ReloadDataBlock)reloadDataBlock;


//请求轮播图数据
- (void)aychronDataWithRunModelPassvalueBlock:(PassvalueBlock)passvalueBlock;


////请求电影详情数据
-(void)p_handleDataSourceWithDetailDataBlock:(NSIndexPath *)indexPath passvalueBlock:(PassvalueBlock)passvalueBlock;

@end
