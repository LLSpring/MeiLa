//
//  ZhuanTiCollectionViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "ZhuanTiCollectionViewCell.h"

@implementation ZhuanTiCollectionViewCell


-(void)setVideos:(CHLDVideos *)videos{
    if (_videos!=videos) {
        _videos=videos;
        [_imagView sd_setImageWithURL:IMGURL(videos.img.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _titleLabel.text=videos.title;
    }
}
@end
