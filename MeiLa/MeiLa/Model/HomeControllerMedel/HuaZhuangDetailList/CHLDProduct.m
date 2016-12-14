//
//	CHLProduct.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLDProduct.h"


@interface CHLDProduct ()
@end
@implementation CHLDProduct

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"hasMore" : @"has_more",
             @"tagInfo" : @"tag_info",
             @"moreTip" : @"more_tip",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data"
             };
}
@end