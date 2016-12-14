//
//	CHLUnit.m
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLUnit.h"

@interface CHLUnit ()
@end
@implementation CHLUnit

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"endTime" : @"end_time",
             @"startTime" : @"start_time",
             @"jumpData" : @"jump_data",
             @"jumpLabel" : @"jump_label",
             @"imgHeight" :@"img_height",
             @"imgWidth" : @"img_width"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLGProduct class],
             };
}
@end