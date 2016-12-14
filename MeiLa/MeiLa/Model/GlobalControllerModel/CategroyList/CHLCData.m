//
//	CHLData.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLCData.h"


@interface CHLCData ()
@end
@implementation CHLCData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"countTitle" : @"count_title",
             @"hasMore" : @"has_more",
             @"topList"    :@"top_list"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLCProduct class],
             @"topList"    :   [CHLTopList class]
             };
}
@end