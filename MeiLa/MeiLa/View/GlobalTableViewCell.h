//
//  GlobalTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/28.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLGProduct.h"
@interface GlobalTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *contenImagView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sourceLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property(nonatomic,strong)CHLGProduct *product;
@end
