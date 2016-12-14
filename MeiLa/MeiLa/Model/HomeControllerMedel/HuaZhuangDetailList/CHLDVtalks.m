//
//	CHLVtalk.m
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CHLDVtalks.h"



@interface CHLDVtalks ()
@end
@implementation CHLDVtalks

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper
{
    return @{
             @"likeInfo" : @"like_info",
             };
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{
             @"imgs" : [CHLImgV4 class],
             };
}
@end