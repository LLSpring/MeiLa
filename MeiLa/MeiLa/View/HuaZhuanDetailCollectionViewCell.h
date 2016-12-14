//
//  HuaZhuanDetailCollectionViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLDVtalks.h"
@interface HuaZhuanDetailCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *contentImagVIew;

@property (weak, nonatomic) IBOutlet UILabel *likeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *headImagView;
@property (weak, nonatomic) IBOutlet UILabel *describLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(nonatomic,strong)CHLDVtalks *vtalks;
@end
