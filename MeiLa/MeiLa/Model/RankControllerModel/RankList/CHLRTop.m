//
//	CHLTop.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLRTop.h"
@interface CHLRTop ()
@end
@implementation CHLRTop

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"countrySubtitle" : @"country_subtitle",
             @"countryTitle" : @"country_title"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"custom" : [CHLCustom class]
             };
}
@end