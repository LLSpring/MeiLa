//
//  ZhanTiTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZhanTiTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UICollectionView *collection;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *titleLImageView;

@end
