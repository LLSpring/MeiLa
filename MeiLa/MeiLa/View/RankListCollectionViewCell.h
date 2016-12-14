//
//  RankListCollectionViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/25.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLProduct.h"
#import "CHLGProduct.h"

@interface RankListCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *feedImageView;

@property (weak, nonatomic) IBOutlet UIButton *feedBut;
@property (weak, nonatomic) IBOutlet UILabel *feedLabel;
@property(nonatomic,strong)CHLProduct *product;
@property(nonatomic,strong)CHLGProduct *products;
@end
