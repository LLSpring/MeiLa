//
//	CHLLatestVtalk.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLLatestVtalk.h"



@interface CHLLatestVtalk ()
@end
@implementation CHLLatestVtalk

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"jumpLabel" : @"jump_label",
             @"tagInfo" : @"tag_info",
             @"titleEn" : @"title_en",
             @"hasMore" : @"has_more",
             @"jumpData" : @"jump_data"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"vtalks" : [CHLDVtalks class],
             };
}
@end