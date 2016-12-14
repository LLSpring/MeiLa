//
//  CategroyTopTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CategroyTopTableViewCell.h"

@implementation CategroyTopTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setTopList:(CHLTopList *)topList{
    if (_topList!=topList) {
        _topList=topList;
        [_firstImageView sd_setImageWithURL:IMGURL([topList.products[0]bannerThumb]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        [_secondImageView sd_setImageWithURL:IMGURL([topList.products[1]bannerThumb]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        [_thirdImageView sd_setImageWithURL:IMGURL([topList.products[2]bannerThumb]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _titleLabel.text=[NSString stringWithFormat:@"%@TOP%ld",topList.title,topList.topCount];
    }
}
@end
