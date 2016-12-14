//
//	CHLUser.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLDUser.h"



@interface CHLDUser ()
@end
@implementation CHLDUser

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"ageRange" : @"age_range",
             @"levelImg" : @"level_img",
             @"NewTypeIcon" : @"new_type_icon",
             @"NewTypeImg" : @"new_type_img",
             @"skinType" : @"skin_type",
             @"typeIcon" : @"type_icon"
             };
}

@end