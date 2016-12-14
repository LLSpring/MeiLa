//
//  PersonTableViewCell.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHLFeeds.h"
#import "CHLVideo.h"
#define IMGURL(path) [NSURL URLWithString:[NSString stringWithFormat:@"http://meilapp.qiniucdn.com%@",path]]
@interface PersonTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headImagView;
@property (weak, nonatomic) IBOutlet UIImageView *VipImageView;

@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UIButton *focusBut;
@property (weak, nonatomic) IBOutlet UIImageView *contenImageView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIImageView *tagImagView;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;
@property (weak, nonatomic) IBOutlet UILabel *loveLabel;
@property (weak, nonatomic) IBOutlet UIButton *commentBut;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UIButton *loveBut;
@property(nonatomic,strong)CHLFeeds *feeds;
@property(nonatomic,strong)CHLVideo *video;
@end
