//
//  HuaZhuangDetailViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "HuaZhuangDetailViewController.h"
#import "HuaZhuanDetailCollectionViewCell.h"
#import "CHLHuaZhuangDetailList.h"
#import "HeadCollectionReusableView.h"
#import "ZhuanTiCollectionViewCell.h"
@interface HuaZhuangDetailViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)NSArray *vtalkArray;
@property(nonatomic,strong)NSArray *videoArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collection;
@end

@implementation HuaZhuangDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark -network Request
-(void)getData{
    [CHDataRequest RankCategoryRequestDataWithUrlString:self.urlStr AndCompletion:^(id responseObj, NSError *error) {
        CHLHuaZhuangDetailList *detailList=[CHLHuaZhuangDetailList yy_modelWithDictionary:responseObj];
        self.vtalkArray=detailList.data.vtalk.vtalks;
        self.videoArray=detailList.data.video.videos;
        [self.collection reloadData];
    }];
}
#pragma mark -UICollectionViewDataSource

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    HeadCollectionReusableView *reuseView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
    if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    [reuseView.headCollection reloadData];
    return reuseView;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView.tag==1) {
        return self.videoArray.count;
    }
    return self.vtalkArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView.tag==1) {
        ZhuanTiCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"ZhuanTiCollectionViewCell" forIndexPath:indexPath];
        cell.videos=self.videoArray[indexPath.item];
        return cell;
    }
    HuaZhuanDetailCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier: @"HuaZhuanDetailCollectionViewCell" forIndexPath:indexPath];
    cell.vtalks=self.vtalkArray[indexPath.item];
    return cell;
}
@end
