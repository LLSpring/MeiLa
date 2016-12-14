//
//	CHLBanner.m
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLBanner.h"



@interface CHLBanner ()
@end
@implementation CHLBanner

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"imgHeight" : @"img_height",
             @"imgWidth" : @"img_width",
             @"jumpData" : @"jump_data",
             @"jumpLabel" : @"jump_label"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             
             @"monitors" : [CHLMonitor class],
             };
}

@end