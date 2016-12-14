//
//	CHLVideo.m
//
//	Create by Mac on 24/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLVideo.h"



@interface CHLVideo ()
@end
@implementation CHLVideo

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"canLike" : @"can_like",
             @"playedCount" : @"played_count",
             @"isLike" : @"is_like",
             @"participateCount" : @"participate_count",
             @"likeCount" : @"like_count",
             @"visitCount" : @"visit_count"
             
             };
}
@end