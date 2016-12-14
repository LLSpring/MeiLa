//
//  ScrPicCollectionViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "ScrPicCollectionViewCell.h"

@implementation ScrPicCollectionViewCell


-(void)setMakeBut:(CHLMakeupButton *)makeBut{
    if (_makeBut!=makeBut) {
        _makeBut=makeBut;
        [_imagView sd_setImageWithURL:IMGURL(makeBut.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _ccategoryLabel.text=makeBut.title;
    }
}
@end
