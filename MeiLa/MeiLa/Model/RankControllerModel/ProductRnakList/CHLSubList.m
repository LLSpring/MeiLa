//
//	CHLSubList.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLSubList.h"


@interface CHLSubList ()
@end
@implementation CHLSubList

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"hasMore" : @"has_more",
             @"topCount" : @"top_count"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLRProduct class],
             };
}
@end