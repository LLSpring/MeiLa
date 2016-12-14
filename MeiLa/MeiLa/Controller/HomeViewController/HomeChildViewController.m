//
//  HomeChildViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "HomeChildViewController.h"
#import "CHDataRequest.h"
#import "ScrPicCollectionViewCell.h"
#import "ZhanTiTableViewCell.h"
#import "ZhuanTiCollectionViewCell.h"
#import "PersonTableViewCell.h"
#import "CHLHomeList.h"
#import "CHLHuaZhuanList.h"
#import "MeiLaZhuanTuViewController.h"
NSString *const PERSONCELLKEY=@"PersonTableViewCell";
NSString *const ZHUANTICELLKEY=@"ZhanTiTableViewCell";
NSString *const SCRPICCOLLECTIONCELLKEY=@"ScrPicCollectionViewCell";
NSString *const ZHUANTICOLLECTIONCELLKEY=@"ZhuanTiCollectionViewCell";
@interface HomeChildViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource,ZYBannerViewDataSource,ZYBannerViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tabView;


@property(nonatomic,strong)NSArray *dataArray;
@property(nonatomic,strong)NSArray *videoArray;
@property(nonatomic,strong)NSArray *scrPicArray;
@property(nonatomic,strong)NSArray *zhuanTiArray;
@property(nonatomic,strong)NSArray *zhuanTiJumpArray;
@property(nonatomic,strong)NSTimer *timer;
@property(nonatomic,strong)NSArray *personJumpArray;
@property (weak, nonatomic) IBOutlet ZYBannerView *bannerView;

@end

@implementation HomeChildViewController
#pragma mark -life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets=NO;

}

-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark -ZYBannerViewDelegate


- (NSInteger)numberOfItemsInBanner:(ZYBannerView *)banner
{
    return self.scrPicArray.count;
}
- (UIView *)banner:(ZYBannerView *)banner viewForItemAtIndex:(NSInteger)index
{
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView sd_setImageWithURL:IMGURL([self.scrPicArray[index] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        return imageView;
}

- (void)banner:(ZYBannerView *)banner didSelectItemAtIndex:(NSInteger)index{
    MeiLaZhuanTuViewController *zhuanTi=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MeiLaZhuanTuViewController"];
    zhuanTi.jumpUrlStr=@"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=ecab2756&sig=e437116e2018fb12edb1242fafed848dee05e72c";
    [self.navigationController pushViewController:zhuanTi animated:YES];
}
#pragma mark UITableViewDataSource UITableViewDelegate



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        return 150;
    }
    CHLFeeds *feeds=self.dataArray[indexPath.row];
    if ([feeds.type
         isEqualToString:@"date_feed"]){
        return 50;
    }
    
    return [tableView fd_heightForCellWithIdentifier:PERSONCELLKEY cacheByIndexPath:indexPath configuration:^(PersonTableViewCell *cell) {
        cell.feeds=self.dataArray[indexPath.row-1];
       
    }];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        ZhanTiTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ZHUANTICELLKEY forIndexPath:indexPath];
        [cell.collection reloadData];
        return cell;
    }
    CHLFeeds *feeds=self.dataArray[indexPath.row];
    if ([feeds.type
         isEqualToString:@"date_feed"]) {
        ZhanTiTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ZHUANTICELLKEY forIndexPath:indexPath];
        cell.titleLabel.text=feeds.feed.summary;
        cell.titleLImageView.hidden=YES;
        cell.titleImageView.hidden=YES;
        cell.collection.hidden=YES;
        return cell;
    }
    PersonTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:PERSONCELLKEY forIndexPath:indexPath];
    cell.feeds=self.dataArray[indexPath.row];
    [cell.focusBut addTarget:self action:@selector(isFocus:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
        MeiLaZhuanTuViewController *zhuanTi=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MeiLaZhuanTuViewController"];
        zhuanTi.jumpUrlStr=self.personJumpArray[indexPath.row%5];
        [self.navigationController pushViewController:zhuanTi animated:YES];
  
}
#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
        return self.zhuanTiArray.count;
    }
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
        ZhuanTiCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:ZHUANTICOLLECTIONCELLKEY forIndexPath:indexPath];
        cell.litleImageView.hidden=indexPath.item==0?NO:YES;
        [cell.imagView sd_setImageWithURL:IMGURL([[self.zhuanTiArray[indexPath.item]feed] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    MeiLaZhuanTuViewController *zhuanTi=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MeiLaZhuanTuViewController"];
    
        zhuanTi.jumpUrlStr=self.zhuanTiJumpArray[indexPath.row];

    [self.navigationController pushViewController:zhuanTi animated:YES];
}
#pragma mark -UIScrollViewDelegate

#pragma mark -setter getter
-(NSArray *)personJumpArray{
    if (!_personJumpArray) {
        _personJumpArray=[[NSArray alloc] initWithObjects:@"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=a8bc9cb0&sig=6ac6aa00294b9b8841d09089bc64fbdb22f6c846",
                          @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=b3a743b9&sig=a51c4c07f740cac6c85040b6c21ab9526a9b266d",
                          @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=27d93a82&sig=c8913357e231a923f0e4645f41de7090b2c28d60",
                          @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=42c2890d&sig=61dbdec15978a32505573d5fcf44a97f9882e9da",
                           @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=2f480fc8&sig=fd733339da0c19ea6cd1e5cdce7484c0871f6de5",
                          nil];

    }
    return _personJumpArray;
}
-(NSArray *)zhuanTiJumpArray{
    if (!_zhuanTiJumpArray) {
        _zhuanTiJumpArray=[[NSArray alloc] initWithObjects:@"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=88f65105&sig=358882e6f4001fb765cdd6a31a4fccb644f1cb37",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=2fc55ac4&sig=53b46a4fda79c0c5644a7cf8c1af89df4b6984f7",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=41664626&sig=3b31e1575f3f25d2633f3dddab6f8cf956b79097",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=ecab2756&sig=e437116e2018fb12edb1242fafed848dee05e72c",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=88f65105&sig=358882e6f4001fb765cdd6a31a4fccb644f1cb37",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=12ed0698&sig=22723c739abe289c92d2eba9d121fd09667c6574",
        @"http://api.meilapp.com/vtalk/vtalk_comments?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=e924c82d&sig=d5ccd8907b644a64e09091a244e968f245c5d9e1",
        nil];
    }
    return _zhuanTiJumpArray;
}
#pragma mark -Private Method
static bool isFocus;
-(void)isFocus:(UIButton *)but{
    if (!isFocus) {
        [but setTitle:@"已关注" forState:UIControlStateNormal];

    }else{
        UIAlertController *action=[UIAlertController alertControllerWithTitle:nil message:@"不再关注" preferredStyle:UIAlertControllerStyleAlert];
        [action addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [but setTitle:@"关注ta" forState:UIControlStateNormal];
        }]];
        [action addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil] ];
        [self presentViewController:action animated:YES completion:nil];


    }
   isFocus=!isFocus;
}
-(void)getData{
    
        [CHDataRequest homeOtherRequestDataWithCompletion:^(id responseObj, NSError *error) {
            CHLHomeList *homeList=[CHLHomeList yy_modelWithDictionary:responseObj];
             NSLog(@"%@",error);
            self.zhuanTiArray=homeList.data.burnFeed;
            self.dataArray=homeList.data.feeds;
            self.scrPicArray=homeList.data.banners;
            [self.tabView reloadData];
            [self.bannerView reloadData];
        }];

    
   
}
@end
