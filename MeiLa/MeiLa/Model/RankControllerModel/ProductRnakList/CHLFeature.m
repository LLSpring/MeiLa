//
//	CHLFeature.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLFeature.h"



@interface CHLFeature ()
@end
@implementation CHLFeature

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"jumpData" : @"jump_data",
             @"jumpLabel" : @"jump_label"
             };
}
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"imgs" : [CHLBannerImg class],
             };
}
@end