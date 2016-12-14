//
//	CHLData.m
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLData.h"




@interface CHLData ()
@end
@implementation CHLData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"feedTips" : @"feed_tips",
             @"burnFeed" : @"burn_feed",
             @"hasMore" : @"has_more"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"burnFeed" : [CHLBurnFeed class],
             @"banners" : [CHLBanner class],
             @"feeds" : [CHLFeeds class]
             };
}


@end