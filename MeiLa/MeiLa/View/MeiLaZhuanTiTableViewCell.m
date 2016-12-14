//
//  MeiLaZhuanTiTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "MeiLaZhuanTiTableViewCell.h"

@implementation MeiLaZhuanTiTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setList:(CHLList1 *)list{
    if (_list!=list) {
        _list=list;
        if (list.imgs.count!=0) {
            [_commentImagView sd_setImageWithURL:IMGURL([list.imgs[0] img4]) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        }
    
        _commentImagView.hidden=list.imgs.count==0?YES:NO;
        if (_commentImagView.hidden) {
            [_commentImagView removeFromSuperview];
        }
        
        _commentLabel.text=list.content;
    }
}
@end
