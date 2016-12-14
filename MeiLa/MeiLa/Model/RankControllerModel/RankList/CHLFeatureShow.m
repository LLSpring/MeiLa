//
//	CHLFeatureShow.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLFeatureShow.h"

NSString *const kCHLFeatureShowImg = @"img";
NSString *const kCHLFeatureShowImgLogo = @"img_logo";
NSString *const kCHLFeatureShowIntro = @"intro";
NSString *const kCHLFeatureShowJumpData = @"jump_data";
NSString *const kCHLFeatureShowJumpLabel = @"jump_label";
NSString *const kCHLFeatureShowProducts = @"products";
NSString *const kCHLFeatureShowSlug = @"slug";
NSString *const kCHLFeatureShowTitle = @"title";

@interface CHLFeatureShow ()
@end
@implementation CHLFeatureShow

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"imgLogo" : @"img_logo",
             @"jumpLabel" : @"jump_label",
             @"jumpData" : @"jump_data"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"products" : [CHLProduct class],
             };
}
@end