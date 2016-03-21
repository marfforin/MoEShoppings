//
//  HotCollectionViewController.m
//  MoEShoppings
//
//  Created by dr.m on 16/3/14.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "HotCollectionViewController.h"
#import "HotCollectionViewCell.h"
#import "UIImageView+WebCache.h"
#import "DataHandle.h"
#import "Model.h"
#import "ListViewController.h"
@interface HotCollectionViewController ()<UICollectionViewDelegateFlowLayout>

@end

@implementation HotCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{   //1.创建对象
    
//    self.view.backgroundColor = [UIColor clearColor];
    
    //1.1先创建UICollectionViewFlowLayout对象
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    //1.2配置UICollectionViewFlowLayout对象的相关属性
    //每个item的大小
    flowLayout.itemSize = CGSizeMake(190,250);
    //设置滚动方向
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //列间距
    flowLayout.minimumInteritemSpacing = 10;
    //行间距
    flowLayout.minimumLineSpacing = 10;
    //设置距屏幕边缘的距离
    flowLayout.sectionInset = UIEdgeInsetsMake(10,10,10,10);
    
    return [super initWithCollectionViewLayout:flowLayout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"ic_menu_search"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(searchAction)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:20], NSFontAttributeName, nil, nil]];
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //请求数据
    [[DataHandle sharedDataHandle] aychronDataWithReloadDataBlock:^{
        [self.collectionView reloadData];
    }];
    self.collectionView.backgroundColor = [UIColor colorWithRed:192 green:192 blue:192 alpha:1];
    self.collectionView.backgroundColor = [UIColor grayColor];
    //注册重用标志
    [self.collectionView registerClass:[HotCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}
//右键搜索
- (void)searchAction
{
    NSLog(@"点我是搜不到片的👀👀👀👀👀👀👀👀👀👀");
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ------------- UICollectionViewDelegateFlowLayout
//设置item的大小
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    ////    if (indexPath.item %2 == 0) {
//    return CGSizeMake(100, 100);
//    ////    }
//    //    return CGSizeMake(50, 50);
//}


#pragma mark <UICollectionViewDataSource>
//设置分区个数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}

//每个分区item的个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [DataHandle sharedDataHandle].dataArray.count;
}
//每个item的显示内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HotCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
      Model *model = [DataHandle sharedDataHandle].dataArray[indexPath.row];
    
    
    //cell.imageView.image = [UIImage imageNamed:@"2.png"];
    cell.titleLabel.text = model.name;
    cell.priceLabel.text = model.price;
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",model.cover_image_url]]];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

//是否能选中(默认是YES
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
//已经选中
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
   
    Model *model = [DataHandle sharedDataHandle].dataArray[indexPath.row];
    ListViewController *listVC = [[ListViewController alloc] init];
    
    listVC.url = model.url;
    
    
    [self.navigationController pushViewController:listVC animated:YES];
    
    NSLog(@"选中item");
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
