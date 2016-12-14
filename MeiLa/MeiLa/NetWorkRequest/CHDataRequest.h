//
//  CHDataRequest.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
@interface CHDataRequest : NSObject

+(void)ProductRankCategoryRequestDataWithUrlString:(NSString *)urlStr AndCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
+(void)homeSecondRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;

+(void)homeOtherRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;

+(void)rankRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
+(void)globalRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandle;

+(void)RankCategoryRequestDataWithUrlString:(NSString *)urlStr AndCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
+(void)RankCategoryPriceDESCRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
+(void)RankCategoryPriceASCRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
+(void)RankProductClassRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler;
@end
