//
//	CHLData.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLRPData.h"



@interface CHLRPData ()
@end
@implementation CHLRPData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"bannerImg" : @"banner_img",
             @"hotFeatures" : @"hot_features",
             @"subEntry" : @"sub_entry",
             @"subList" : @"sub_list",
             @"topEntry" : @"top_entry"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"subList" : [CHLSubList class],
             };
}
@end