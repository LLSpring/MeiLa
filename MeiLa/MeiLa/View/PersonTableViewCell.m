//
//  PersonTableViewCell.m
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "PersonTableViewCell.h"

#import "CHLVtalkTag.h"
@implementation PersonTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setFeeds:(CHLFeeds *)feeds{
    if (_feeds!=feeds) {
        _feeds=feeds;
        _contentLabel.text=feeds.feed.summary;
        _nickNameLabel.text=feeds.user.nickname;
        _commentLabel.text=feeds.participateCount;
        _loveLabel.text=feeds.likeCount;
         [_contenImageView sd_setImageWithURL:IMGURL(feeds.feed.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_large"]];
        [_headImagView sd_setImageWithURL:IMGURL(feeds.user.avatar) placeholderImage:[UIImage imageNamed:@"avatar_default"]];
        [_VipImageView sd_setImageWithURL:IMGURL(feeds.user.NewTypeIcon)];
        _levelLabel.text=[NSString stringWithFormat:@"L%ld",feeds.user.level];
        if (feeds.feed.vtalkTags.count==0) {
            _tagImagView.hidden=YES;
        }else{
            _tagImagView.hidden=NO;

        }
        
       
    }
}

-(void)setVideo:(CHLVideo *)video{
    if (_video!=video) {
        _video=video;
        _contentLabel.text=video.feed.summary;
        _nickNameLabel.text=video.user.nickname;
        _commentLabel.text=[NSString stringWithFormat:@"%ld",(long)video.participateCount];
        _loveLabel.text=[NSString stringWithFormat:@"%ld",(long)video.likeCount];
        [_contenImageView sd_setImageWithURL:IMGURL(video.feed.imgV4.img) placeholderImage:[UIImage imageNamed:@"bg_image_place_holder_large"]];
        [_headImagView sd_setImageWithURL:IMGURL(video.user.avatar) placeholderImage:[UIImage imageNamed:@"avatar_default"]];
        [_VipImageView sd_setImageWithURL:IMGURL(video.user.NewTypeIcon)];
        _levelLabel.text=[NSString stringWithFormat:@"L%ld",video.user.level];
        if (video.feed.vtalkTags.count==0) {
            _tagImagView.hidden=YES;
        }else{
            _tagImagView.hidden=NO;
            
        }

    }
}

@end
