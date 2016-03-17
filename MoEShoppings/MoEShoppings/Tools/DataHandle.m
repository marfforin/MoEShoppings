//
//  DataHandle.m
//  UI-Lesson-day16-02
//
//  Created by lanou3g on 16/1/19.
//  Copyright © 2016年 wzj. All rights reserved.
//
#import "ToolData.h"
#import "DataHandle.h"
#import "Model.h"
#import "RunModel.h"
static DataHandle *dataHandle = nil;
@implementation DataHandle

//单例实例方法
+(DataHandle *)sharedDataHandle{
    @synchronized(self) {
        if (nil == dataHandle) {
            dataHandle = [[DataHandle alloc] init];
        }
    }
    return dataHandle;
}
//请求热门数据
- (void)aychronDataWithReloadDataBlock:(ReloadDataBlock)reloadDataBlock{
    
    self.dataArray = [NSMutableArray array];//实例化数组

    //请求数据,请求结束处理数据...
    [ToolData requestDataWithURL:@"http://www.maimenghuo.com/v2/items?gender=1&limit=20&offset=0&generation=1" withHTTPMethod:nil withHTTPBody:nil withRequestDataBlock:^(id object) {
       //处理数据
        NSDictionary *dic = (NSDictionary *)object;
        NSDictionary *dataDic = dic[@"data"];
        NSArray *itemsArray = dataDic[@"items"];
        //遍历字典数组,将字典转化成模型对象并存放到dataArray中
            for (NSDictionary *d in itemsArray) {
            Model *model= [[Model alloc] init];
            NSDictionary *itemsDic = d[@"data"];
            [model setValuesForKeysWithDictionary:itemsDic];
            [self.dataArray addObject:model];
            NSLog(@"Model对象-%@",model);
        }
        //数据没有问题,回调刷新界面
        if (self.dataArray != 0) {
            //回到主线程,刷新界面
            dispatch_async(dispatch_get_main_queue(), ^{
                reloadDataBlock();
            });
        }else{
            NSLog(@"self.dataArray没有数据!");
        }
    }];
}

//请求轮播图数据
- (void)aychronDataWithRunModelPassvalueBlock:(PassvalueBlock)passvalueBlock{

    self.runArray = [NSMutableArray array];//实例化数组
    
    //请求数据,请求结束处理数据...
    [ToolData requestDataWithURL:@"http://news-at.zhihu.com/api/4/stories/latest" withHTTPMethod:nil withHTTPBody:nil withRequestDataBlock:^(id object) {
        //处理数据
        NSDictionary *dic = (NSDictionary *)object;
        NSArray *array = dic[@"top_stories"];
        //遍历字典数组,将字典转化成模型对象并存放到dataArray中
        for (NSDictionary *d in array) {
            RunModel *runModel= [[RunModel alloc] init];
            [runModel setValuesForKeysWithDictionary:d];
            [self.runArray addObject:runModel];
            NSLog(@"runModel对象=%@",runModel);
        }
        //数据没有问题,回调刷新界面
        if (self.runArray != 0) {
            //回到主线程,刷新界面
            dispatch_async(dispatch_get_main_queue(), ^{
                passvalueBlock(self.runArray);
            });
        }else{
            NSLog(@"self.dataArray没有数据!");
        }
    }];


}
//请求电影详情数据
-(void)p_handleDataSourceWithDetailDataBlock:(NSIndexPath *)indexPath  passvalueBlock:(PassvalueBlock)passvalueBlock {
    self.dataDic = [[NSDictionary alloc] init];
    Model *model = self.dataArray[indexPath.row];
    NSString *body = [NSString stringWithFormat:@"http://news-at.zhihu.com/api/4/story/%@",model.iid];
    [ToolData requestDataWithURL:body withHTTPMethod:nil withHTTPBody:nil withRequestDataBlock:^(id object){
        
        NSDictionary *dic = (NSDictionary *)object;
        self.dataDic = dic;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            passvalueBlock(self.dataDic);
        });
       
    }];
}




@end
