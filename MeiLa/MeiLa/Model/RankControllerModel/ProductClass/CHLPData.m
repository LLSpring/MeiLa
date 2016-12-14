//
//	CHLData.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLPData.h"



@interface CHLPData ()
@end
@implementation CHLPData

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"brands" : [CHLBrand class],
             @"categories" : [CHLPCategory class],
             @"effects" : [CHLEffect class]
             };
}
@end