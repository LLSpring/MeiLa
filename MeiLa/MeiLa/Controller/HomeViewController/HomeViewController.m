//
//  HomeViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//


#import "HomeViewController.h"
#import "NavTitleView.h"
#import "HomeChildViewController.h"
#import "HuaZhuangViewController.h"
#import "GuanZhuViewController.h"
#import "LoginAndRegistViewController.h"
NSString *const NAVTITLEVIEWID=@"NavTitleView";
NSString *const HOMEVIEWCONTROID=@"HomeChildViewController";
NSString *const HUAZHUANGVIEWCONTROID=@"HuaZhuangViewController";
NSString *const GUANZHUVIEWCONTROID=@"GuanZhuViewController";


@interface HomeViewController ()<UIScrollViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property(nonatomic,strong)NavTitleView *titleView;
@property(nonatomic,strong)UIScrollView *scrView;
@property(nonatomic,strong)UIView  *contentView;
@end

@implementation HomeViewController

#pragma mark - life clycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self layoutNavView];
    [self addSubViews];
    [self layoutSubViews];

}
-(void)viewWillAppear:(BOOL)animated{

}
#pragma mark -laodView
-(void)layoutNavView{
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_bar_search"] style:UIBarButtonItemStylePlain target:self action:@selector(search)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_bar_write_topic"] style:UIBarButtonItemStylePlain target:self action:@selector(camera)];
    self.titleView=[[NSBundle mainBundle] loadNibNamed:NAVTITLEVIEWID owner:nil options:nil][0];
    self.navigationItem.titleView=self.titleView;
    [self.titleView.shaiHuoBut addTarget:self action:@selector(changePress:) forControlEvents:UIControlEventTouchUpInside];
    [self.titleView.learnHuaZhuangBut addTarget:self action:@selector(changePress:) forControlEvents:UIControlEventTouchUpInside];
    [self.titleView.guanZhuBut addTarget:self action:@selector(changePress:) forControlEvents:UIControlEventTouchUpInside];
    self.titleView.shaiHuoBut.selected=YES;
    
    
}

-(void)addSubViews{
    self.scrView=[UIScrollView new];
    self.scrView.delegate=self;
    self.scrView.showsHorizontalScrollIndicator=YES;
    self.scrView.showsVerticalScrollIndicator=YES;
    self.scrView.bounces=NO;
    self.scrView.pagingEnabled=YES;
    self.contentView=[UIView new];
    [self.scrView addSubview:self.contentView];
    [self.view addSubview:self.scrView];
    HomeChildViewController *home=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:HOMEVIEWCONTROID];
    [self addChildViewController:home];
    [self.scrView addSubview:home.view];
    HuaZhuangViewController *huaZhuang=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:HUAZHUANGVIEWCONTROID];
    [self addChildViewController:huaZhuang];
    [self.scrView addSubview:huaZhuang.view];
    GuanZhuViewController *guanZhu=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:GUANZHUVIEWCONTROID];
    [self addChildViewController:guanZhu];
    [self.scrView addSubview:guanZhu.view];
    

    
}

-(void)layoutSubViews{
    [self.scrView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 49, 0));
    }];
    [self.contentView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrView);
        make.height.equalTo(self.scrView);
        make.width.equalTo(self.scrView.width).multipliedBy(3);
    }];
   
    [self.childViewControllers[0].view makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.equalTo(self.scrView);
        make.height.width.equalTo(self.scrView);
        make.left.equalTo(self.contentView);
        }];
    [self.childViewControllers[1].view makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.scrView);
        make.height.width.equalTo(self.scrView);
        make.left.equalTo(self.childViewControllers[0].view.right);
    }];
    [self.childViewControllers[2].view makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.scrView);
        make.height.width.equalTo(self.scrView);
        make.right.equalTo(self.contentView);
    }];
 
    
}

#pragma mark -private Method
-(void)fallowViewLocationWithBut:(UIButton *)but AndSelectWithIndex:(NSInteger)index{
    CGRect rect= self.titleView.scrView.frame;
    rect.origin.x=but.frame.origin.x;
    self.titleView.scrView.frame=rect;
    self.titleView.shaiHuoBut.selected=index==0?YES:NO;
    self.titleView.learnHuaZhuangBut.selected=index==1?YES:NO;
    self.titleView.guanZhuBut.selected=index==2?YES:NO;
}

#pragma mark -Events Respones
-(void)search{
    
}
-(void)camera{
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        UIImagePickerController *pick=[[UIImagePickerController alloc] init];
        pick.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
        pick.delegate=self;
        pick.allowsEditing=YES;
        [self presentViewController:pick animated:YES completion:nil];
    }
}

-(void)changePress:(UIButton *)but{
    if (but.tag==3) {
        LoginAndRegistViewController *login=[LoginAndRegistViewController new];
        [self presentViewController:login animated:YES completion:^{
            [self.scrView setContentOffset:CGPointMake(CGRectGetWidth(self.scrView.frame) * 0, 0) animated:YES];
            
                UIButton *but=(UIButton *)[self.view viewWithTag:1];
                [self fallowViewLocationWithBut:but AndSelectWithIndex:0];
            
        }];
    }
    [self.scrView setContentOffset:CGPointMake(CGRectGetWidth(self.scrView.frame) * (but.tag-1), 0) animated:YES];
    [self fallowViewLocationWithBut:but AndSelectWithIndex:(but.tag-1)];
   
    
}
#pragma mark -system Delegate
#pragma mark UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger pageIndex = scrollView.contentOffset.x / CGRectGetWidth(self.scrView.frame);
    pageIndex = pageIndex < 0 ? 0 :pageIndex;
    UIButton *but=[self.titleView viewWithTag:pageIndex];
    [self fallowViewLocationWithBut:but AndSelectWithIndex:pageIndex];
    
}

@end
