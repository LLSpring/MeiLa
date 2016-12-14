//
//  ProductRankViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "ProductRankViewController.h"
#import "CHLProductRankList.h"
#import "CategroyContentTableViewCell.h"
@interface ProductRankViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *titleImagView;
@property (weak, nonatomic) IBOutlet UITableView *tabView;
@property(nonatomic,strong)NSArray *productArray;
@end

@implementation ProductRankViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark - loadView

#pragma mark -Private Method
-(void)getData{
    [CHDataRequest ProductRankCategoryRequestDataWithUrlString:self.jumpUrlStr AndCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
        CHLProductRankList *rankList=[CHLProductRankList yy_modelWithDictionary:responseObj];
        self.productArray=[rankList.data.subList[0] products];
        self.navigationItem.title=[rankList.data.subList[0] title];
        [self.titleImagView sd_setImageWithURL:IMGURL(rankList.data.bannerImg.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        [self.tabView reloadData];
    }];
    
}


#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    return [tableView fd_heightForCellWithIdentifier:@"CategroyContentTableViewCell" cacheByIndexPath:indexPath configuration:^(CategroyContentTableViewCell *cell) {
        cell.products=self.productArray[indexPath.row];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.productArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategroyContentTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"CategroyContentTableViewCell" forIndexPath:indexPath];
    cell.products=self.productArray[indexPath.row];
    cell.rankImagView.image=[UIImage imageNamed:[NSString stringWithFormat:@"icon_top_tag_%02ld",(long)indexPath.row+1]];
    return cell;
    
}






@end
