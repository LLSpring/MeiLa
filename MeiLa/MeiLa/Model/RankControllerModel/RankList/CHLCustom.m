//
//	CHLCustom.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLCustom.h"

NSString *const kCHLCustomImg = @"img";
NSString *const kCHLCustomImgLogo = @"img_logo";
NSString *const kCHLCustomIntro = @"intro";
NSString *const kCHLCustomJumpData = @"jump_data";
NSString *const kCHLCustomJumpLabel = @"jump_label";
NSString *const kCHLCustomSlug = @"slug";
NSString *const kCHLCustomTitle = @"title";

@interface CHLCustom ()
@end
@implementation CHLCustom

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"imgLogo" : @"img_logo",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data"
             };
}
@end