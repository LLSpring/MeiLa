//
//  PersonViewController.m
//  MeiLa
//
//  Created by Mac on 16/12/1.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "PersonViewController.h"
#import "LoginAndRegistViewController.h"

@interface PersonViewController ()<UITabBarDelegate,UITableViewDataSource>

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   
}
- (IBAction)goToLogin:(UIButton *)sender {
    LoginAndRegistViewController *login=[LoginAndRegistViewController new];
    [self presentViewController:login animated:YES completion:nil];
}
- (IBAction)goToSetting:(id)sender {
    NSLog(@"%s",__func__);
}



#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%ld",indexPath.row);
}



@end
