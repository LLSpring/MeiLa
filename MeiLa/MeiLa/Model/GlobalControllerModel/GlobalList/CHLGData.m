//
//	CHLData.m
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLGData.h"

@interface CHLGData ()
@end
@implementation CHLGData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"searchTips" : @"search_tips",
             @"shoppingCart" : @"shopping_cart",
             @"serverTime" : @"server_time"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"modules" : [CHLModule class],
             @"tabs"    : [CHLTab class]
             };
}
@end