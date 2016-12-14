//
//	CHLTopList.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLTopList.h"

@interface CHLTopList ()
@end
@implementation CHLTopList

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"jumpData" : @"jump_data",
             @"jumpLabel" : @"jump_label",
             @"topCount" : @"top_count"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLCProduct class],
             };
}
@end