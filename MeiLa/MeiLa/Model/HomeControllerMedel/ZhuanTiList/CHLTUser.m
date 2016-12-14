//
//	CHLUser.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLTUser.h"


@interface CHLTUser ()
@end
@implementation CHLTUser

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"ageRange" : @"age_range",
             @"skinType" : @"skin_type",
             @"typeIcon" : @"type_icon",
             @"levelImg" : @"level_img"
             };
}
@end