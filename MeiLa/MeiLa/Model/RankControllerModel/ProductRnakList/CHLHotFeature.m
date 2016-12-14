//
//	CHLHotFeature.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLHotFeature.h"



@interface CHLHotFeature ()
@end
@implementation CHLHotFeature

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"jumpData" : @"jump_data",
             @"jumpLabel" : @"jump_label",
             @"hasMore" : @"has_more"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"features" : [CHLFeature class],
             };
}
@end