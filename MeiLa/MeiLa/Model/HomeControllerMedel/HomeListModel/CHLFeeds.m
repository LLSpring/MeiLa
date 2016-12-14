//
//  CHLFeeds.m
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CHLFeeds.h"


@interface CHLFeeds()

@end
@implementation CHLFeeds


+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"canLike" : @"can_like",
             @"isLike" : @"is_like",
             @"participateCount" : @"participate_count",
             @"likeCount" : @"like_count",
             @"visitCount" : @"visit_count"
             
             };
}
@end
