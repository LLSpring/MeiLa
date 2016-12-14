//
//	CHLExt.m
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLExt.h"

NSString *const kCHLExtCollectedCount = @"collected_count";
NSString *const kCHLExtCommentedCount = @"commented_count";
NSString *const kCHLExtStar = @"star";
NSString *const kCHLExtStarSum = @"star_sum";
NSString *const kCHLExtStarText = @"star_text";
NSString *const kCHLExtStarUsersCount = @"star_users_count";

@interface CHLExt ()
@end
@implementation CHLExt

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"collectedCount" : @"collected_count",
             @"commentedCount" : @"commented_count",
             @"starSum"    :   @"star_sum",
             @"starText"       :  @"star_text",
             @"starUsersCount" : @"star_users_count"
             };
}
@end