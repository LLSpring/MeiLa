//
//	CHLNation.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLNation.h"



@interface CHLNation ()
@end
@implementation CHLNation

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"upInfoImg" : @"up_info_img",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data",
             @"imgLogo" : @"img_logo"
             };
}
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLProduct class],
             };
}
@end