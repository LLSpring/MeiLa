//
//	CHLModule.m
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLModule.h"


@interface CHLModule ()
@end
@implementation CHLModule

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"templates" : @"template",
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLGProduct class],
             @"units"    : [CHLUnit class]
             };
}
@end