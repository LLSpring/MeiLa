
//
//	CHLProduct.m
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLGProduct.h"



@interface CHLGProduct ()
@end
@implementation CHLGProduct



+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"bgImg"           : @"bg_img",
             @"jumpData"        : @"jump_data",
             @"jumpLabel"      :@"jump_label",
             @"leftCount"      :@"left_count",
             @"onsaleStatus"   :@"onsale_status",
             @"orgPrice"       :@"org_price",
             @"purchaseSource" :@"purchase_source",
             @"subName"        :@"sub_name",
             @"textTags"       :@"text_tags"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"imgs" : [CHLImg class],
             };
}
@end