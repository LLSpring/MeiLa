//
//	CHLData.m
//
//	Create by Mac on 24/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLHData.h"



@interface CHLHData ()
@end
@implementation CHLHData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"beautyMakeups" : @"beauty_makeups",
             @"makeupButtons" : @"makeup_buttons",
             @"hasMore" : @"has_more"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"makeupButtons" : [CHLMakeupButton class],
             @"beautyMakeups" : [CHLBeautyMakeup class],
             @"videos" : [CHLVideo class],
             @"feeds" : [CHLFeeds class]
             };
}
@end