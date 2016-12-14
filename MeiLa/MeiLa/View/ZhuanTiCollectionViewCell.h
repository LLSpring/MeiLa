//
//  ZhuanTiCollectionViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLDVideos.h"
@interface ZhuanTiCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagView;

@property (weak, nonatomic) IBOutlet UIImageView *litleImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property(nonatomic,strong)CHLDVideos *videos;

@end
