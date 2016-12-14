//
//	CHLFeed.m
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLFeed.h"


@interface CHLFeed ()
@end
@implementation CHLFeed
+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"imgHeight" : @"img_height",
             @"imgV4" : @"img_v4",
             @"imgWidth" : @"jump_data",
             @"jumpData" : @"img_height",
             @"jumpLabel" : @"jump_label",
             @"vtalkTags" : @"vtalk_tags",
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             
             @"vtalkTags" : [CHLVtalkTag class],
             };
}

@end