//
//	CHLFeatureMore.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLFeatureMore.h"

NSString *const kCHLFeatureMoreImg = @"img";
NSString *const kCHLFeatureMoreImgLogo = @"img_logo";
NSString *const kCHLFeatureMoreIntro = @"intro";
NSString *const kCHLFeatureMoreJumpData = @"jump_data";
NSString *const kCHLFeatureMoreJumpLabel = @"jump_label";
NSString *const kCHLFeatureMoreSlug = @"slug";
NSString *const kCHLFeatureMoreTitle = @"title";

@interface CHLFeatureMore ()
@end
@implementation CHLFeatureMore

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"imgLogo" : @"img_logo",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data"
             };
}
@end