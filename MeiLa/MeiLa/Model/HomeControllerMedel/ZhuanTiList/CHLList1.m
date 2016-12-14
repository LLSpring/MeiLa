//
//	CHLList1.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLList1.h"


@interface CHLList1 ()
@end
@implementation CHLList1

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

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"brands" : [CHLTBrand class],
             @"imgs" : [CHLImgV4 class],
             };
}
@end