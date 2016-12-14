//
//	CHLTagInfo.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLTagInfo.h"

NSString *const kCHLTagInfoTagId = @"tag_id";
NSString *const kCHLTagInfoTitle = @"title";
NSString *const kCHLTagInfoIdField = @"id";
NSString *const kCHLTagInfoImg = @"img";
NSString *const kCHLTagInfoIntro = @"intro";
NSString *const kCHLTagInfoJumpData = @"jump_data";
NSString *const kCHLTagInfoJumpLabel = @"jump_label";

@interface CHLTagInfo ()
@end
@implementation CHLTagInfo

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"tagId" : @"tag_id",
             @"tagId" : @"id",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"img" : [CHLImgV4 class],
             };
}
@end