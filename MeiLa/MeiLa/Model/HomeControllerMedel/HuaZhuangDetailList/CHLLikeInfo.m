//
//	CHLLikeInfo.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLLikeInfo.h"


@interface CHLLikeInfo ()
@end
@implementation CHLLikeInfo

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"contentTypeId" : @"content_type_id",
             @"likeCount" : @"like_count",
             @"likeUsers" : @"like_users",
             @"isLiked" : @"is_liked"
             };
}
@end