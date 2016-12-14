//
//  ProductClassViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "ProductClassViewController.h"
#import "ZhuanTiCollectionViewCell.h"
#import "CHLProductClass.h"
#import "SectionheadView.h"
#import "HeadCollectionReusableView.h"
@interface ProductClassViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)NSArray *productArray;
@property(nonatomic,strong)NSArray *categoryArray;

@end

@implementation ProductClassViewController
#pragma mark -life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationItem.title=@"产品分类";
    [self getData];
}
#pragma mark -UICollectionViewDataSource

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    HeadCollectionReusableView *reuseView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        reuseView.titleLabel.text=[self.productArray[indexPath.section]n];
       
    } else {
        return nil;
    }
    return reuseView;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return [self.productArray[section] c].count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ZhuanTiCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"ProductClassCell" forIndexPath:indexPath];
    self.categoryArray=[self.productArray[indexPath.section] c];
    [cell.imagView sd_setImageWithURL:IMGURL([self.categoryArray[indexPath.item]i]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
    return cell;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.productArray.count;
}

#pragma mark -private Methods
-(void)getData{
    [CHDataRequest RankProductClassRequestDataWithCompletion:^(id responseObj, NSError *error) {
        CHLProductClass *product=[CHLProductClass yy_modelWithDictionary:responseObj];
        self.productArray=product.data.categories;
        [self.collection reloadData];
    }];
}
@end
