//
//  MeiLaZhuanTuViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "MeiLaZhuanTuViewController.h"
#import "MeiLaZhuanTiTableViewCell.h"
#import "CommentTableViewCell.h"
#import "CHLZhuanTiList.h"
@interface MeiLaZhuanTuViewController ()

@property(nonatomic,strong)NSArray *list1Array;
@property(nonatomic,strong)NSArray *list2Array;

@property (weak, nonatomic) IBOutlet UITableView *tabView;
@end

@implementation MeiLaZhuanTuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark - loadView
-(void)layoutNav{
    UIImageView *navImagView=[UIImageView new];
    self.navigationItem.titleView=navImagView;

    [navImagView makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(40);
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.topLayoutGuide);
    }];
    navImagView.layer.cornerRadius=20;
    navImagView.clipsToBounds=YES;
    navImagView.layer.masksToBounds=YES;
    CHLList2 *list=self.list2Array[0];
    [navImagView sd_setImageWithURL:IMGURL(list.user.avatar)];
}
#pragma mark -Private Method
-(void)getData{
    [CHDataRequest ProductRankCategoryRequestDataWithUrlString:self.jumpUrlStr AndCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
        CHLZhuanTiList  *zhuanTiList=[CHLZhuanTiList yy_modelWithDictionary:responseObj];
        self.list1Array=zhuanTiList.data.list1;
        self.list2Array=zhuanTiList.data.list2;
        [self layoutNav];
        [self.tabView reloadData];
    }];
    
}


#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        return [tableView fd_heightForCellWithIdentifier:@"MeiLaZhuanTiTableViewCell" cacheByIndexPath:indexPath configuration:^(MeiLaZhuanTiTableViewCell *cell) {
            cell.list=self.list1Array[indexPath.row];
        }];
    }
    return [tableView fd_heightForCellWithIdentifier:@"CommentTableViewCell" cacheByIndexPath:indexPath configuration:^(CommentTableViewCell *cell) {
        cell.list=self.list2Array[indexPath.row];
    }];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return self.list1Array.count;
    }
    return self.list2Array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        MeiLaZhuanTiTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"MeiLaZhuanTiTableViewCell"];
        cell.list=self.list1Array[indexPath.row];
        return cell;
    }
    CommentTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"CommentTableViewCell" forIndexPath:indexPath];
    cell.list=self.list2Array[indexPath.row];
    return cell;
    
}




@end
