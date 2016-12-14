//
//	CHLUser.m
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLUser.h"



@interface CHLUser ()
@end
@implementation CHLUser

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"ageRange" : @"age_range",
             @"collectCount" : @"collect_count",
             @"commentCount" : @"comment_count",
             @"fansCount" : @"fans_count",
             @"followsCount" : @"follows_count",
             @"levelImg" : @"level_img",
             @"NewTypeIcon" : @"new_type_icon",
             @"skinType" : @"skin_type",
             @"snsStatus" : @"sns_status",
             @"typeIcon" : @"type_icon"
             };
}

@end