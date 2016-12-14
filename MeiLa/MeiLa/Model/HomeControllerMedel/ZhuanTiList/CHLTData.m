//
//	CHLData.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLTData.h"


@interface CHLTData ()
@end
@implementation CHLTData

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"commentCount" : @"comment_count",
             @"list2HasMore" : @"list2_has_more",
             @"list1HasMore" : @"list1_has_more"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"list2" : [CHLList2 class],
             @"list1" : [CHLList1 class]
             };
}
@end