//
//  ScrPicCollectionViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLMakeupButton.h"
@interface ScrPicCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagView;
@property (weak, nonatomic) IBOutlet UILabel *ccategoryLabel;
@property(nonatomic,strong)CHLMakeupButton *makeBut;
@end
