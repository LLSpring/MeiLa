//
//  CategroyContentTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CategroyContentTableViewCell.h"

@implementation CategroyContentTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setProduct:(CHLCProduct *)product{
    if (_product!=product) {
        _product=product;
        [_contentImagView sd_setImageWithURL:IMGURL(product.bannerThumb) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _nameLabel.text=product.shortName;
        _commentLabel.text=[NSString stringWithFormat:@"%ld人点评",product.ext.starUsersCount];
        _priceLabel.text=[NSString stringWithFormat:@"参考价￥%ld",product.price];
    }
}
-(void)setProducts:(CHLRProduct *)products{
    if (_products!=products) {
        _products=products;
        [_contentImagView sd_setImageWithURL:IMGURL(products.bannerThumb) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _nameLabel.text=products.shortName;
        _priceLabel.text=products.special;
        _commentLabel.text=[NSString stringWithFormat:@"参考价￥%.0f",products.price];
    }
}
@end
