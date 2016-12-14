//
//  RankViewController.h
//  MeiLa
//
//  Created by Mac on 16/11/22.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tabView;
@property (weak, nonatomic) IBOutlet UICollectionView *topCollection;
@property (weak, nonatomic) IBOutlet UICollectionView *butCollection;
@property (weak, nonatomic) IBOutlet UILabel *describLabel;

@end
