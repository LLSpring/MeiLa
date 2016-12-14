//
//	CHLData.m
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLRData.h"



@interface CHLRData ()
@end
@implementation CHLRData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"totalDes" : @"total_des",
             @"categorySubtitle" : @"category_subtitle",
             @"categoryTitle" : @"category_title",
             @"featureMore" : @"feature_more",
             @"featureShow" : @"feature_show"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    
    
    return @{
             @"featureShow" : [CHLFeatureShow class],
             @"categories" : [CHLCategory class],
             @"nations" : [CHLNation class]
             };
}
@end