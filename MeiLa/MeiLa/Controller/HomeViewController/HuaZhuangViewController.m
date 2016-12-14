//
//  HuaZhuangViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/24.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "HuaZhuangViewController.h"
#import "PersonTableViewCell.h"
#import "ScrPicCollectionViewCell.h"
#import "ButtonCollectionViewCell.h"
#import "CHLHuaZhuanList.h"
#import "SectionheadView.h"
#import "HuaZhuangDetailViewController.h"
#import "FindViewController.h"
@interface HuaZhuangViewController ()
@property(nonatomic,strong)NSArray *dataArray;
@property(nonatomic,strong)NSArray *videoArray;
@property(nonatomic,strong)NSArray *scrPicArray;
@property(nonatomic,strong)NSArray *zhuanTiArray;
@property(nonatomic,strong)NSArray *jumpArray;
@property (weak, nonatomic) IBOutlet UICollectionView *collection;
@property (weak, nonatomic) IBOutlet UICollectionView *butCollection;
@property (weak, nonatomic) IBOutlet UITableView *tabView;
@end

@implementation HuaZhuangViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    SectionheadView *headView=[[NSBundle mainBundle] loadNibNamed:@"SectionheadView" owner:nil options:nil][0];
    if (section==0) {
        headView.titleLabel.text=[[[self.videoArray[section] extra] top] title];
    }else{
        headView.titleLabel.text=@"美妆教程";
    }
    
    return headView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    return  [tableView fd_heightForCellWithIdentifier:@"PersonTableViewCell" cacheByIndexPath:indexPath configuration:^(PersonTableViewCell *cell) {
        if (indexPath.section==0) {
            cell.video=self.videoArray[indexPath.row];
        }else{
            cell.feeds=self.dataArray[indexPath.row];
        }
        
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return self.videoArray.count;
    }
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PersonTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"PersonTableViewCell" forIndexPath:indexPath];
    if (indexPath.section==0) {
        cell.video=self.videoArray[indexPath.row];
    }else{
    cell.feeds=self.dataArray[indexPath.row];
    }
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FindViewController *find=[FindViewController new];
    if (indexPath.section==0) {
        find.webUrl=@"http://www.meilapp.com/video/ad43f95c/";
    }else{
        find.webUrl=@"http://www.meilapp.com/html/vtalk_content?slug=598a3978&utm_source=share&utm_user=e3da02ce";
    }
    [self.navigationController pushViewController:find animated:YES];

}
#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView.tag==10) {
        return self.scrPicArray.count;
    }
    return self.zhuanTiArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView.tag==10) {
        ScrPicCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"ScrPicCollectionViewCell" forIndexPath:indexPath];
        cell.makeBut=self.scrPicArray[indexPath.row];
        return cell;
    }
    ButtonCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"ButtonCollectionViewCell" forIndexPath:indexPath];
    [cell.butImageView sd_setImageWithURL:IMGURL([self.zhuanTiArray[indexPath.item] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
    cell.butLabel.text=[self.zhuanTiArray[indexPath.item] title];
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    HuaZhuangDetailViewController *detail=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HuaZhuangDetailViewController"];
    detail.urlStr=self.jumpArray[indexPath.item];
    [self.navigationController pushViewController:detail animated:YES];
}


#pragma mark -Private Method
-(void)getData{
    [CHDataRequest homeSecondRequestDataWithCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
                CHLHuaZhuanList *huaZhuangList=[CHLHuaZhuanList yy_modelWithDictionary:responseObj];
                self.dataArray=huaZhuangList.data.feeds;
                self.scrPicArray=huaZhuangList.data.makeupButtons;
                self.zhuanTiArray=huaZhuangList.data.beautyMakeups;
                self.videoArray=huaZhuangList.data.videos;
        [self.tabView reloadData];
        [self.collection reloadData];
        [self.butCollection reloadData];
            }];
    
    
}

#pragma mark -getter
-(NSArray *)jumpArray{
    if (!_jumpArray) {
        _jumpArray=[[NSArray alloc] initWithObjects:@"http://api.meilapp.com/vtalk_v4/list_by_tag?cream=0&get_more=0&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&not_cream=0&tag_id=17629&sig=884ce1a245c4c72d348770bce890c4e59516b50e",
        @"http://api.meilapp.com/vtalk_v4/list_by_tag?cream=0&get_more=0&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&not_cream=0&tag_id=17629&sig=884ce1a245c4c72d348770bce890c4e59516b50e",
        @"http://api.meilapp.com/vtalk_v4/list_by_tag?cream=0&get_more=0&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&not_cream=0&tag_id=29595&sig=596865f2ca78b1ccece6e5900111e90298982bc5",
        @"http://api.meilapp.com/vtalk_v4/list_by_tag?cream=0&get_more=0&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&not_cream=0&tag_id=19116&sig=74a40dfe16c9577c2880f05effbd955a62d9b354",
        @"http://api.meilapp.com/vtalk_v4/list_by_tag?cream=0&get_more=0&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&not_cream=0&tag_id=19116&sig=74a40dfe16c9577c2880f05effbd955a62d9b354",nil];
    }
    return _jumpArray;
}
@end
