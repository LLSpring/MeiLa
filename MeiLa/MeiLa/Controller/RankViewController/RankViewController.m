//
//  RankViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "RankViewController.h"
#import "CHLRankList.h"
#import "SectionheadView.h"
#import "ButtonCollectionViewCell.h"
#import "RankListCollectionViewCell.h"
#import "RankListTableViewCell.h"
#import "FindViewController.h"
#import "CategoryViewController.h"
#import "ProductClassViewController.h"
#import "FindViewController.h"
#import "ProductRankViewController.h"
@interface RankViewController ()<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(nonatomic ,strong)NSArray *featureShowArray;
@property(nonatomic ,strong)NSArray *adviserArray;
@property(nonatomic,strong)NSArray *ToptitleArray;
@property(nonatomic,strong)NSArray *categoryArray;
@property(nonatomic,strong)NSArray *nationsArray;
@property(nonatomic,strong)NSArray *productsArray;
@property(nonatomic,strong)NSArray *jumpCategoryUrlArray;
@property(nonatomic,strong)NSArray *jumpRankUrlArray;
@property(nonatomic,strong)NSArray *jumpNationUrlArray;


@end

@implementation RankViewController
#pragma mark -life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabView.rowHeight=UITableViewAutomaticDimension;
    self.tabView.estimatedRowHeight=300;
    [self layoutNavtitleView];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [self getData];
}
#pragma mark - loadView
-(void)layoutNavtitleView{
    UIView *vi=[[NSBundle mainBundle] loadNibNamed:@"NavTitleView" owner:nil options:nil][1];
    vi.frame=CGRectMake(0, 0, self.view.frame.size.width, 30);
    vi.backgroundColor=[UIColor colorWithRed:243/255.0 green:244/255.0 blue:246/255.0 alpha:1];
    self.navigationItem.titleView=vi;
    
}
#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section==0) {
        return 0;
    }
    return 50;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    SectionheadView *headView=[[NSBundle mainBundle] loadNibNamed:@"SectionheadView" owner:nil options:nil][0];
    if (section==1) {
        headView.titleLabel.text=@"全球榜";
        return headView;
    }
   
    return nil;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return self.featureShowArray.count;
    }
    return self.nationsArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RankListTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"RankListTableViewCell" forIndexPath:indexPath];
    if (indexPath.section==0) {
        CHLImgV4 *img=(CHLImgV4 *)[self.featureShowArray[indexPath.item] img];
        [cell.contentImageView sd_setImageWithURL:IMGURL(img.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        self.productsArray=[self.featureShowArray[indexPath.item] products];
        return cell;
    }
    CHLImgV4 *img=(CHLImgV4 *)[self.nationsArray[indexPath.item] img];
    [cell.contentImageView sd_setImageWithURL:IMGURL(img.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
    self.productsArray=[self.nationsArray[indexPath.item] products];
    [cell.collecton reloadData];
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductRankViewController *pRank=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ProductRankViewController"];
    if (indexPath.section==0) {
        pRank.jumpUrlStr=self.jumpRankUrlArray[indexPath.row];
    }else{
        pRank.jumpUrlStr=self.jumpNationUrlArray[indexPath.row%10];

    }
    [self.navigationController pushViewController:pRank animated:YES];
}

#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView.tag==1) {
        return self.ToptitleArray.count;
    }else if(collectionView.tag==2){
        return self.categoryArray.count;
    }
    return self.productsArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (collectionView.tag==1) {
        ButtonCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:[NSString stringWithFormat:@"ButtonCollectionViewCell%ld",(long)collectionView.tag] forIndexPath:indexPath];
        CHLImgV4 *img=(CHLImgV4 *)[self.ToptitleArray[indexPath.item] img];
        [cell.butImageView sd_setImageWithURL:IMGURL(img.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        return cell;
    }else if (collectionView.tag==2){
        ButtonCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:[NSString stringWithFormat:@"ButtonCollectionViewCell%ld",(long)collectionView.tag] forIndexPath:indexPath];
        [cell.butImageView sd_setImageWithURL:IMGURL([self.categoryArray[indexPath.item] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        return cell;
    }
        RankListCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"RankListCollectionViewCell" forIndexPath:indexPath];
        cell.product=self.productsArray[indexPath.item];
    [cell.feedBut setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"icon_top_red_%02ld",indexPath.item+1]] forState:UIControlStateNormal];
        return cell;
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    FindViewController *find=[FindViewController new];
    if (collectionView.tag==1) {
        find.webUrl=WEBURL([self.ToptitleArray[indexPath.item] jumpData]);
        find.navigationItem.title=[self.ToptitleArray[indexPath.item] intro];
        [self.navigationController pushViewController:find animated:YES];
    }else if (collectionView.tag==2){
        if (indexPath.item==6) {
            ProductClassViewController *product=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ProductClassViewController"];
            [self.navigationController pushViewController:product animated:YES];
        }else{
        CategoryViewController *categroy=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CategoryViewController"];
            categroy.navTitle=[self.categoryArray[indexPath.item] title];
        categroy.jumpSig=self.jumpCategoryUrlArray[indexPath.item];
        [self.navigationController pushViewController:categroy animated:YES];
        }
    }else{
        find.webUrl=@"http://www.meilapp.com/html/product_content?slug=150ddadd&from=shar";
        [self.navigationController pushViewController:find animated:YES];
    }
   
}
#pragma mark -setter

-(NSArray *)jumpNationUrlArray{
    if (!_jumpNationUrlArray) {
        _jumpNationUrlArray=[[NSArray alloc] initWithObjects:
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=352&sig=ef3612beccef0ac603f3b927e76349728c848b91",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=348&sig=1fa3a5fd299647d57289aaecf7c2810521c9478c",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=344&sig=97a63c2eae63ca1fd2112bd2644caf6f34584c88",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=340&sig=1da3344620b3918b516b190c5c906b9ec9b35ff8",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=336&sig=b64b9d290a5121bb30c4faa307636435fe8f3a54",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=332&sig=6e6f36bf41b670ebf9eeec79f7908c478f41a079",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=328&sig=101686c15d4ef3194bfa122f6a2394cfdccdd696",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=324&sig=77d0a06b0a3bb23e0eba3510efa403a4e404f678",
                             @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=320&sig=d30289b8f2ab8088cf82df9e82d11ab94b0afb3c",
                              @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=312&sig=8c269cb2edf662174cc2da3fea22d401232d1766",nil];
    }
    return _jumpNationUrlArray;
}
-(NSArray *)jumpRankUrlArray{
    if (!_jumpRankUrlArray) {
        _jumpRankUrlArray=[[NSArray alloc] initWithObjects:
        @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=351&sig=f43f884a9d1cb79f388a17545087f1dafc624f06",
        @"http://api.meilapp.com/product/country_top?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&slug=350&sig=f24f700e498c67b850fd2d0063488c6411181490",
        nil];
    }
    return _jumpRankUrlArray;

}
-(NSArray *)jumpCategoryUrlArray{
    if (!_jumpCategoryUrlArray) {
        _jumpCategoryUrlArray=[[NSArray alloc] initWithObjects:
                       @"http://api.meilapp.com/search?category=00fee14a&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=897a05980442f1fde84de29f21a4c3fe99879c45",
                       @"http://api.meilapp.com/search?category=f0b7ac59&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=dedd49728d730748f6da4eca65655f5e26bbfa02",
                       @"http://api.meilapp.com/search?category=a66bf7ad&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=3159c33edece1c2399fcf1bafc71d46aed0ede3c",
                       @"http://api.meilapp.com/search?category=69c9426a&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=ee1d8041a5befa17f7e0eca34aace4ba734821d4",
                       @"http://api.meilapp.com/search?category=94852176&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=96df0c89461e9d1dd63de2be481f787b23ada2d5",
                       @"http://api.meilapp.com/search?category=a2b8a627&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=all&sig=d9a4cd2f0c30dc922de02e0a569bdf961c3620fc", nil];
    }
    return _jumpCategoryUrlArray;
}
#pragma mark -Private Method

-(void)scan{
    
}
-(void)getData{
    [CHDataRequest rankRequestDataWithCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
      CHLRankList  *rankList=[CHLRankList yy_modelWithDictionary:responseObj];
        self.describLabel.text=[NSString stringWithFormat:@"%@件收录，国内最大的化妆品信息库",rankList.data.totalDes];

        self.nationsArray=rankList.data.nations;
        self.categoryArray=rankList.data.categories;
        self.featureShowArray=rankList.data.featureShow;
        self.adviserArray=rankList.data.advisers.list;
        self.ToptitleArray=rankList.data.top.custom;
        [self.tabView reloadData];
        [self.topCollection reloadData];
        [self.butCollection reloadData];
    }];
    
    
}



@end
