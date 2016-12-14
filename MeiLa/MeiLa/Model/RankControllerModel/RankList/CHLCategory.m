//
//	CHLCategory.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLCategory.h"

NSString *const kCHLCategoryData = @"data";
NSString *const kCHLCategoryImg = @"img";
NSString *const kCHLCategoryLabel = @"label";
NSString *const kCHLCategoryTags = @"tags";
NSString *const kCHLCategoryTextColor = @"text_color";
NSString *const kCHLCategoryTitle = @"title";

@interface CHLCategory ()
@end
@implementation CHLCategory

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"textColor" : @"text_color"
             
             };
}
@end