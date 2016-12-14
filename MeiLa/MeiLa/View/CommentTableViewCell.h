//
//  CommentTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLList2.h"
@interface CommentTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *headImagView;
@property (weak, nonatomic) IBOutlet UILabel *leveLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property(nonatomic,strong)CHLList2 *list;
@end
