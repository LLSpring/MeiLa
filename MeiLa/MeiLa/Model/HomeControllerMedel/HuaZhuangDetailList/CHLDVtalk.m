//
//  CHLDVtalk.m
//  MeiLa
//
//  Created by Mac on 16/12/1.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CHLDVtalk.h"
@interface CHLDVtalk ()
@end
@implementation CHLDVtalk


+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"moreTip" : @"more_tip",
             @"hasMore" : @"has_more",
             @"tagInfo" : @"tag_info",
             @"notCream" : @"not_cream"
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"vtalks" : [CHLDVtalks class],
             };
}
@end
