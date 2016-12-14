//
//  RankListCollectionViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/25.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "RankListCollectionViewCell.h"

@implementation RankListCollectionViewCell



-(void)setProduct:(CHLProduct *)product{
    if (_product!=product) {
        _product=product;
        [_feedImageView sd_setImageWithURL:IMGURL(product.bannerThumb) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _feedLabel.text=product.shortName;
    }

}

-(void)setProducts:(CHLGProduct *)products{
    if (_products!=products) {
        _products=products;
        [_feedBut setTitle:products.name forState:UIControlStateNormal];
        [_feedImageView sd_setImageWithURL:IMGURL([products.imgs[0] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _feedLabel.text=[NSString stringWithFormat:@"￥%.0f",products.price];
    }
}
@end
