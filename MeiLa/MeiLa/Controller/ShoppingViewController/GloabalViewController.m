//
//  ShoppingViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "GlobalViewController.h"
#import "CHLGlobalList.h"
#import "SectionheadView.h"
#import "GlobalTableViewCell.h"
#import "RankListCollectionViewCell.h"
#import "RankListTableViewCell.h"
#import "FindViewController.h"
@interface GlobalViewController ()<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong)NSArray *findArray;
@property(nonatomic,strong)NSArray *zhiXuanArray;
@property(nonatomic,strong)NSString  *findPicUrl;
@property(nonatomic,strong)NSString  *webUrl;
@property(nonatomic,strong)NSArray *jumpArray;
@property(nonatomic,strong)NSArray *jumpFeedArray;

@end

@implementation GlobalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationItem.title=@"全球购";
    [self getData];
}
#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
      return [tableView fd_heightForCellWithIdentifier:@"RankListTableViewCell" cacheByIndexPath:indexPath configuration:^(RankListTableViewCell *cell) {
          [cell.contentImageView sd_setImageWithURL:IMGURL(self.findPicUrl) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
          [cell.collecton reloadData];
        }];
    }
    
    return [tableView fd_heightForCellWithIdentifier:@"GlobalTableViewCell" cacheByIndexPath:indexPath configuration:^(GlobalTableViewCell *cell) {
        cell.product=self.zhiXuanArray[indexPath.item];
    }];
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    SectionheadView *headView=[[NSBundle mainBundle] loadNibNamed:@"SectionheadView" owner:nil options:nil][0];
    if (section==0) {
        headView.titleLabel.text=@"发现好货";
        return headView;
    }
    headView.titleLabel.text=@"美啦直选";
    
    return headView;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 1;
    }
    return  self.zhiXuanArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        RankListTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"RankListTableViewCell" forIndexPath:indexPath];
        [cell.contentImageView sd_setImageWithURL:IMGURL(self.findPicUrl) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        [cell.collecton reloadData];
        return cell;
    }
    GlobalTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"GlobalTableViewCell" forIndexPath:indexPath];
    cell.product=self.zhiXuanArray[indexPath.item];
    return cell;

    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FindViewController *find=[FindViewController new];
    if (indexPath.section==0) {
        find.webUrl=self.webUrl;
        
    }else{
        find.webUrl=self.jumpFeedArray[indexPath.row/10];
    }
    find.navigationItem.title=@"商品详情";
    [self.navigationController pushViewController:find animated:YES];

}

#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.findArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    RankListCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"RankListCollectionViewCell" forIndexPath:indexPath];
    cell.products=self.findArray[indexPath.item];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    FindViewController *find=[FindViewController new];
    find.webUrl=self.jumpArray[indexPath.item];
    find.navigationItem.title=@"商品详情";
    [self.navigationController pushViewController:find animated:YES];
}
#pragma mark -Private Method

-(void)getData{
    [CHDataRequest globalRequestDataWithCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
        CHLGlobalList  *globalList=[CHLGlobalList yy_modelWithDictionary:responseObj];
        self.findArray=[[globalList.data.modules[0] units][0] products ] ;
        self.findPicUrl=[[globalList.data.modules[0] units][0] img];
        self.webUrl=[[globalList.data.modules[0] units][0] jumpData];
        self.zhiXuanArray=[globalList.data.modules[1] products];
        [self.tabView reloadData];
    }];
    
    
}

#pragma mark -setter getter
-(NSArray *)jumpArray{
    if (!_jumpArray) {
        _jumpArray=[[NSArray alloc] initWithObjects:
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=523227902623&ali_trackid=2:mm_116669891_0_0:1480335234_311_1153156126",
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=43233898966&ali_trackid=2:mm_116669891_0_0:1480335390_270_817050225",
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=19094946929&ali_trackid=2:mm_116669891_0_0:1480335419_234_1535979314",
                    @"https://detail.m.tmall.com/item.htm?id=531483195805&ali_trackid=2:mm_116669891_0_0:1480335503_3k1_2031086263",
                    @"https://detail.m.tmall.com/item.htm?id=17111117593&ali_trackid=2:mm_116669891_0_0:1480335572_286_641544699",
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=523079606446&ali_trackid=2:mm_116669891_0_0:1480335600_3k2_981139117",
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=523246348741&ali_trackid=2:mm_116669891_0_0:1480335630_2k9_184448731",
                    @"https://h5.m.taobao.com/awp/core/detail.htm?id=16765778456&ali_trackid=2:mm_116669891_0_0:1480335656_3k3_298809547",
                    @"https://detail.m.tmall.com/item.htm?id=42444448393&ali_trackid=2:mm_116669891_0_0:1480335682_2k1_682273019",
                    @"http://www.meilapp.com/activities/47db8990/?in_channel=meigou.m.10_123.1_2039",
                    nil];
    }
    return _jumpArray;
}

-(NSArray *)jumpFeedArray{
    if (!_jumpFeedArray) {
        _jumpFeedArray=[[NSArray alloc] initWithObjects:
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=541904361048&ali_trackid=2:mm_116669891_0_0:1480336457_212_59132659",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=541891692017&ali_trackid=2:mm_116669891_0_0:1480336899_3k3_1449535514",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=541920139912&ali_trackid=2:mm_116669891_0_0:1480336927_2k2_1973895077",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=20970724217&ali_trackid=2:mm_116669891_0_0:1480336953_211_1591609365",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=531851436674&ali_trackid=2:mm_116669891_0_0:1480336974_212_1746428921",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=538759393189&ali_trackid=2:mm_116669891_0_0:1480337005_2k5_1690769193",
        @"https://detail.m.tmall.com/item.htm?id=521663521255&ali_trackid=2:mm_116669891_0_0:1480337040_212_902080929",
        @"https://detail.m.tmall.com/item.htm?id=17101010844&ali_trackid=2:mm_116669891_0_0:1480337062_214_1659671823",
        @"https://h5.m.taobao.com/awp/core/detail.htm?id=538723493180&ali_trackid=2:mm_116669891_0_0:1480337086_272_489218298",
        @"https://detail.m.tmall.com/item.htm?id=535010349025&ali_trackid=2:mm_116669891_0_0:1480337109_270_852068291",
                        nil];
    }
    return _jumpFeedArray;
}

@end
