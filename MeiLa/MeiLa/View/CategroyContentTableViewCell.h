//
//  CategroyContentTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLCProduct.h"
#import "CHLRProduct.h"
@interface CategroyContentTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *contentImagView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property(nonatomic,strong)CHLCProduct *product;
@property(nonatomic,strong)CHLRProduct *products;
@property (weak, nonatomic) IBOutlet UIImageView *rankImagView;

@end
