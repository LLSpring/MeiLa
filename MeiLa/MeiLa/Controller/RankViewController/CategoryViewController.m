//
//  CategoryViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CategoryViewController.h"
#import "CHLCategroyList.h"
#import "CategroyTopTableViewCell.h"
#import "CategroyContentTableViewCell.h"
#import "NavTitleView.h"
#import "ProductClassViewController.h"
@interface CategoryViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tabView;
@property(nonatomic,strong)NSArray *productArray;
@property(nonatomic,strong)NSArray *topListArray;
@property(nonatomic,strong)NSString *countTitle;
@property (weak, nonatomic) IBOutlet UIImageView *priceOderImgView;
@property (weak, nonatomic) IBOutlet UIImageView *brandImaView;
@property (weak, nonatomic) IBOutlet UIButton *synthesizeOrder;
@property (weak, nonatomic) IBOutlet UIButton *priceOrderBut;
@property (weak, nonatomic) IBOutlet UIButton *brandOrderBut;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *modalViewHeightCon;
@property (weak, nonatomic) IBOutlet UIView *modalView;

@end

@implementation CategoryViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets=YES;
    [self layoutNavtitleView];
    self.synthesizeOrder.selected=YES;
}

-(void)viewWillAppear:(BOOL)animated{
    [self getData];
}
#pragma mark - loadView
-(void)layoutNavtitleView{
    NavTitleView *vi=(NavTitleView *)[[NSBundle mainBundle] loadNibNamed:@"NavTitleView" owner:nil options:nil][2];
    vi.titleLabel.text=self.navTitle;
    [vi.titleBut addTarget:self action:@selector(choose) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView=vi;
    
}
#pragma mark -Private Method
static bool isOpen;
-(void)choose{
    if (!isOpen) {
        [UIView animateWithDuration:2 animations:^{
            self.modalViewHeightCon.constant=400;
            [self.view layoutIfNeeded];
            
        }];
        ProductClassViewController *product=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ProductClassViewController"];
        [self addChildViewController:product];
        [self.modalView addSubview:product.view];
        [product.view makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.modalView);
        }];

            }else{
        [UIView animateWithDuration:1 animations:^{
            self.modalViewHeightCon.constant=0;
            [self.view layoutIfNeeded];
        }];
    }
    isOpen=!isOpen;

    
}
-(void)getData{
    [CHDataRequest RankCategoryRequestDataWithUrlString:self.jumpSig AndCompletion:^(id responseObj, NSError *error) {
        NSLog(@"%@",error.userInfo);
        CHLCategroyList *categroyList=[CHLCategroyList yy_modelWithDictionary:responseObj];
        self.productArray=categroyList.data.products;
        self.topListArray=categroyList.data.topList;
        self.countTitle=categroyList.data.countTitle;
        [self.tabView reloadData];
    }];
    
}
static bool isASC;
- (IBAction)synthesizeOrder:(UIButton *)sender {
    self.synthesizeOrder.selected=sender.tag==1?YES:NO;
    self.priceOrderBut.selected=sender.tag==2?YES:NO;
    self.synthesizeOrder.selected=sender.tag==1?YES:NO;
    if (sender.tag==1) {
        [self getData];
    }else if(sender.tag==2){
        if (self.priceOrderBut.selected==YES) {
            self.priceOderImgView.highlighted=YES;
        }
        if (isASC) {
            [CHDataRequest RankCategoryPriceASCRequestDataWithCompletion:^(id responseObj, NSError *error) {
                NSLog(@"%@",error.userInfo);
                CHLCategroyList *categroyList=[CHLCategroyList yy_modelWithDictionary:responseObj];
                self.productArray=categroyList.data.products;
                self.topListArray=categroyList.data.topList;
                self.countTitle=categroyList.data.countTitle;
                [self.tabView reloadData];
            }];
            self.priceOderImgView.image=[UIImage imageNamed:@"search_icon_sequence_rise"];
        }else{
            [CHDataRequest RankCategoryPriceDESCRequestDataWithCompletion:^(id responseObj, NSError *error) {
                NSLog(@"%@",error.userInfo);
                CHLCategroyList *categroyList=[CHLCategroyList yy_modelWithDictionary:responseObj];
                self.productArray=categroyList.data.products;
                self.topListArray=categroyList.data.topList;
                self.countTitle=categroyList.data.countTitle;
                [self.tabView reloadData];
            }];
            self.priceOderImgView.image=[UIImage imageNamed:@"search_icon_sequence_drop"];
        }
        isASC=!isASC;
       
    }else{
        return;
    }
    [self.tabView reloadData];

}


#pragma mark -System Delegate
#pragma mark UITableViewDataSource UITableViewDelegate


- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section==1) {
        UILabel *label=[UILabel new];
        label.text=self.countTitle;
        label.font=[UIFont systemFontOfSize:15];
        return label;
    }
    
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        return [tableView fd_heightForCellWithIdentifier:@"CategroyTopTableViewCell" cacheByIndexPath:indexPath configuration:^(CategroyTopTableViewCell *cell) {
            cell.topList=self.topListArray[indexPath.row];
        }];
    }
    return [tableView fd_heightForCellWithIdentifier:@"CategroyContentTableViewCell" cacheByIndexPath:indexPath configuration:^(CategroyContentTableViewCell *cell) {
        cell.product=self.productArray[indexPath.row];
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return self.topListArray.count;
    }
    return self.productArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        CategroyTopTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"CategroyTopTableViewCell" forIndexPath:indexPath];
        cell.topList=self.topListArray[indexPath.row];
        return cell;
    }
    CategroyContentTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"CategroyContentTableViewCell" forIndexPath:indexPath];
    cell.product=self.productArray[indexPath.row];
    return cell;
    
}





@end
