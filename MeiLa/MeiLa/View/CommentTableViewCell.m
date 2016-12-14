//
//  CommentTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/30.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CommentTableViewCell.h"

@implementation CommentTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setList:(CHLList2 *)list{
    if (_list!=list) {
        _list=list;
        [_headImagView sd_setImageWithURL:IMGURL(list.user.avatar) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_small"]];
        _nameLabel.text=list.user.nickname;
        _commentLabel.text=list.content;
        _leveLabel.text=[NSString stringWithFormat:@"L%ld",list.user.level];
    }
}
@end
