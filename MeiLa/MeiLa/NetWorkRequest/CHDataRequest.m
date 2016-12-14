//
//  CHDataRequest.m
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import "CHDataRequest.h"

@implementation CHDataRequest



+(void)ProductRankCategoryRequestDataWithUrlString:(NSString *)urlStr AndCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:urlStr Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}
+(void)RankProductClassRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/search/full_tree?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&sig=231529167566c181d01e61e95dc48c40225ae2e7" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}

+(void)RankCategoryPriceDESCRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/search?category=00fee14a&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=price_desc&sig=9d1564633b1d911f3431629d195fc62b92aa63b5" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}

+(void)RankCategoryPriceASCRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/search?category=00fee14a&limit=20&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&order_type=price_asc&sig=1cc0d7eb6de9bac9edc38aa9e3c3b82955278f48" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}

+(void)RankCategoryRequestDataWithUrlString:(NSString *)urlStr AndCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:urlStr Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}
+(void)globalRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/meigou_v4/index?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&tab=386b641a&sig=5858a56d44b8c2deb4a1d10b9ba15eab53e1ee9c" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}
+(void)rankRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/product/top_entry?meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&p=1&sig=6a4acb9127db96cadee2f71be795ad6be444b006" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}

+(void)homeOtherRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
   
    [self getRequsetWithUrl:@"http://api.meilapp.com/index_v4/index_goods?adspace=indexfeed&aid=e624aa2ffd17c16f&channel=Tencent&device_model=x600&imei=866479025027367&limit=10&mac_address=02%3A00%3A00%3A00%3A00%3A00&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&os_version=6.0&reload=1&sig=a0549dcdf1cbe9dd5f65b2a81b9490bbf1960efb" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}

+(void)homeSecondRequestDataWithCompletion:(void(^)(id responseObj, NSError *error))completionHandler{
    
    [self getRequsetWithUrl:@"http://api.meilapp.com/index_v4/index_makeups?limit=10&meila_client_id=00000000-05d0-a589-ffff-ffffcd127792&meila_version=2050304&offset=0&sig=3fcf3e8cbdeff1cd1a14aa436026d38989f60b41" Parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler(responseObj,error);
    }];
}


+(void)getRequsetWithUrl:(NSString *)url Parameters:(NSDictionary *)dic completionHandler:(void(^)(id responseObj, NSError *error))completionHandler{
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    [manager GET:url parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandler(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandler(nil,error);
    }];
}


+(void)postRequsetWithUrl:(NSString *)url Parameters:(NSDictionary *)dic completionHandler:(void(^)(id responseObj, NSError *error))completionHandler{
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    [manager POST:url parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandler(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandler(nil,error);
    }];
}

@end
