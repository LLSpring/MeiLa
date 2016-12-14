//
//  CHTabBarViewController.m
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CHTabBarViewController.h"
#import "HomeViewController.h"
#import "RankViewController.h"
#import "GlobalViewController.h"
#import "PersonViewController.h"
@interface CHTabBarViewController ()

@end

@implementation CHTabBarViewController

#pragma mark -life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self creatSubviews];
    
}
#pragma mark -loadView
-(void)creatSubviews{
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewController *home=[HomeViewController new];
    UINavigationController *homeNav=[[UINavigationController alloc] initWithRootViewController:home];
    homeNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"变美啦" image:[UIImage imageNamed:@"icon_tab_home"] selectedImage:[UIImage imageNamed:@"icon_tab_home_selected"]];

    [homeNav.navigationBar setShadowImage:[UIImage new]];
    
    RankViewController *rank=[storyboard instantiateViewControllerWithIdentifier:@"RankViewController"];
    UINavigationController *rankNav=[[UINavigationController alloc] initWithRootViewController:rank];
    rankNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"排行榜" image:[UIImage imageNamed:@"icon_tab_rank"] selectedImage:[UIImage imageNamed:@"icon_tab_rank_selected"]];
    
    GlobalViewController *global=[storyboard instantiateViewControllerWithIdentifier:@"GlobalViewController"];
    UINavigationController *shopNav=[[UINavigationController alloc] initWithRootViewController:global];
    shopNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"全球购" image:[UIImage imageNamed:@"icon_tab_mall"] selectedImage:[UIImage imageNamed:@"icon_tab_mall_selected"]];
    
    PersonViewController *person=[storyboard instantiateViewControllerWithIdentifier:@"PersonViewController"];
    UINavigationController *personNav=[[UINavigationController alloc] initWithRootViewController:person];
    personNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"icon_tab_me"] selectedImage:[UIImage imageNamed:@"icon_tab_me_selected"]];
    
    [self setViewControllers:@[homeNav,rankNav,shopNav,personNav] animated:YES];
    
    UITabBar *tabbar=[UITabBar appearance];
    [tabbar setTintColor:[UIColor colorWithRed:235/255.0 green:75/255.0 blue:104/255.0 alpha:1]];
    
}


@end
