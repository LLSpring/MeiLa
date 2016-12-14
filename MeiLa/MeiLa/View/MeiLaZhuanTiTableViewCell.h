//
//  MeiLaZhuanTiTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLList1.h"
@interface MeiLaZhuanTiTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *commentImagView;

@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property(nonatomic,strong)CHLList1 *list;
@end
