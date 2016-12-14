//
//  HuaZhuanDetailCollectionViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "HuaZhuanDetailCollectionViewCell.h"

@implementation HuaZhuanDetailCollectionViewCell


-(void)setVtalks:(CHLDVtalks *)vtalks{
    if (_vtalks!=vtalks) {
        _vtalks=vtalks;
        [_contentImagVIew sd_setImageWithURL:IMGURL([vtalks.imgs[0] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        [_headImagView sd_setImageWithURL:IMGURL(vtalks.user.avatar) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _describLabel.text=vtalks.title;
        _likeLabel.text=[NSString stringWithFormat:@"%ld",vtalks.likeInfo.likeCount];
        _nameLabel.text=vtalks.user.nickname;
    }
}
@end
