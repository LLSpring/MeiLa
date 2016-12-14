//
//  GlobalTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/28.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "GlobalTableViewCell.h"

@implementation GlobalTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setProduct:(CHLGProduct *)product{
    if (_product!=product) {
        _product=product;
        _nameLabel.text=product.name;
        _priceLabel.text=[NSString stringWithFormat:@"￥%.0f",product.price];
        _sourceLabel.text=product.purchaseSource;
        [_contenImagView sd_setImageWithURL:IMGURL([product.imgs[0] img]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
    }
}
@end
