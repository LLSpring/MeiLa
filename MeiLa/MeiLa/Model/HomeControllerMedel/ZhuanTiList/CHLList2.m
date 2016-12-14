//
//	CHLList2.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLList2.h"


@interface CHLList2 ()
@end
@implementation CHLList2

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"createTime" : @"create_time",
              @"isTop" : @"is_top",
              @"replyCount" : @"reply_count",
             @"updateTime" : @"update_time",
             @"hasMoreReplies" : @"has_more_replies"
             };
}
@end