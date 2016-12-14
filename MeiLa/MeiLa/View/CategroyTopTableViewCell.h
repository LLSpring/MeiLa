//
//  CategroyTopTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLTopList.h"
@interface CategroyTopTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *firstImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property(nonatomic,strong)CHLTopList *topList;
@end
