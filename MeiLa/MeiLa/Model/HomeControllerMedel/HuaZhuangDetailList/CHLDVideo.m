//
//  CHLDVideo.m
//  MeiLa
//
//  Created by Mac on 16/12/1.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CHLDVideo.h"

@implementation CHLDVideo

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"hasMore" : @"has_more",
             @"jumplabel" : @"jump_label",
             @"moreTip" : @"more_tip",
             @"tagInfo" : @"tag_info",
             @"jumpdata" : @"jump_data"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"videos" : [CHLDVideos class],
             };
}
@end
